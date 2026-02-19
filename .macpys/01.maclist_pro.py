import requests
from datetime import datetime
import re
from colorama import init, Fore, Style
import os

# Colorama initialisieren (für Windows-Kompatibilität)
init(autoreset=True)

# ════════════════════════════════════════════════════════════
#                    KONFIGURATION
# ════════════════════════════════════════════════════════════
MAC_URL = "https://raw.githubusercontent.com/SuperNova-Repo/IPTV-Network/main/.macpys/00.maclist.txt"
EXPORT_FILE = "mac_report.txt"
DAYS_WARNING = 30  # Warnung bei weniger als X Tagen

# ════════════════════════════════════════════════════════════
#                    FUNKTIONEN
# ════════════════════════════════════════════════════════════

def format_mac(mac_raw):
    """Formatiert MAC-Adresse zu XX:XX:XX:XX:XX:XX"""
    return ":".join(mac_raw[i:i+2] for i in range(0, 12, 2))

def get_status_color(days_left):
    """Gibt Farbe basierend auf verbleibenden Tagen zurück"""
    if days_left < 0:
        return Fore.RED + "❌ ABGELAUFEN"
    elif days_left <= DAYS_WARNING:
        return Fore.YELLOW + "⚠️  BALD ABGELAUFEN"
    else:
        return Fore.GREEN + "✅ AKTIV"

def fetch_mac_list():
    """Lädt die MAC-Liste vom Server"""
    try:
        response = requests.get(MAC_URL, timeout=10)
        response.raise_for_status()
        return response.text.splitlines()
    except Exception as e:
        print(f"{Fore.RED}Fehler beim Laden der MAC-Liste: {e}")
        return []

def parse_mac_entries(lines):
    """Parst alle MAC-Einträge und gibt sortierte Listen zurück"""
    entries = []
    today = datetime.now()
    
    pattern = re.compile(r"([0-9A-Fa-f]{12})\s*#\s*(.+?)\s*\|\s*EXP:\s*(\d{4}-\d{2}-\d{2})")
    
    for line in lines:
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        
        match = pattern.search(line)
        if not match:
            continue
        
        mac_raw = match.group(1).upper()
        name = match.group(2).strip()
        exp_date_str = match.group(3)
        
        try:
            exp_date = datetime.strptime(exp_date_str, "%Y-%m-%d")
            days_left = (exp_date - today).days
            
            entries.append({
                'mac': format_mac(mac_raw),
                'name': name,
                'exp_date': exp_date_str,
                'exp_datetime': exp_date,
                'days_left': days_left
            })
        except ValueError:
            continue
    
    # Sortierung: Abgelaufene zuerst, dann nach verbleibenden Tagen (aufsteigend)
    entries.sort(key=lambda x: (x['days_left'] >= 0, x['days_left']))
    
    return entries

def print_header():
    """Druckt den schönen Header"""
    os.system('cls' if os.name == 'nt' else 'clear')  # Bildschirm löschen
    print(Fore.CYAN + Style.BRIGHT + """
╔══════════════════════════════════════════════════════════════╗
║           🌟 SUPER NOVA - MAC CHECKER PRO v2.0 🌟           ║
╚══════════════════════════════════════════════════════════════╝
""")

def print_entries(entries):
    """Druckt alle Einträge formatiert und farbig"""
    active = 0
    warning = 0
    expired = 0
    
    print(f"{Fore.WHITE}{Style.BRIGHT}{'MAC-ADRESSE':<20} {'NAME':<25} {'ABLAUFDATUM':<15} {'TAGE':<10} STATUS")
    print("─" * 95)
    
    for entry in entries:
        mac = entry['mac']
        name = entry['name'][:24]  # Kürzen falls zu lang
        exp_date = entry['exp_date']
        days_left = entry['days_left']
        
        status_text = get_status_color(days_left)
        
        # Zähler erhöhen
        if days_left < 0:
            expired += 1
            days_display = f"{Fore.RED}{abs(days_left)} überfällig"
        elif days_left <= DAYS_WARNING:
            warning += 1
            days_display = f"{Fore.YELLOW}{days_left} Tage"
        else:
            active += 1
            days_display = f"{Fore.GREEN}{days_left} Tage"
        
        print(f"{Fore.WHITE}{mac:<20} {name:<25} {exp_date:<15} {days_display:<18} {status_text}")
    
    return active, warning, expired

def print_summary(active, warning, expired):
    """Druckt die Zusammenfassung"""
    total = active + warning + expired
    print("\n" + Fore.CYAN + "═" * 95)
    print(f"{Fore.GREEN}   ✅ AKTIV (>{DAYS_WARNING} Tage):        {active}")
    print(f"{Fore.YELLOW}   ⚠️  WARNUNG (≤{DAYS_WARNING} Tage):     {warning}")
    print(f"{Fore.RED}   ❌ ABGELAUFEN:                {expired}")
    print(f"{Fore.WHITE}   📊 GESAMT:                    {total}")
    print(Fore.CYAN + "═" * 95 + Style.RESET_ALL)

def export_to_file(entries, active, warning, expired):
    """Exportiert den Report als TXT-Datei"""
    try:
        with open(EXPORT_FILE, 'w', encoding='utf-8') as f:
            f.write("═" * 95 + "\n")
            f.write("            SUPER NOVA - MAC CHECKER REPORT\n")
            f.write(f"            Erstellt am: {datetime.now().strftime('%d.%m.%Y %H:%M:%S')}\n")
            f.write("═" * 95 + "\n\n")
            
            f.write(f"{'MAC-ADRESSE':<20} {'NAME':<25} {'ABLAUFDATUM':<15} {'TAGE':<10} STATUS\n")
            f.write("─" * 95 + "\n")
            
            for entry in entries:
                mac = entry['mac']
                name = entry['name'][:24]
                exp_date = entry['exp_date']
                days_left = entry['days_left']
                
                if days_left < 0:
                    status = "ABGELAUFEN"
                    days_text = f"{abs(days_left)} überfällig"
                elif days_left <= DAYS_WARNING:
                    status = "WARNUNG"
                    days_text = f"{days_left} Tage"
                else:
                    status = "AKTIV"
                    days_text = f"{days_left} Tage"
                
                f.write(f"{mac:<20} {name:<25} {exp_date:<15} {days_text:<10} {status}\n")
            
            total = active + warning + expired
            f.write("\n" + "═" * 95 + "\n")
            f.write(f"AKTIV (>{DAYS_WARNING} Tage):     {active}\n")
            f.write(f"WARNUNG (≤{DAYS_WARNING} Tage):  {warning}\n")
            f.write(f"ABGELAUFEN:            {expired}\n")
            f.write(f"GESAMT:                {total}\n")
            f.write("═" * 95 + "\n")
        
        print(f"\n{Fore.GREEN}✅ Report erfolgreich exportiert nach: {EXPORT_FILE}")
    except Exception as e:
        print(f"\n{Fore.RED}❌ Fehler beim Exportieren: {e}")

# ════════════════════════════════════════════════════════════
#                    HAUPTPROGRAMM
# ════════════════════════════════════════════════════════════

def main():
    print_header()
    
    print(f"{Fore.YELLOW}📡 Lade MAC-Liste vom Server...")
    lines = fetch_mac_list()
    
    if not lines:
        print(f"{Fore.RED}❌ Keine Daten gefunden. Abbruch.")
        return
    
    print(f"{Fore.YELLOW}🔍 Analysiere Einträge...\n")
    entries = parse_mac_entries(lines)
    
    if not entries:
        print(f"{Fore.RED}❌ Keine gültigen MAC-Einträge gefunden.")
        return
    
    active, warning, expired = print_entries(entries)
    print_summary(active, warning, expired)
    
    # Export-Option
    export = input(f"\n{Fore.CYAN}💾 Report als TXT exportieren? (j/n): {Style.RESET_ALL}").lower()
    if export == 'j':
        export_to_file(entries, active, warning, expired)
    
    print(f"\n{Fore.MAGENTA}Programm beendet. Bis bald! 👋{Style.RESET_ALL}\n")

if __name__ == "__main__":
    main()