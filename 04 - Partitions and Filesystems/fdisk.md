## fdisk

#### Tool used for basic and fast MBR partition management.

<p>Example: </p>

```
# fdisk /dev/sdb
```

| command |              finality              |
|:-------:|:----------------------------------:|
|    p    | list of partitions                 |
|    n    | creates a new partition            |
|    t    | change the partition id code       |
|    d    | delete a partition                 |
|    q    | exite fdisk without saving changes |
|    w    | exit fdisk and writes changes      |
|    m    | showing command help               |

<p>List of installed disk devices: </p>

```
# fdisk -l | grep Disk
```

![fdisk-l|grepDisk](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/01.fdisk-lgrepDisk.png)

<p>Creating a new backup partition: </p>

```
# fdisk /dev/sdb
```

![fdisk -dev-sdb](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/02.fdisk-dev-sdb%20-%20Copia.png)

<p>Viewing details about the created partition: </p>

```
# fdisk -l /dev/sdb
```

![fdisk -l-dev-sdb](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/03.fdisk-l-dev-sdb.png)

<p>The number 1 means that it is the first partition inside the sdb disk</p>

<p>Forming the partition for use: </p>

```
# mkfs.ext4 /dev/sdb1
```
![mkfs.ext4 -dev-sdb1](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/04.mkfs-ext4-dev-sdb-1.png)

<p>Creating mount point for the new disk /: </p>

```
# mkdir Backup
```

<p><strong>-t</strong> to specify the file system that the / dev / sdb1 partition is using. You must mount one partition at a time in different directories.</p>

```
# mount -t ext4 /dev/sdb1 /Backup
```

<p>To list mounted file systems: </p>

```
# df -h
```

![df-h](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/05.df-h.png)

<p>To avoid that the mount point is lost after reboot of the machine we must do the following, get the UUID of the storage device from our partition: </p>

```
# blkid
```

![blkid](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/06.blkid.png)

<p>Then insert the UUID of the / dev / sdb1 partition into the <strong>/etc/fstab</strong> file: </p>

```
# vim /etc/fstab
```
![vi etc-fstab](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/partitions/7.vim-etc-fstab.png)









