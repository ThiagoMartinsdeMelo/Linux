# KVM

### Commands

|     help     |              show this help message             |
|:------------:|:-----------------------------------------------:|
|   nodeinfo   | nodeinfo,show memory/disk/cpu usage of the node |
|     list     | list VEs and their status                       |
|    running   | list all running actions on the node            |
|   templates  | list all templates on the node                  |
|     isos     | list all isos on the node                       |
|    deploy    | deploy a new VE                                 |
| volumegroups | show valid volume groups on KVM/XEN nodes       |


|   command   |      |                 description                 |
|:-----------:|------|:-------------------------------------------:|
|    start    | veid | start a ve                                  |
|     stop    | veid | stop a ve                                   |
|   restart   | veid | restart a ve                                |
|   softstop  | veid | send an ACPI stop to a VE                   |
| softrestart | veid | send an ACPI restart to a VE                |
|   suspend   | veid | suspend a VE                                |
|  unsuspend  | veid | unsuspend a VE                              |
|    delete   | veid | delete a VE                                 |
|    cancel   | veid | cancel a VE (stops VE, doesn't delete data) |
|    veinfo   | veid | prints memory/hd/configuration of a VE      |
| action      | veid | print any queued actions for a VE           |


| command |            |       description       |
|:-------:|------------|:-----------------------:|
| setlock | true|false | lock or unlock a server |


| command |                             | description             |
|---------|-----------------------------|-------------------------|
| change  | veid setting value          | lock or unlock a server |
|         | valid settings for KVM/XEN: | cpu                     |
|         |                             | mem                     |
|         |                             | vnc_password            |
|         |                             | boot_order              |
|         |                             | iso                     |
|         |                             | sshport                 |
|         | valid settings for OpenVZ:  | cpu                     |
|         |                             | mem                     |
|         |                             | mem_burst               |
|         |                             | ip_add                  |
|         |                             | ip_delete               |
|         |                             | disk                    |
|         |                             | hostname                |
|         |                             | root_pass               |
|         |                             | num_proc                |
|         |                             | sshport                 |
