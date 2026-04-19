<?php
header('Content-Type: application/vnd.apple.mpegurl; charset=utf-8');
header('Cache-Control: no-cache, no-store, must-revalidate');

$type = $_GET['type'] ?? '';
if (!$type || !in_array($type, ['m3u_plus', 'm3u'])) {
    http_response_code(400);
    echo "#EXTM3U8\n# ERROR: type=m3u_plus oder type=m3u erforderlich\n";
    exit;
}

$base = '/data/data/com.termux/files/usr/share/apache2/default-site/htdocs/best/';

// Fallback-Kette für jede Playlist-Kategorie
$candidates = [
    'live'   => [
        $base . 'live/termux-xtream_user/termux-xtream_pass/live.m3u',
        $base . 'live/termux-xtream_user/termux-xtream_pass/best_live.m3u',
    ],
    'vod'    => [
        $base . 'vod/termux-xtream_user/termux-xtream_pass/vod.m3u',
    ],
    'series' => [
        $base . 'series/termux-xtream_user/termux-xtream_pass/series.m3u',
    ],
];

$found = false;
foreach ($candidates as $type_name => $paths) {
    foreach ($paths as $file) {
        if (file_exists($file) && filesize($file) > 0) {
            $candidates[$type_name] = [$file];
            $found = true;
            break;
        }
    }
}

if (!file_exists($candidates['live'][0]) || filesize($candidates['live'][0]) == 0) {
    http_response_code(503);
    echo "#EXTM3U8\n# FEHLER: live.m3u nicht vorhanden – install.sh erneut ausführen\n";
    exit;
}

echo "#EXTM3U8\n";

foreach ($candidates as $files) {
    $file = $files[0];
    if (!file_exists($file) || filesize($file) == 0) continue;
    $content = file_get_contents($file);
    $content = preg_replace('/^#EXTM3U8[^\n]*\n?/m', '', $content, 1);
    $content = str_replace('http://', 'https://', $content);
    echo $content;
}
?>
