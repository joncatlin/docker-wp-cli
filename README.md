## WordPress Docker Container using wp-cli

Build a WordPress container using the wp-cli. This should provide control over the configuration and instllation of plug-ins without needing to use the GUI.

## How to Build 
```
docker-compose build
```

## TODO
1.  Convert this repo to use docker secrets
2.  Sort out the 'Wait for the DB to be ready before installing WP and continuing' code