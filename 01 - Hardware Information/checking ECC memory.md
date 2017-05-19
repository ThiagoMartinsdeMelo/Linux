## Memory Stands for "Error Detection and Correction"

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


<p>It will return a list of each mc (memory controller) 's row (DIMM) and error count.<p>

<p>You will see:</p>

+ The error count will be since last reboot. So, if you reboot the machine, all counters will reset.

+ The count is dynamically generated, but counted in order. That means for example if I pull the ram in mc1 / csrow2, when I reboot the server, that slot will be "filled" by mc1 / csrow3, and mc1 / csrow3 will not appear. So you will only have one chance. You must have a clear idea of what each memory controller and memory slot is.

<p>You can get help from <strong>"dmidecode -t memory"</strong> (or dmidecode -t 16) command. It will print usefull information, like channel, slot and part number, in order to identify the corrupted memory dimm.</p>
