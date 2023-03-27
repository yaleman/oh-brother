# oh-brother

Scanning with my Brother MFC-L2750DW.

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

## Notes

- 64 bit deb driver here: <https://download.brother.com/welcome/dlf105200/brscan4-0.4.11-1.amd64.deb>

## Example .env file

```shell
SANED_NET_HOSTS="10.0.0.15"
SCANNER_MODEL="MFC_L2750-DW"
```
