---

---

Raspberry Pi increase the swap memory size

- First edit the swap configuration file

Change the size for your preference, Default is `100`, (100MB)

Change for example for `2048` (2GB)

`sudo vim /etc/dphys-swapfile`

- Second, restart the service

`sudo /etc/init.d/dphys-swapfile restart`

- Confirm

Default swap file location is `ls -lh /var/swap`

`-rw------- 1 root root 2.0G Feb 29 20:20 /var/swap`

- HTOP - you can also confirm with `htop` to see memory, cpu and swap usage.

If you do not have `htop` installed, you can install it with `apt-get install htop`

- source <https://gist.github.com/christroutner/bd76785627925746b7105f13d5f735fc>

