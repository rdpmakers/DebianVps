server {
	server_name ssh.example.com;

	location / { 
		proxy_pass http://localhost:4200; 
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
