# Aeris Management Console

|     help     |              show this help message             |
|:------------:|:-----------------------------------------------:|
|   nodeinfo   | nodeinfo,show memory/disk/cpu usage of the node |
|     list     | list VEs and their status                       |
|    running   | list all running actions on the node            |
|   templates  | list all templates on the node                  |
|     isos     | list all isos on the node                       |
|    deploy    | deploy a new VE                                 |
| volumegroups | show valid volume groups on KVM/XEN nodes       |


## KVM


|   command   |        |                 description                 |
|:-----------:|--------|:-------------------------------------------:|
|    start    | <veid> | start a ve                                  |
|     stop    | <veid> | stop a ve                                   |
|   restart   | <veid> | restart a ve                                |
|   softstop  | <veid> | send an ACPI stop to a VE                   |
| softrestart | <veid> | send an ACPI restart to a VE                |
|   suspend   | <veid> | suspend a VE                                |
|  unsuspend  | <veid> | unsuspend a VE                              |
|    delete   | <veid> | delete a VE                                 |
|    cancel   | <veid> | cancel a VE (stops VE, doesn't delete data) |
|    veinfo   | <veid> | prints memory/hd/configuration of a VE      |
| action      | <veid> | print any queued actions for a VE           |

