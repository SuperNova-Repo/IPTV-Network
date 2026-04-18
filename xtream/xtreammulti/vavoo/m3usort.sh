#!/bin/bash
eingabe=$1
ausgabe=$2




cat $eingabe  |sed '/EXTVLCOPT/d'  | sed 's#DE | ##g'  | sed 's#,|DE| #,#g' | sed 's#,DE: #,#g' | sed 's#,DE:#,#g' | sed 's#S. SPORT#Sky Sport#g'  > index.m3u




	echo "#EXTM3U" > ablage.m3u 
	cat index.m3u | grep -A1 -i ",Das Erste"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DasErste.de\" tvg-name=\"DAS ERSTE HD\" group-title=\"Germany sort\",Das Erste HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DasErste" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DasErste.de\" tvg-name=\"DAS ERSTE HD\" group-title=\"Germany sort\",Das Erste HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ARD HD"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DasErste.de\" tvg-name=\"DAS ERSTE HD\" group-title=\"Germany sort\",Das Erste HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ARD FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DasErste.de\" tvg-name=\"DAS ERSTE HD\" group-title=\"Germany sort\",Das Erste HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDF.de\" tvg-name=\"ZDF HD\" group-title=\"Germany sort\",ZDF HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDF.de\" tvg-name=\"ZDF HD\" group-title=\"Germany sort\",ZDF HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDF.de\" tvg-name=\"ZDF HD\" group-title=\"Germany sort\",ZDF HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SWR" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SWRFernsehen.de\" tvg-name=\"SWR HD\" group-title=\"Germany sort\",SWR HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF 1"  |  sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF1.ch\" tvg-name=\"SRF 1\" group-title=\"Germany sort\",SRF 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF1.ch\" tvg-name=\"SRF 1\" group-title=\"Germany sort\",SRF 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF2.ch\" tvg-name=\"SRF 2\" group-title=\"Germany sort\",SRF 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF2.ch\" tvg-name=\"SRF 2\" group-title=\"Germany sort\",SRF 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRFzwei" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF2.ch\" tvg-name=\"SRF 2\" group-title=\"Germany sort\",SRF 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF zwei" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRF2.ch\" tvg-name=\"SRF 2\" group-title=\"Germany sort\",SRF 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRF info " | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRFinfo.ch\" tvg-name=\"SRF Info\" group-title=\"Germany sort\",SRF info HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SRFinfo " | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SRFinfo.ch\" tvg-name=\"SRF Info\" group-title=\"Germany sort\",SRF info HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ORF 1"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF1.at\" tvg-name=\"ORF1\" group-title=\"Germany sort\",ORF1 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ORF1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF1.at\" tvg-name=\"ORF1\" group-title=\"Germany sort\",ORF1 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ORFeins" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF1.at\" tvg-name=\"ORF1\" group-title=\"Germany sort\",ORF1 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ORF eins" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF1.at\" tvg-name=\"ORF1\" group-title=\"Germany sort\",ORF1 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ORF 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF2.at\" tvg-name=\"ORF2\" group-title=\"Germany sort\",ORF2 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",ORF2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF2.at\" tvg-name=\"ORF2\" group-title=\"Germany sort\",ORF2 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",ORF 3" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF3.at\" tvg-name=\"ORF3\" group-title=\"Germany sort\",ORF3 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",ORF3"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF3.at\" tvg-name=\"ORF3\" group-title=\"Germany sort\",ORF3 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Orf III"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORF3.at\" tvg-name=\"ORF3\" group-title=\"Germany sort\",ORF3 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sat.1 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sat.1 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sat.1 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",Sat1 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",Sat1 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",Sat1 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sat1.de\" tvg-name=\"Sat.1\" group-title=\"Germany sort\",Sat.1 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",RTL HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL.de\" tvg-name=\"RTL\" group-title=\"Germany sort\",RTL HD#g'>> ablage.m3u      
	cat index.m3u | grep -A1 -i ",RTL FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL.de\" tvg-name=\"RTL\" group-title=\"Germany sort\",RTL HD#g'>> ablage.m3u       
	cat index.m3u | grep -A1 -i ",RTL RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL.de\" tvg-name=\"RTL\" group-title=\"Germany sort\",RTL HD#g'>> ablage.m3u      
	cat index.m3u | grep -A1 -i ",RTL CH HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL.de\" tvg-name=\"RTL\" group-title=\"Germany sort\",RTL HD#g'>> ablage.m3u      
cat index.m3u | grep -A1 -i ",RTL 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL2.de\" tvg-name=\"RTL2\" group-title=\"Germany sort\",RTL2 HD#g'>> ablage.m3u  
cat index.m3u | grep -A1 -i ",RTL2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL2.de\" tvg-name=\"RTL2\" group-title=\"Germany sort\",RTL2 HD#g'>> ablage.m3u   
cat index.m3u | grep -A1 -i ",RTL zwei" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL2.de\" tvg-name=\"RTL2\" group-title=\"Germany sort\",RTL2 HD#g'>> ablage.m3u  
cat index.m3u | grep -A1 -i ",RTLzwei" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTL2.de\" tvg-name=\"RTL2\" group-title=\"Germany sort\",RTL2 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ProSieben HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",ProSieben FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",ProSieben RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Pro7 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Pro7 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Pro7 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",Pro 7 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Pro 7 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Pro 7 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSieben.de\" tvg-name=\"ProSieben\" group-title=\"Germany sort\",ProSieben HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",kabel eins HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",kabel eins FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel eins RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",kabeleins HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabeleins FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabeleins RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel1 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel1 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel1 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel 1 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel 1 FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabel 1 RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEins.de\" tvg-name=\"kabel eins\" group-title=\"Germany sort\",kabel eins HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Vox HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Vox.de\" tvg-name=\"Vox\" group-title=\"Germany sort\",Vox HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Vox FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Vox.de\" tvg-name=\"Vox\" group-title=\"Germany sort\",Vox HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Vox RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Vox.de\" tvg-name=\"Vox\" group-title=\"Germany sort\",Vox HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTL Nitro" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLNitro.de\" tvg-name=\"RTLNitro\" group-title=\"Germany sort\",RTL Nitro HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",sixx" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sixx.de\" tvg-name=\"sixx\" group-title=\"Germany sort\",sixx HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DMAX" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DMax.de\" tvg-name=\"DMAX\" group-title=\"Germany sort\",DMAX HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",PHOENIX" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"phoenix.de\" tvg-name=\"PHOENIX\" group-title=\"Germany sort\",PHOENIX HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ServusTV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ServusHD.de\" tvg-name=\"ServusTV\" group-title=\"Germany sort\",ServusTV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Servus TV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ServusHD.de\" tvg-name=\"ServusTV\" group-title=\"Germany sort\",ServusTV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF:neo" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFneo.de\" tvg-name=\"ZDFneo\" group-title=\"Germany sort\",ZDFneo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDFneo" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFneo.de\" tvg-name=\"ZDFneo\" group-title=\"Germany sort\",ZDFneo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF neo" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFneo.de\" tvg-name=\"ZDFneo\" group-title=\"Germany sort\",ZDFneo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF_neo" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFneo.de\" tvg-name=\"ZDFneo\" group-title=\"Germany sort\",ZDFneo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDFinfo" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFinfo.de\" tvg-name=\"ZDFinfo\" group-title=\"Germany sort\",ZDFinfo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ZDF info" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ZDFinfo.de\" tvg-name=\"ZDFinfo\" group-title=\"Germany sort\",ZDFinfo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",arte" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ARTE.de\" tvg-name=\"arte\" group-title=\"Germany sort\",arte HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",3sat" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ARTE.de\" tvg-name=\"3sat\" group-title=\"Germany sort\",3sat HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Heimatkanal" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Heimatkanal.de\" tvg-name=\"3sat\" group-title=\"Germany sort\",Heimatkanal HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",HEIMAT KANAL" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Heimatkanal.de\" tvg-name=\"3sat\" group-title=\"Germany sort\",Heimatkanal HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Sky Cinema Premieren HD"| sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Premieren FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Premieren RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema HD"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema FHD"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinema.de\" tvg-name=\"Sky Cinema Premieren\" group-title=\"Germany sort\",Sky Cinema Premieren HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Premieren +24" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaPlus24.de\" tvg-name=\"Sky Cinema Premieren +24\" group-title=\"Germany sort\",Sky Cinema Premieren +24 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Premieren+24" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaPlus24.de\" tvg-name=\"Sky Cinema Premieren +24\" group-title=\"Germany sort\",Sky Cinema Premieren +24 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema +24" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaPlus24.de\" tvg-name=\"Sky Cinema Premieren +24\" group-title=\"Germany sort\",Sky Cinema Premieren +24 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema+24" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaPlus24.de\" tvg-name=\"Sky Cinema Premieren +24\" group-title=\"Germany sort\",Sky Cinema Premieren +24 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Best Of" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaHits.de\" tvg-name=\"Sky Cinema Best Of\" group-title=\"Germany sort\",Sky Cinema Best Of HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Action" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyAction.de\" tvg-name=\"Sky Cinema Action\" group-title=\"Germany sort\",Sky Cinema Action HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Spezial" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaSpecial.de\" tvg-name=\"Sky Cinema Spezial\" group-title=\"Germany sort\",Sky Cinema Spezial HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Special" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaSpecial.de\" tvg-name=\"Sky Cinema Spezial\" group-title=\"Germany sort\",Sky Cinema Spezial HD#g'>> ablage.m3u 
	
	
		cat index.m3u | grep -A1 -i ",Sky Cinema Highlights" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaHighlights.de\" tvg-name=\"Sky Cinema Spezial\" group-title=\"Germany sort\",Sky Cinema Highlights HD#g'>> ablage.m3u 
		cat index.m3u | grep -A1 -i ",Sky Highlights" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaHighlights.de\" tvg-name=\"Sky Cinema Spezial\" group-title=\"Germany sort\",Sky Cinema Highlights HD#g'>> ablage.m3u 
	
	
	
	cat index.m3u | grep -A1 -i ",Sky Cinema Thriller" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaThriller.de\" tvg-name=\"Sky Cinema Thriller\" group-title=\"Germany sort\",Sky Cinema Thriller HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Cinema Family" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaFamily.de\" tvg-name=\"Sky Cinema Family\" group-title=\"Germany sort\",Sky Cinema Family HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Krimi" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyKrimi.de\" tvg-name=\"Sky Krimi\" group-title=\"Germany sort\",Sky Krimi HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Atlantic"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyAtlanticHD.de\" tvg-name=\"Sky Atlantic\" group-title=\"Germany sort\",Sky Atlantic HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sky1.de\" tvg-name=\"Sky One\" group-title=\"Germany sort\",Sky One HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky One" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sky1.de\" tvg-name=\"Sky One\" group-title=\"Germany sort\",Sky One HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Replay" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyReplay.de\" tvg-name=\"Sky Replay\" group-title=\"Germany sort\",Sky Replay HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Comedy" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyComedy.de\" tvg-name=\"Sky Comedy\" group-title=\"Germany sort\",Sky Comedy HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Crime" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCrime.de\" tvg-name=\"Sky Crime\" group-title=\"Germany sort\",Sky Crime HD#g'>> ablage.m3u 
	
	cat index.m3u | grep -A1 -i ",Sky Cinema Classics" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyCinemaClassics.de\" tvg-name=\"Sky Nostalgie\" group-title=\"Germany sort\",Sky Cinema Classics HD#g'>> ablage.m3u 
	
	

	cat index.m3u | grep -A1 -i ",Romance TV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Romance.de\" tvg-name=\"RomanceTV\" group-title=\"Germany sort\",Romance TV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SYFY" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SciFi.de\" tvg-name=\"SYFY\" group-title=\"Germany sort\",SYFY HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",13th Street" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"13thStreet.de\" tvg-name=\"13th Street\" group-title=\"Germany sort\",13th Street HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SONY AXN" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"AXN.de\" tvg-name=\"SONY AXN\" group-title=\"Germany sort\",SONY AXN HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Universal TV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Universal.de\" tvg-name=\"UniversalTV\" group-title=\"Germany sort\",Universal TV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner TV Film" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVFilm.de\" tvg-name=\"Warner TV Film\" group-title=\"Germany sort\",Warner TV Film HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner Film" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVFilm.de\" tvg-name=\"Warner TV Film\" group-title=\"Germany sort\",Warner TV Film HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",TNT Film" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVFilm.de\" tvg-name=\"Warner TV Film\" group-title=\"Germany sort\",Warner TV Film HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner TV Serie" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVSerie.de\" tvg-name=\"Warner TV Serie\" group-title=\"Germany sort\",Warner TV Serie HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner Serie" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVSerie.de\" tvg-name=\"Warner TV Serie\" group-title=\"Germany sort\",Warner TV Serie HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",TNT Serie" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVSerie.de\" tvg-name=\"Warner TV Serie\" group-title=\"Germany sort\",Warner TV Serie HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner TV Comedy" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVComedy.de\" tvg-name=\"Warner TV Comedy\" group-title=\"Germany sort\",Warner TV Comedy HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Warner Comedy" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVComedy.de\" tvg-name=\"Warner TV Comedy\" group-title=\"Germany sort\",Warner TV Comedy HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",TNT Comedy" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WarnerTVComedy.de\" tvg-name=\"Warner TV Comedy\" group-title=\"Germany sort\",Warner TV Comedy HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",KABEL 1 CLASSICS" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsClassic.de\" tvg-name=\"kabeleinsclassics\" group-title=\"Germany sort\",kabeleinsclassics HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",kabeleinsclassics" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsClassic.de\" tvg-name=\"kabeleinsclassics\" group-title=\"Germany sort\",kabeleinsclassics HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",KINOWELT TV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Kinowelt.de\" tvg-name=\"KINOWELT TV\" group-title=\"Germany sort\",KINOWELT TV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",SILVERLINE" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Silverline.de\" tvg-name=\"SILVERLINE\" group-title=\"Germany sort\",Silverline Movie Channel HD#g'>> ablage.m3u 
	
	
	
	
	

	
	cat index.m3u | grep -A1 -i ",Anixe" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Anixe.de\" tvg-name=\"Anixe\" group-title=\"Germany sort\",Anixe HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Pro7 MAXX" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSiebenMaxx.de\" tvg-name=\"ProSiebenMaxx\" group-title=\"Germany sort\",ProSiebenMaxx HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ProSieben MAXX" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSiebenMaxx.de\" tvg-name=\"ProSiebenMaxx\" group-title=\"Germany sort\",ProSiebenMaxx HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTL Crime" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLCrime.de\" tvg-name=\"RTL Crime\" group-title=\"Germany sort\",RTL Crime HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ProSieben Fun" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSiebenFun.de\" tvg-name=\"ProSieben Fun\" group-title=\"Germany sort\",ProSieben Fun HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Pro7 Fun" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ProSiebenFun.de\" tvg-name=\"ProSieben Fun\" group-title=\"Germany sort\",ProSieben Fun HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTL Living" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLLiving.de\" tvg-name=\"RTL Living\" group-title=\"Germany sort\",RTL Living HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTL PASSION" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLPassion.de\" tvg-name=\",RTL PASSION\" group-title=\"Germany sort\",RTL Passion HD#g'>> ablage.m3u
	
	
	
	cat index.m3u | grep -A1 -i ",TLC" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"TLC.de\" tvg-name=\"TLC\" group-title=\"Germany sort\",TLC HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",TELE 5" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Tele5.de\" tvg-name=\"TELE 5\" group-title=\"Germany sort\",TELE 5 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",VOXup" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"VOXup.de\" tvg-name=\"VOXup\" group-title=\"Germany sort\",VOXup#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",VOXup" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"VOXup.de\" tvg-name=\"VOXup\" group-title=\"Germany sort\",VOX up#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTLup" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLPlus.de\" tvg-name=\"RTLup\" group-title=\"Germany sort\",RTLup HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",RTL up" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"RTLPlus.de\" tvg-name=\"RTLup\" group-title=\"Germany sort\",RTLup HD#g'>> ablage.m3u

	
	cat index.m3u | grep -A1 -i ",Discovery" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DiscoveryChannel.de\" tvg-name=\"Discovery\" group-title=\"Germany sort\",Discovery HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",NatGeo HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",NatGeo FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",NatGeo RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	
	
cat index.m3u | grep -A1 -i ",NAT GEO (" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 	


	cat index.m3u | grep -A1 -i ",National Geographic HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",National Geographic Channel HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	
	
	
	
	
	cat index.m3u | grep -A1 -i ",National Geographic FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",National Geographic RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoHD.de\" tvg-name=\"NatGeo\" group-title=\"Germany sort\",NatGeo HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Nat Geo Wild" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoWild.de\" tvg-name=\"NatGeoWild\" group-title=\"Germany sort\",Nat Geo Wild HD#g'>> ablage.m3u 
		cat index.m3u | grep -A1 -i ",NatGeo Wild" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoWild.de\" tvg-name=\"NatGeoWild\" group-title=\"Germany sort\",Nat Geo Wild HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",National Geographic Wild" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"NatGeoWild.de\" tvg-name=\"NatGeoWild\" group-title=\"Germany sort\",Nat Geo Wild HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",HISTORY" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"HistoryHD.de\" tvg-name=\"HISTORY\" group-title=\"Germany sort\",HISTORY HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Spiegel Geschichte" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SpiegelGeschichte.de\" tvg-name=\"Spiegel Geschichte\" group-title=\"Germany sort\",Spiegel Geschichte HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Spiegel TV Wissen" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"CuriosityChannel.de\" tvg-name=\"Curiosity Channel\" group-title=\"Germany sort\",Curiosity Channel HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Curiosity Channel HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"CuriosityChannel.de\" tvg-name=\"Curiosity Channel\" group-title=\"Germany sort\",Curiosity Channel HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Documentaries" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyDocumentaries.de\" tvg-name=\"Sky Documentaries\" group-title=\"Germany sort\",Sky Documentaries HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Nature" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyNature.de\" tvg-name=\"Sky Nature\" group-title=\"Germany sort\",Sky Nature HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Animal Planet" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"AnimalPlanet.de\" tvg-name=\"Animal Planet\" group-title=\"Germany sort\",Animal Planet HD#g'>> ablage.m3u 
	
	cat index.m3u | grep -A1 -i ",kabel eins Doku" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsDoku.de\" tvg-name=\"kabel eins Doku\" group-title=\"Germany sort\",kabel eins Doku HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",kabel 1 Doku" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsDoku.de\" tvg-name=\"kabel eins Doku\" group-title=\"Germany sort\",kabel eins Doku HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",kabeleins Doku" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsDoku.de\" tvg-name=\"kabel eins Doku\" group-title=\"Germany sort\",kabel eins Doku HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",kabel1 Doku" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"KabelEinsDoku.de\" tvg-name=\"kabel eins Doku\" group-title=\"Germany sort\",kabel eins Doku HD#g'>> ablage.m3u
	

	cat index.m3u | grep -A1 -i ",BILD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"BILD.de\" tvg-name=\"BILD\" group-title=\"Germany sort\",BILD HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i "Welt HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WELT.de\" tvg-name=\"Welt\" group-title=\"Germany sort\",Welt HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i "Welt FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WELT.de\" tvg-name=\"Welt\" group-title=\"Germany sort\",Welt HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i "Welt RAW"| sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"WELT.de\" tvg-name=\"Welt\" group-title=\"Germany sort\",Welt HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",NTV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ntv.de\" tvg-name=\"NTV\" group-title=\"Germany sort\",NTV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",N-TV" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ntv.de\" tvg-name=\"NTV\" group-title=\"Germany sort\",NTV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Comedy Central" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ComedyCentralVIVA.de\" tvg-name=\"Comedy Central\" group-title=\"Germany sort\",Comedy Central HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Disney Junior" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DisneyJunior.de\" tvg-name=\"Disney Junior\" group-title=\"Germany sort\",Disney Junior HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Kika HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Kika.de\" tvg-name=\"Kika\" group-title=\"Germany sort\",Kika HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Super RTL HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SuperRTL.de\" tvg-name=\"Super RTL\" group-title=\"Germany sort\",Super RTL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY CHANNEL HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY CHANNEL FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY CHANNEL RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DISNEY RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"disneychannel.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",DISNEY CHANNEL HD#g'>> ablage.m3u 
	
	
	cat index.m3u | grep -A1 -i ",CARTOON NETWORK" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"CartoonNetwork.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",CARTOON NETWORK HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",BOOMERANG" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Boomerang.de\" tvg-name=\"DISNEY CHANNEL\" group-title=\"Germany sort\",BOOMERANG HD#g'>> ablage.m3u 
	
	
	cat index.m3u | grep -A1 -i ",nick/MTV+" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Nickelodeon.de\" tvg-name=\"nick/MTV+\" group-title=\"Germany sort\",nick/MTV+ HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DELUXE MUSIC" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DeLuxeMusic.de\" tvg-name=\"DELUXE MUSIC\" group-title=\"Germany sort\",DELUXE MUSIC HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",MTV HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"MTVGermany.de\" tvg-name=\"MTV\" group-title=\"Germany sort\",MTV HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",MotorVision"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"MotorVision.de\" tvg-name=\"MotorVision\" group-title=\"Germany sort\",MotorVision HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ORF Sport" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORFSport.at\" tvg-name=\"ORF Sport\" group-title=\"Germany sort\",ORF Sport HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",ORFSport" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"ORFSport.at\" tvg-name=\"ORF Sport\" group-title=\"Germany sort\",ORF Sport HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sport1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sport1HD.de\" tvg-name=\"Sport1\" group-title=\"Germany sort\",Sport1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sport 1 HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Sport1HD.de\" tvg-name=\"Sport1\" group-title=\"Germany sort\",Sport1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sport1+" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SPORT1plus.de\" tvg-name=\"Sport1\" group-title=\"Germany sort\",Sport1+ HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sport 1+" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SPORT1plus.de\" tvg-name=\"Sport1\" group-title=\"Germany sort\",Sport1+ HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sport 1 +" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SPORT1plus.de\" tvg-name=\"Sport1\" group-title=\"Germany sort\",Sport1+ HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Eurosport 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Eurosport1.de\" tvg-name=\"Eurosport1\" group-title=\"Germany sort\",Eurosport 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Eurosport1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Eurosport1.de\" tvg-name=\"Eurosport1\" group-title=\"Germany sort\",Eurosport 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Eurosport 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Eurosport2.de\" tvg-name=\"Eurosport2\" group-title=\"Germany sort\",Eurosport 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Eurosport2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"Eurosport2.de\" tvg-name=\"Eurosport2\" group-title=\"Germany sort\",Eurosport 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DAZN 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DAZN1.de\" tvg-name=\"DAZN1\" group-title=\"Germany sort\",DAZN 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DAZN1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DAZN1.de\" tvg-name=\"DAZN1\" group-title=\"Germany sort\",DAZN 1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DAZN 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DAZN2.de\" tvg-name=\"DAZN2\" group-title=\"Germany sort\",DAZN 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",DAZN2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"DAZN2.de\" tvg-name=\"DAZN2\" group-title=\"Germany sort\",DAZN 2 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Premier League" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportPremierLeague.de\" tvg-name=\"Sky Premier League\" group-title=\"Germany sort\",Sky Premier League HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Sport F1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportF1.de\" tvg-name=\"Sky Sport F1\" group-title=\"Germany sort\",Sky Sport F1 HD#g'>> ablage.m3u 
	cat index.m3u | grep -A1 -i ",Sky Sport Tennis" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportTennis.de\" tvg-name=\"Sky Sport Tennis\" group-title=\"Germany sort\",Sky Sport Tennis HD#g'>> ablage.m3u  
	
	
	

	cat index.m3u | grep -A1 -i ",Sky Sport Golf" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportGolf.de\" tvg-name=\"Sky Sport Golf\" group-title=\"Germany sort\",Sky Sport Golf HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Mix" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportMix.de\" tvg-name=\"Sky Sport Mix\" group-title=\"Germany sort\",Sky Sport Mix HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Top Event" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportTopEvent.de\" tvg-name=\"Sky Sport Top Event\" group-title=\"Germany sort\",Sky Sport Top Event HD#g'>> ablage.m3u   
	
	cat index.m3u | grep -A1 -i ",Sky Sport 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport1.de\" tvg-name=\"Sky Sport 1\" group-title=\"Germany sort\",Sky Sport 1 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport2.de\" tvg-name=\"Sky Sport 2\" group-title=\"Germany sort\",Sky Sport 2 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 3" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport3.de\" tvg-name=\"Sky Sport 3\" group-title=\"Germany sort\",Sky Sport 3 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 4" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport4.de\" tvg-name=\"Sky Sport 4\" group-title=\"Germany sort\",Sky Sport 4 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 5" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport5.de\" tvg-name=\"Sky Sport 5\" group-title=\"Germany sort\",Sky Sport 5 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 6" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport6.de\" tvg-name=\"Sky Sport 6\" group-title=\"Germany sort\",Sky Sport 6 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 7" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport7.de\" tvg-name=\"Sky Sport 7\" group-title=\"Germany sort\",Sky Sport 7 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 8" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport8.de\" tvg-name=\"Sky Sport 8\" group-title=\"Germany sort\",Sky Sport 8 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport 9" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySport9.de\" tvg-name=\"Sky Sport 9\" group-title=\"Germany sort\",Sky Sport 9 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga RAW"| sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga FHD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga RAW" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga.de\" tvg-name=\"Sky Sport Bundesliga HD\" group-title=\"Germany sort\",Sky Sport Bundesliga HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga1.de\" tvg-name=\"Sky Sport Bundesliga 1 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 1 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga1.de\" tvg-name=\"Sky Sport Bundesliga 1 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 1 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga2.de\" tvg-name=\"Sky Sport Bundesliga 2 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 2 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga2.de\" tvg-name=\"Sky Sport Bundesliga 2 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 2 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 3" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga3.de\" tvg-name=\"Sky Sport Bundesliga 3 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 3 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 3" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga3.de\" tvg-name=\"Sky Sport Bundesliga 3 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 3 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 4" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga4.de\" tvg-name=\"Sky Sport Bundesliga 4 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 4 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 4" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga4.de\" tvg-name=\"Sky Sport Bundesliga 4 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 4 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 5" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga5.de\" tvg-name=\"Sky Sport Bundesliga 5 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 5 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 5" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga5.de\" tvg-name=\"Sky Sport Bundesliga 5 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 5 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 6"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga6.de\" tvg-name=\"Sky Sport Bundesliga 6 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 6 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 6"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga6.de\" tvg-name=\"Sky Sport Bundesliga 6 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 6 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 7" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga7.de\" tvg-name=\"Sky Sport Bundesliga 7 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 7 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 7" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga7.de\" tvg-name=\"Sky Sport Bundesliga 7 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 7 HD#g'>> ablage.m3u     
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 8" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga8.de\" tvg-name=\"Sky Sport Bundesliga 8 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 8 HD#g'>> ablage.m3u  
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 8" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga8.de\" tvg-name=\"Sky Sport Bundesliga 8 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 8 HD#g'>> ablage.m3u      
	cat index.m3u | grep -A1 -i ",Sky Sport Bundesliga 9" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga9.de\" tvg-name=\"Sky Sport Bundesliga 9 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 9 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sky Bundesliga 9" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkyBundesliga9.de\" tvg-name=\"Sky Sport Bundesliga 9 HD\" group-title=\"Germany sort\",Sky Sport Bundesliga 9 HD#g'>> ablage.m3u    
	cat index.m3u | grep -A1 -i ",Sky Sport Austria HD" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportAustria.de\" tvg-name=\"Sky Sport Austria HD\" group-title=\"Germany sort\",Sky Sport Austria HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Austria 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportAustria1.de\" tvg-name=\"Sky Sport Austria 1 HD\" group-title=\"Germany sort\",Sky Sport Austria 1 HD#g'>> ablage.m3u   
	cat index.m3u | grep -A1 -i ",Sky Sport Austria 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportAustria2.de\" tvg-name=\"Sky Sport Austria 2 HD\" group-title=\"Germany sort\",Sky Sport Austria 2 HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",Sky Sport Austria 3" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportAustria3.de\" tvg-name=\"Sky Sport Austria 3 HD\" group-title=\"Germany sort\",Sky Sport Austria 3 HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",Sky Sport News"  | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"SkySportNewsHD.de\" tvg-name=\"Sky Sport News\" group-title=\"Germany sort\",Sky Sport News HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",SPORTDIGITAL FUSSBALL" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"sportdigital.de\" tvg-name=\"SPORTDIGITAL FUSSBALL\" group-title=\"Germany sort\",SPORTDIGITAL FUSSBALL HD#g'>> ablage.m3u
	
		cat index.m3u | grep -A1 -i ",Blue Sport 1" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"blueSport1.ch\" tvg-name=\"SPORTDIGITAL FUSSBALL\" group-title=\"Germany sort\",Blue Sport 1 HD#g'>> ablage.m3u
		
		cat index.m3u | grep -A1 -i ",Blue Sport 2" | sed 's#\#EXTINF#halter1 halter2#g' | sed 's/halter2.*//' | sed 's#halter1#\#EXTINF:-1 tvg-id=\"blueSport2.ch\" tvg-name=\"SPORTDIGITAL FUSSBALL\" group-title=\"Germany sort\",Blue Sport 2 HD#g'>> ablage.m3u
	cat index.m3u | grep -A1 -i ",telekom">> ablage.m3u
	cat index.m3u | grep -A1 -i ",Magenta">> ablage.m3u
	cat index.m3u | grep -A1 -i ",blue">> ablage.m3u


	cat index.m3u | grep -A1 -i ",PRIME">> ablage.m3u
	cat index.m3u | grep -A1 -i ",RTL+">> ablage.m3u
	cat index.m3u | grep -A1 -i "select">> ablage.m3u
		cat index.m3u | grep -A1 -i ",Max">> ablage.m3u
	cat index.m3u | grep -A1 -i ",Eagle">> ablage.m3u
	cat index.m3u | grep -A1 -i "CINE STAR">> ablage.m3u
	cat index.m3u | grep -A1 -i "MOVIE TIME">> ablage.m3u
	cat index.m3u | grep -A1 -i "Kino">> ablage.m3u
	cat index.m3u | grep -A1 -i "store">> ablage.m3u
	cat index.m3u | grep -A1 -i "24/7">> ablage.m3u
	cat index.m3u | grep -A1 -i "movie -">> ablage.m3u
        cat index.m3u | grep -A1 -i "DAZN">> ablage.m3u
				
				

	sed '/--/d' ablage.m3u  > $ausgabe
	

rm index*
exit 0

	
