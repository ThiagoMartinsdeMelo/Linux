## Stands for "Error Detection and Correction"

<p>Installation</p>

#### Debian/Ubuntu/Linux Mint

```
# apt-get install edac-utils
```

#### Fedora/Red Hat/CentOS

```
# yum install edac-utils
```
<p>Should have loaded edac_core module:</p>

```
# lsmod | grep -i edac
i7core_edac            17956  0 
edac_core              46685  1 i7core_edac
```

<p>If you did not get any results, load the module with:</p>

```
# modprobe edac_core
```

<p>And then, wait (some time, from minutes to days, depending on the damage).If you get results, you can do:</p>

```
# grep "[0-9]" /sys/devices/system/edac/mc/mc*/csrow*/ch*_ce_count
```

![netstat](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/hardware/edac.png)