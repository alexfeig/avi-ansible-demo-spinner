# Ansible Demo Spinner
This Ansible playbook is not meant to be invoked directly. Please see the
Terraform project in the root directory.

This Ansible playbook requires the following:

* Ansible 2.7.x
* avisdk Ansible Galaxy role
* A credentials file named `creds.yml`

After the playbook runs, you can find Apache Bench output in the playbook root.

## Installing avisdk Ansible Galaxy role
To install the Ansible Galaxy role:

`ansible-galaxy install avinetworks.avisdk -p roles/`

## Creating creds.yml
It is recommended that you use Ansible Vault to create the credential file. 

To do so, type `ansible-vault create creds.yml` and vim will open.

Add the following variables:

```azure_tenant_name: tenant name
azure_username: username
azure_password: password
azure_subscription: 1234
```

## Group Variables
You shouldn't need to edit these.

## Should you actually want to invoke manually...
`ansible-playbook --ask-vault-pass main.yml -e cloud=azure -e {'\"address\": [\"10.0.0.4\",\"10.0.1.5\",\"10.0.2.4\"]'} -e avi_controller=1.2.3.4 -e azure_rg_name=rg-name -e avi_password=password -e azure_vnet=vnet-name -e azure_se_subnet=subnet-name`