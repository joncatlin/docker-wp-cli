## WordPress Docker Container using wp-cli

Build a WordPress container using the wp-cli. This should provide control over the configuration and instllation of plug-ins without needing to use the GUI.

## How to Build 
```
docker-compose build
```

## TODO
1.  Convert this repo to use docker secrets
2.  Sort out the 'Wait for the DB to be ready before installing WP and continuing' code
3.  Figure out how to set the WP_URL env var to correct value so it is routed. Look into Traefik as a reverse proxy mechanism
4.  Figure out how to change the WORDPRESS continaer ENTRYPOINT so that the startup files in thos repo are called prior to launching Apache. The copy of the /www/var/html dir needs to happen, then the WP CREATE CONFIG and then the WP_INSTAL before then kicking off Apache.