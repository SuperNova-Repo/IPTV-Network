import requests
from datetime import datetime
import re

# URL zur MAC-Liste
url = "https://raw.githubusercontent.com/SuperNova-Repo/IPTV-Network/main/.epg/mac.txt"

# Aktuelles Datum
today = datetime.now().strftime("%Y-%m-%d")

# Lade die mac.txt
response = requests.get(url)
response.raise_for_status()
lines = response.text.splitlines()

print("╔══════════════════════════════════════════════════")
print("║             SUPER NOVA - MAC CHECKER             ║")
print("╚══════════════════════════════════════════════════\n")

active = 0
expired = 0

for line in lines:
    line = line.strip()
    if not line or line.startswith("#"):
        continue

    # Regex für das Format: MAC # Name | EXP: YYYY-MM-DD
    match = re.search(r"([0-9A-Fa-f]{12})\s*#\s*(.+?)\s*\|\s*EXP:\s*(\d{4}-\d{2}-\d{2})", line)
    if not match:
        continue

    mac_raw = match.group(1).upper()
    name = match.group(2).strip()
    exp_date = match.group(3)

    # MAC formatieren
    mac = ":".join(mac_raw[i:i+2] for i in range(0, 12, 2))

    # Status prüfen
    if exp_date >= today:
        status = "AKTIV"
        active += 1
        print(f"✅ {mac} | {name.ljust(25)} | Läuft bis: {exp_date}")
    else:
        status = "ABGELAUFEN"
        expired += 1
        print(f"❌ {mac} | {name.ljust(25)} | Abgelaufen: {exp_date}")

print("\n" + "═" * 54)
print(f"   AKTIVE ZUGÄNGE:     {active}")
print(f"   ABGELAUFENE:       {expired}")
print(f"   GESAMT:            {active + expired}")
print("═" * 54)