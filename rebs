server {
	server_name gaz.nrtsx.tk;

	location / { 
		proxy_pass https://localhost:4200; 
		proxy_set_header Host      $host;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_read_timeout 350;
		proxy_connect_timeout 350;
	}

	location ~ /\.ht {
		deny all; 
	}

	#
	# HERE GOES ALL THE Let´s Encrypt auto configuration stuff.
	#
}
