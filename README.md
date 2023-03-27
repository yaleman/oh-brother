# oh-brother

Scanning with my Brother MFC-L2750DW, based on [sbs20/scanservjs](https://github.com/sbs20/scanservjs/).

Running it in the background:

Edit the .env file, it should look something like this:

```shell
SANED_NET_HOSTS="10.0.0.15"
SCANNER_MODEL="MFC_L2750-DW"
```

Note that `SANED_NET_HOSTS` can only have one thing in it because it's used to fill out the IP address in the build stage. I'm sure it could be fixed but I'm only using one scanner!

Doing the thing:

```shell
make download
make build
make background
```

1. Downloads the drivers from the Brother website.
2. Builds the docker image.
3. Runs the container!

## Example .env file

```shell .env
SANED_NET_HOSTS="10.0.0.15"
SCANNER_MODEL="MFC_L2750-DW"
```
