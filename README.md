# Icinga 2 load test

1. Pick a VM name prefix, e.g. "aklimov8196"
2. Apply it: `perl -pi -e 's/YOUR_PREFIX_HERE/aklimov8196/g' *.tf playbooks.d/*.yml`
3. Verify the files `*.tf` `playbooks.d/*.yml` and adjust them if needed
4. Create the file `.auto.tfvars`: `openstack_password = "YOUR_PASSWORD_HERE"`
5. Run `terraform init`
6. Run `terraform apply
7. Create the file `inventory.txt` with data from `terraform show` like shown below
8. Run `ansible all -i inventory.txt -m ping --ssh-common-args="-o StrictHostKeyChecking=no -o UserKnownHostsFile=$(pwd)/known_hosts.txt"`
9. Run `ansible-playbook -i inventory.txt --ssh-common-args="-o UserKnownHostsFile=$(pwd)/known_hosts.txt" playbook.yml`
10. Login into http://aklimov8196-helper:3000 with admin:admin
11. Create a new InfluxDB datasource as shown below
12. Import the dashboard from `dashboard.json`

## `inventory.txt`

```
aklimov8196-helper ansible_host=10.27.2.239 ansible_user=centos
aklimov8196-master1 ansible_host=10.27.0.164 ansible_user=centos
aklimov8196-master2 ansible_host=10.27.0.121 ansible_user=centos
aklimov8196-master3 ansible_host=10.27.2.124 ansible_user=centos
```

## InfluxDB datasource

* Address: http://localhost:8086
* Database: icinga2
* User: icinga2
* Password: icinga2
