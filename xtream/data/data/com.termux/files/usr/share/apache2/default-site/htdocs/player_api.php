<?php
header('Content-Type: application/json');
$backend = "http://maxhd.eu:8000";
$query = $_SERVER['QUERY_STRING'];

if(empty($query) || !preg_match('/username=.*&password=.*/', $query)) {
    echo json_encode(["user_info" => ["auth" => 0, "status" => "Invalid Request"]]);
    exit;
}

$url = $backend . "/player_api.php?" . $query;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch, CURLOPT_TIMEOUT, 5);
$response = curl_exec($ch);
$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

if ($httpcode == 200 && $response !== false) {
    // Ersetze Backend-URLs durch lokale Proxy-URLs, damit Streams über itv.php laufen
    $response = str_replace($backend, "https://" . $_SERVER['HTTP_HOST'] . "/best", $response);
    echo $response;
} else {
    // Fallback, falls das Backend offline ist
    echo json_encode(["user_info" => ["auth" => 1, "status" => "Active", "message" => "Backend offline - use M3U playlist"]]);
}
?>
