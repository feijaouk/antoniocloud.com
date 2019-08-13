# Linux Clam AntiVirus ClamAV

- Runs on AmazonLinux, Linux RedHat, Ubuntu, MacOS, Raspberry Pi, ...

## ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats.

- Official page - [https://www.clamav.net/](https://www.clamav.net/)

---

## Basic installation ClamAV Linux open source antivirus

MacOS - `brew install clamav`

RaspberryPi Ubuntu - `apt-get install clamav`

AmazonLinux, RedHat, CentOS, Fedora - `yum install clamav`

---

## Using ClamAV freshclam and clamscn

```sh

## updates anti-virus database engine

freshclam -v


## executes the scan-antivirus, -->> ATTENTION to the `--remove` flag, this deletes files!
##
# consider running the command first without the `--remove` flag.

sudo clamscan --infected --remove --recursive=yes .

````

## brief explanation

- `sudo`       - run the command as superuser or root
- `clamscan`   - runs the ClamAV scanner
- `-v`         - run in verbose mode
- `--infected` - only output infected files (unless you also specified the verbose)
- `--remove`   - removes (deletes) infected detected files

use `man freshclam` or `man clamscan` for the official manual.
