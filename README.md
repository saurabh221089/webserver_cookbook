# webserver

## Pull-based Configuration Management tool
Workstation (PE develop Cookbooks) ---upload via Knife---> Chef Infra Server ---Pull--> Nodes running Chef client

**Ohai** is service installed on our nodes collecting all info regarding state of nodes. Ohai is run before every chef-client run.

$ cd chef-repo/cookbooks/
$ chef-cli generate cookbook webserver
$ knife cookbook upload webserver

### Knife commands
```
knife block list
knife status
knife node list	---Return a list of nodes
Knife node show <node-name>	---Info about the node, run_list, roles, recipes, Platform
knife client list
knife org list	---List all orgs (Not authorized, missing read permission)
knife vault show <vault-name> <vault-item-name>
knife role list
knife role show atlas-server	---To list all the roles to see the run_list of selected role
knife client delete -y test-node1
knife node delete -y test-node1
knife search node "tags:*ubuntu* OR roles:*ubuntu* OR fqdn:*ubuntu*   ---List all the nodes details
knife search node 'platform:windows* AND roles:gitlab*'
```
### Knife-Vsphere commands
```
knife vsphere datastore list
knife vsphere template list
knife vsphere vm disk list webserver1
0          Hard disk 1    vm_datastore1_test    60.00 GiB
knife vsphere vm disk extend VMNAME SIZE. (Extends the disk of vm VMNAME to SIZE kilobytes.)
knife vsphere vm state gassi-qamail1
VM gassi-qamail1 is currently powered on
```