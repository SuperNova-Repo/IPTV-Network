#!/bin/bash
### https://www.digital-eliteboard.com/threads/autoscript-vavoo-auf-e2.513335/
### On an idea of Clever999 modified by Demosat 30/05/2023
### thx to MasterX, giniman an Oyster for the authkey
vec=$(shuf -n 1 /data/data/com.termux/files/home/xtreammulti/vavoo/veckey) 
URL="127.0.0.1"
addonSig="$(curl -k --location --request POST 'https://www.vavoo.tv/api/box/ping2' --header 'Content-Type: application/json' --data "{\"vec\": \"$vec\"}" | sed 's#^.*"signed":"##' | sed "s#\"}}##g" | sed 's/".*//')"


CURSOR=null
LANGUAGE="de"
REGION=""
OUT="index.m3u"



# --------------------------------------------------
# M3U initialisieren
# --------------------------------------------------

echo "#EXTM3U" > "$OUT"


# --------------------------------------------------
# Catalog Paging
# --------------------------------------------------
while :; do
  RESP=$(
    curl -sS -X POST "https://vavoo.to/mediahubmx-catalog.json" \
      -H "Content-Type: application/json; charset=utf-8" \
      -H "mediahubmx-signature: $addonSig" \
      -H "User-Agent: MediaHubMX/2" \
      -H "Accept: */*" \
      -H "Accept-Language: $LANGUAGE" \
      -H "Accept-Encoding: gzip, deflate" \
      --compressed \
      --data-raw "{\"language\":\"$LANGUAGE\",\"region\":\"$REGION\",\"catalogId\":\"iptv\",\"id\":\"iptv\",\"adult\":false,\"search\":\"\",\"sort\":\"\",\"filter\":{},\"cursor\":$CURSOR,\"clientVersion\":\"3.0.2\"}"
  )

  # ------------------------------------------------
  # IPTV → M3U
  # ------------------------------------------------
echo "$RESP" | jq -r --arg mylink "http://"$URL"/vavoo/stream.php?stream_id=" '
  (.items // [])
  | .[]
  | select(.type=="iptv")
  | "#EXTINF:-1 group-title=\"" + .group + "\"," + .name,
    ($mylink + .ids.id)
' >> "$OUT"

  NEXT=$(echo "$RESP" | jq -r '.nextCursor')
  [[ "$NEXT" == "null" ]] && break
  CURSOR="$NEXT"
done
for country in Germany Turkey France Albania Arabia Balkans Poland Portugal Spain United Italy; do
cat index.m3u | grep -E -A1 =\"$country > $country.m3u
# file m3u for vlc
echo "#EXTM3U" > vavoo-$country.m3u
cat $country.m3u | sed 's# .b# HD#g' | sed 's# .a# HD#g' | sed 's# .c# HD#g' | sed 's# .s# HD#g' | sed '/^#EXTINF/a#EXTVLCOPT:http-user-agent=VAVOO/2.6' >> vavoo-$country.m3u
rm -rf $country.m3u
done
rm -rf index.m3u
cat <<'PHP' > /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/vavoo/stream.php
<?php
// ===============================
// Stream Resolver (PHP 8.5 safe)
// ===============================

// Fehler NICHT ausgeben (sonst Header kaputt)
error_reporting(0);
ini_set('display_errors', 0);

// ---------- VEC Keys ----------
$veckeys = [
    "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"
];

// ---------- stream_id ----------
$stream_id = $_GET['stream_id'] ?? '';
if ($stream_id === '') {
    http_response_code(400);
    exit('Fehler: stream_id fehlt');
}

// ---------- zufälliger VEC ----------
$random_vec = $veckeys[array_rand($veckeys)];

// ---------- Ping2 ----------
$ping_payload = json_encode(['vec' => $random_vec], JSON_UNESCAPED_SLASHES);

$ch = curl_init('https://www.vavoo.tv/api/box/ping2');
curl_setopt_array($ch, [
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_POST           => true,
    CURLOPT_POSTFIELDS     => $ping_payload,
    CURLOPT_HTTPHEADER     => ['Content-Type: application/json'],
    CURLOPT_SSL_VERIFYPEER => false,
    CURLOPT_TIMEOUT        => 5
]);

$ping_res = curl_exec($ch);
$ch = null;

$ping_data = json_decode($ping_res, true);
$authkey   = $ping_data['signed'] ?? ($ping_data['response']['signed'] ?? null);

if (!$authkey) {
    http_response_code(502);
    exit('Fehler: keine Signatur erhalten');
}

// ---------- Resolve ----------
$resolve_payload = json_encode([
    'language'       => 'de',
    'region'         => '',
    'url'            => 'https://vavoo.to/vavoo-iptv/play/' . $stream_id,
    'clientVersion' => '3.0.2'
], JSON_UNESCAPED_SLASHES);

$ch = curl_init('https://vavoo.to/mediahubmx-resolve.json');
curl_setopt_array($ch, [
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_POST           => true,
    CURLOPT_POSTFIELDS     => $resolve_payload,
    CURLOPT_HTTPHEADER     => [
        'Content-Type: application/json',
        'mediahubmx-signature: ' . $authkey,
        'User-Agent: MediaHubMX/2'
    ],
    CURLOPT_SSL_VERIFYPEER => false,
    CURLOPT_TIMEOUT        => 10
]);

$res_body = curl_exec($ch);
$ch = null;

$res_data  = json_decode($res_body, true);
$final_url = $res_data[0]['url'] ?? ($res_data['url'] ?? null);

// ---------- Redirect ----------
if ($final_url && str_starts_with($final_url, 'http')) {
    header('Location: ' . $final_url, true, 302);
    exit;
}

http_response_code(404);
exit('Stream konnte nicht aufgelöst werden');

PHP
exit 0
