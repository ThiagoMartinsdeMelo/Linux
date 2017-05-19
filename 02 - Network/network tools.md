## Network Tools

#### netstat
<p>If want to know how many open ports in the system we currently have use <strong>netstat<strong>.</p>

```
# netstat
```

![netstat](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/network/netstat.png)

Options to netstat, some of the more useful are: 

| option |                             function                            |
|:------:|:---------------------------------------------------------------:|
|   -a   | to show ALL the open ports and not only those already connected |
| -p     | to identify the program that opened the port                    |
| -t     | TCP                                                             |
| -u     | UDP                                                             |
| -n     | show the port number instead of the port name                   |

```
# netstat -aptn
```

![netstat](https://github.com/ThiagoMartinsdeMelo/Linux/blob/master/img/network/netstat2.png)




