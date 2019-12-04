---

---

Linux command lsusb

```bash

lsusb | grep -i cam

Bus 001 Device 004: ID 046d:0825 Logitech, Inc. Webcam C270

```

- Now, use the Bus and Device numbers with `-v` option for verbose and filter for `"Width|Height"` and `grep` command.

```bash

$ lsusb -s 001:002 -v | egrep "Width|Height"

    wWidth    640
    wHeight   480
    wWidth    1280
    wHeight   1024
...

```

## lsusb with sort awk grep uniq

I also like to use command likes `sort`, `awk`, `grep` and `uniq`.

```bash

echo "Maximum --> Width <-- will come on top" && lsusb -s 001:004 -v | grep "Width"  | awk '{print $2 " " $1}' | sort | uniq | sort -nr


echo "Maximum --> Height <-- will come on top" && lsusb -s 001:004 -v | grep "Height"  | awk '{print $2 " " $1}' | sort | uniq | sort -nr


```

## v4l2-ctl 

- or another elegant option if available to you is :

`v4l2-ctl --list-formats-ext`

## some credits go to

<https://askubuntu.com/questions/214977/how-can-i-find-out-the-supported-webcam-resolutions>
