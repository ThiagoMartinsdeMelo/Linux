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

<p>List of installed disk devices:</p>

```
# fdisk -l | grepDisk
```

![fdisk-l|grepDisk]()
