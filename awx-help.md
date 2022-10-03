---
fontsize: 8pt
code-block-font-size: 8pt
classoption: landscape
---

# `awx` commands


## `awx adhoc` commands


### `awx-adhoc-get-stdout`

Usage:

```bash

  awx-adhoc-get-stdout ADHOC_JOB_ID

```

Get `stdout` of _adhoc_ _job_

Example

```bash

  awx-adhoc-get-stdout 1234

```

### `awx-adhoc-shell`

Usage:

```bash

  awx-adhoc-shell INVENTORY LIMIT MODULE_ARGS

```

Execute commands using `shell` module in `ad-hoc` of _AWX_

Example:

```bash

  awx-adhoc-shell pve dev uptime

```


### `awx-adhoc-shell-awx-jobs-history`

Usage:

```bash

  awx-adhoc-shell-awx-jobs-history INVENTORY LIMIT

```

Show _AWX_ deploy history in `/etc/awx-history/jobs-history.json`

Example:

  awx-adhoc-shell-awx-jobs-history wst dev


### `awx-adhoc-shell-braa`

Usage:

```bash

  awx-adhoc-shell-braa [INVENTORY] [LIMIT] [SUBNET]

```

Execute `braa` to get hostname by SNMP resquest

Example:

```bash

  awx-adhoc-shell-braa pve dev 10.1.2

```


### `awx-adhoc-shell-grep-ffox-js`

Usage:

```bash

  awx-adhoc-shell-grep-ffox-js INVENTORY LIMIT USER REGEX

```

Find _Firefox_ preferences

Example:

```bash

  awx-adhoc-shell-grep-ffox-js wst dev ansible 'network.proxy.*'

```


### `awx-adhoc-shell-grep-log-sssd`

Usage:

```bash

  awx-adhoc-shell-grep-log-sssd INVENTORY LIMIT REGEX

```

Execute `grep REGEX` in _SSSD_ _logs_

Example:

  awx-adhoc-shell-grep-log-sssd wst dev '(0x0010|0x0020|0x0040)'


### `awx-adhoc-shell-hostnamectl-status`

Usage:

```bash

  awx-adhoc-shell-hostnamectl-status INVENTORY LIMIT

```

Execute `hostnamectl status`.

Example:

```bash

  awx-adhoc-shell-hostnamectl-status wst dev

```


### `awx-adhoc-shell-ping-ip`

Usage:

```bash

  awx-adhoc-shell-ping-ip INVENTORY LIMIT IP

```

Execute `ping` to _IP_ from _inventory_.

Example:

```bash

  awx-adhoc-shell-ping-ip wst dev 10.1.0.1

```


### `awx-adhoc-shell-product-serial`

Usage:

```bash

  awx-adhoc-shell-product-serial INVENTORY LIMIT

```

Show `product_serial` from `dmi`.

Example:

```bash

  awx-adhoc-shell-product-serial wst dev

```


### `awx-adhoc-shell-qm-clone`

Usage:
  awx-adhoc-shell-qm-clone

Description


### `awx-adhoc-shell-qm-cores`

Usage:
  awx-adhoc-shell-qm-cores

Description


### `awx-adhoc-shell-qm-destroy`

Usage:
  awx-adhoc-shell-qm-destroy

Description


### `awx-adhoc-shell-qm-get-cores`

Usage:
  awx-adhoc-shell-qm-get-cores

Description


### `awx-adhoc-shell-qm-list-running`

Usage:
  awx-adhoc-shell-qm-list-running

Description


### `awx-adhoc-shell-qm-list-stopped`

Usage:
  awx-adhoc-shell-qm-list-stopped

Description


### `awx-adhoc-shell-qm-no-boot`

Usage:
  awx-adhoc-shell-qm-no-boot

Description


### `awx-adhoc-shell-qm-reboot`

Usage:
  awx-adhoc-shell-qm-reboot

Description


### `awx-adhoc-shell-qm-set-cores`

Usage:
  awx-adhoc-shell-qm-set-cores

Description


### `awx-adhoc-shell-qm-shutdown`

Usage:
  awx-adhoc-shell-qm-shutdown

Description


### `awx-adhoc-shell-qm-start`

Usage:
  awx-adhoc-shell-qm-start

Description


### `awx-adhoc-shell-qm-start-all`

Usage:
  awx-adhoc-shell-qm-start-all

Description


### `awx-adhoc-shell-set-hostname`

Usage:
  awx-adhoc-shell-set-hostname

Description


### `awx-adhoc-shell-sssctl-domain-status`

Usage:
  awx-adhoc-shell-sssctl-domain-status

Description


### `awx-adhoc-shell-vzdump`

Usage:
  awx-adhoc-shell-vzdump

Description


### `awx-adhoc-shell-wol`

Usage:

```bash

  awx-adhoc-shell-wol [INVENTORY] [LIMIT] [SUBNET]

```

Execute `braa` to get hostname by SNMP resquest

Example:

```bash

  awx-adhoc-shell-wol pve dev 10.1.2

```


### `awx-adhoc-stdout`

Usage:

```bash

  awx-adhoc-stdout JOB_ID

```

Get `stdout` of _ad-hoc_ _job_.

Example:

```bash

  awx-adhoc-stdout 1234

	Enter passphrase for /tmp/awx_1234_l3bc_2qw/artifacts/1234/ssh_key_data:
	Identity added: /tmp/awx_1234_l3bc_2qw/artifacts/1234/ssh_key_data (/tmp/awx_1234_l3bc_2qw/artifacts/1234/ssh_key_data)
	sprn01dev | CHANGED | rc=0 >>
	Restarting cups (via systemctl): cups.service.


	OK. (changed: false)

```


## `awx common` commands


### `awx-common`


### `awx-common.bak`


## `awx common.bak` commands


### `awx-common.bak`


## `awx config` commands


### `awx-config`

Usage:

```bash

  awx-config ENVIRONMENT

```

Overwrite `~/.tower_cli.cfg` with enviroment config using
`~/.awx-config` and `pass` command for retrieve passwords to use
with `awx-cli`.

First copy `.awx-config-example` to `~/.awx-config`, customize
variables according your enviroment.

Example:

```bash

  awx-config DEVELOP

```

Write example config:

```bash

  awx-config -c

  BACKUP CURRENT CONFIG IN /home/awx/.awx-config-1653427782.bak
  WRITE EXAMPLE CONFIG IN /home/awx/.awx-config

```

Define enviroments in `~/.awx-config`:

```

  AWX_DEBUG: -v
  DEFAULT_AD_DOMAIN: example.com
  DEFAULT_CREDENTIAL_TYPE: Machine
  DEFAULT_CREDENTIAL_USER: ansible
  DEFAULT_DOMAIN: ipa.example.com
  DEFAULT_EMAIL_DOMAIN: example.com
  DEFAULT_GRANT_CREDENTIAL: use
  DEFAULT_GRANT_INVENTORY: use
  DEFAULT_GRANT_JOB_TEMPLATE: execute
  DEFAULT_GRANT_PROJECT: use
  DEFAULT_GRANT_WORKFLOW: execute
  DEFAULT_HOST_DOMAIN: example.com
  DEFAULT_HOST_DOMAIN_PREFIX: ipa
  DEFAULT_HOST_INVENTORY: hosts-pve
  DEFAULT_HOST_PREFIX_REPLACE: pve
  DEFAULT_HOST_PREFIX_SEARCH: pve01
  DEFAULT_HOST_SUFFIX: n0
  DEFAULT_IPA_DOMAIN: ipa.example.com
  DEFAULT_LIMIT: lab
  DEFAULT_ORGANIZATION: example
  DEFAULT_PROJECT: inventory_v0.2.2
  DEFAULT_SCM_CREDENTIAL: git_awx_dev
  DEFAULT_SEP: ,
  DEFAULT_SSH_CREDENTIAL: ssh_ansible_dev
  DEFAULT_TEAM: devops
  DEFAULT_VAULT_CREDENTIAL: vault_dev
  DEVELOP: awx-dev
  DEVELOP_PASSWORD_STORE_DIR: /home/awx/.password-store-awx-dev
  DEVELOP_USER: admin
  DEVOPS_GRANT_INVENTORY: admin
  DIR_INVENTORY: inventory
  DIR_JOB_TEMPLATE: job_template
  DIR_PROJECT: project
  DIR_WORKFLOW: workflow
  ERROR_SHOW_USAGE: 1
  LAB: lab
  LAB_PASSWORD_STORE_DIR: /home/awx/.password-store-awx-lab
  LAB_USER: awx-cli
  LO: loawx
  LO_USER: admin
  MASTER: awx-prd
  MASTER_PASSWORD_STORE_DIR: /home/awx/.password-store-awx-prd
  MASTER_USER: admin
  OUTPUT_STYLE: md
  PASS_PREFIX: awx/
  PASS_SUFFIX: /
  PROJECT_PREFIX: ansible
  SCM_URL_API: https://git.example.com/api/v4
  SCM_URL_BASE: git@git.example.com:/ipa
  SNMP_USER: public
  STAGE: awx-stg
  STAGE_PASSWORD_STORE_DIR: /home/awx/.password-store-awx-stg
  STAGE_USER: admin
  WORKFLOW_PREFIX: wfw

```

Generate or insert credentials in multiple `pass` repositories:

```bash

  export PASSWORD_STORE_DIR=~/.password-store-awx-dev
  pass awx/awx-dev/host
  pass awx/awx-dev/admin_password

  export PASSWORD_STORE_DIR=~/.password-store-awx-prd
  pass awx/awx-prd/host
  pass awx/awx-prd/admin_password

```

Config file variables can be overridden on the fly by using them as
environment variables

```

  AWX_HOST=awx-dev AWX_USER=admin AWX_PASS=secret awx-config DEVELOP

```


### `awx-config-clean`

Usage:

```bash

  awx-config-clean

```

Remove `~/.tower_cli.cfg` to prevent unauthorized access.

Example:

```bash

  awx-config-clean

```

DELETE /home/osiris/.tower_cli.cfg

## `awx credential` commands


### `awx-credential-delete`

Usage:

```bash

  awx-credential-delete CREDENTIAL_NAME

```

Delete _credential_ by name.

```bash

  awx-credential-delete ssh_wst

```


### `awx-credential-create`

Usage:

```bash

  awx-credential-create CREDENTIAL_NAME [SSH_KEY_DATA] [SSH_KEY_UNLOCK]

```

Create a _credential_ as _Machine_ type by default.

Examples:

  Get _ssh private key_ and _passphrase_ from `pass`:

  ```bash

    PASSWORD_STORE_DIR=~/.password-store-awx awx-credential-create ansible_test

    == ============ ===============
    id    name      credential_type
    == ============ ===============
    26 ansible_test               1
    == ============ ===============

  ```

  Get _ssh private key_ without _passphrase_ from file:

  ```bash

    awx-credential-create ansible_test ~/.ssh/ansible_test

  ```

  Get _ssh private key_ from file and _passphrase_ as argument:

  ```bash

    awx-credential-create ansible_test ~/.ssh/ansible_test 'super mega secret'

  ```


### `awx-credential-modify`

Usage:

```bash

  awx-credential-modify CREDENTIAL_NAME [SSH_KEY_DATA] [SSH_KEY_UNLOCK]

```

Modify a _credential_ as _Machine_ type by default.

Examples:

  Get _ssh private key_ and _passphrase_ from `pass`:

  ```bash

    awx-credential-modify ansible_test

    == ============ ===============
    id    name      credential_type
    == ============ ===============
    26 ansible_test               1
    == ============ ===============

  ```

  Get _ssh private key_ without _passphrase_ from file:

  ```bash

    awx-credential-modify ansible_test ~/.ssh/ansible_test

  ```

  Get _ssh private key_ from file and _passphrase_ as argument:

  ```bash

    awx-credential-modify ansible_test ~/.ssh/ansible_test 'super mega secret'

  ```


## `awx csv` commands


### `awx-csv-host-versions2table`

Usage:

```bash

  awx-csv-host-versions2table CSV

```

Convert `.csv` with host versions to table group by version.

Example:

  awx-csv-host-versions2table awx-host-versions.csv

  vers        v1.0.0    v1.1.0    v1.1.1    v1.1.2    v1.1.3
  n01              0         0        19         0         1
  n02              0         0         8         0         0
  n03              0         0        13         0         0
  n04              0         0        15         0         0
  n05              2         0         9         0         0
  n06              2         0         5         0         0
  n07              2         0         5         0         0
  n08              1         0         5         0         0
  n00              2         0         4         0         0
  n09              1         0         6         0         0
  n10              4         1         1         2         0


### `awx-csv-host2all`


Usage:

```bash

  awx-csv-host2all CSV [FILTER_NAME] [FILTER_GROUP]

```

Read CSV and generate files:

  - `config` (all hosts order by group and host)

    Host wst12345 wst01dev
         Hostname wst01dev.example.com

    Host wst12346 wst01prd
         Hostname wst01prd.example.com

  - `groups` (all groups)

    dev
    prd

  - `host_vars/INVENTORY_HOST.yml` (one file per host)

			---

			ansible_host: 10.0.0.45
			primary_maccaddress: ca:fe:ca:fe:01:23
			hostname: wst01dev
			inventory_serial: W31415926

  - `hosts` (all hosts in groups)

			[dev]
			wst12345

			[prd]
			wst12346

```

Example:

```bash

  awx-csv-host2all wst.csv wst dev

```


## `awx deploy` commands


### `awx-deploy-sort`


Usage:

```bash

  awx-deploy-sort FILE

```bash

Order lines that ensure that the dependencies are first on the list.

```

Example:

```bash

  cat deploy/update.awx

    job_template/wst_wol_v0.1.0.json
    project/ansible_wst_v0.1.0.json
    inventory/wst.json
    credential/ssh_wst.json

  awx-deploy-sort deploy/update.awx

    credential/ssh_wst.json
    project/ansible_wst_v0.1.0.json
    inventory/wst.json
    job_template/wst_wol_v0.1.0.json

```

### `awx-deploy-grant`


### `awx-deploy-delete`


### `awx-deploy-changelog`


### `awx-deploy-revision`

[38;5;196m[ERROR] NOT FOUND .tower_cli.cfg TRY awx-config [m

### `awx-deploy-diff`


## `awx grant` commands


### `awx-grant-project-use`

Usage:

```bash

  awx-grant-project-use JOB_PROJECT_NAME [TEAM]

```

Grant with use permission a _project_ to _team_.

```bash

 awx-grant-project-use ansible_pve_v0.1.0 devops

```


### `awx-grant-filter`

Usage:

```bash

  awx-grant-filter ROLE_FILE TEAM_NAME

```

Filter grants from ROLE_FILE and generate awx-cli role grant

Example CSV:

```
RESOURCE_TYPE RESOURCE_NAME       TYPE
inventory     wst                 admin
project       ansible_wst_v1.6.0  use
job_template  wst_upd_v1.6.0      execute
workflow      wfw_pve_apt_v1.2.0  execute
```

Example:

```bash

  awx-grant-filter role/devops.csv support

	## inventory

	awx-cli role grant -v --team support --type  admin      --inventory     wst

	## project

	awx-cli role grant -v --team support --type  use        --project       ansible_wst_v1.6.0

	## job_template

	awx-cli role grant -v --team support --type  execute    --job-template  wst_upd_v1.6.0

	## workflow

	awx-cli role grant -v --team support --type  execute    --workflow      wfw_pve_apt_v1.2.0

```


### `awx-grant-inventory`

Usage:

```bash

  awx-grant-inventory INVENTORY TEAM [TYPE]

```

Grant (default `use`) permission to a _team_ for an _inventory_

```bash

  awx-grant-inventory pve devops

```

### `awx-grant-inventory-admin`

Usage:

```bash

  awx-grant-inventory-admin INVENTORY_NAME TEAM_NAME

```

Grant _admin_ role to _team_ in _inventory_.

Example:

```bash

  awx-grant-inventory-admin pve sysadmins

```


### `awx-grant-inventory-use`

Usage:

```bash

  awx-grant-inventory-use INVENTORY_NAME TEAM_NAME

```

Grant _use_ role to _team_ in _inventory_.

Example:

```bash

  awx-grant-inventory-use pve devops

```


### `awx-grant-job-template`

Usage:

```bash

  awx-grant-job-template JOB_TEMPLATE [TEAM]

```

Grant permission to a _team_ for a _job_template_.

```bash

  awx-grant-job-template wst_wol_v0.1.0 devops

``

### `awx-grant-json-all`

Usage:

```bash

  awx-grant-json-all [TEAM]

```

Grant default permissions to all _JSON_ files (in the current directory)
to a specified _team_ (if not specified, the default team will be used)

```bash

  awx-grant-json-all devops

```


### `awx-grant-project`

Usage:

```bash

  awx-grant-project PROJECT_NAME [TEAM|defaut_team] [TYPE|use]

```

Grant permissions to a _team_ for a _project_.
Use default team defined in config and `use` as default permission.

```bash

  awx-grant-project ansible_wst_v1.0.0 devops

  Resource changed.
  ==== ==== ==== =======
   id  team type project
  ==== ==== ==== =======
  3268    7 use      727
  ==== ==== ==== =======

```


### `awx-grant-workflow`

Usage:

```bash

  awx-grant-workflow

```

Grant permission to a _team_ for a _workflow_.

```bash

  awx-grant-workflow

```


### `awx-grant-version`

Usage:

```bash

  awx-grant-version VERSION_FILE [TEAM]

```

Grant use and execute permissions to a _project_, _job template_ and
_workflow_ defined in version file to _team_.

```bash

 awx-grant-version wfw_pve_v0.1.0.version devops

```


### `awx-grant-job-template-admin`

Usage:

```bash

  awx-grant-job-template-admin JOB_TEMPLATE_NAME [TEAM]

```

Grant with admin permission a _job template_ to _team_.

```bash

 awx-grant-job-template-admin pve_vms_kvm sysadmins

```


### `awx-grant-workflow-execute`

Usage:

```bash

  awx-grant-workflow-execute

```

Grant with execute permission a _workflow_ to _team_.

Example:

```bash

  awx-grant-workflow-execute wfw_pve_kvm_v0.1.0 devops

```


### `awx-grant-job-template-execute`

Usage:

```bash

  awx-grant-job-template-execute JOB_TEMPLATE_NAME [TEAM]

```

Grant with execute permission a _job template_ to _team_.

```bash

 awx-grant-job-template-execute pve_vms_kvm devops

```


### `awx-grant-project-admin`

Usage:

```bash

  awx-grant-project-admin JOB_PROJECT_NAME [TEAM]

```

Grant with admin permission a _project_ to _team_.

```bash

 awx-grant-project-admin ansible_pve_v0.1.0 sysadmins

```


### `awx-grant-team`

Usage:

```bash

  awx-grant-team GRANT_FILE

```

Generate awx-cli role grant from grant file

Example file:

```
RESOURCE_TYPE RESOURCE_NAME       TYPE     TEAM
inventory     wst                 admin    devops
project       ansible_wst_v1.6.0  use      devops
job_template  wst_upd_v1.6.0      execute  devops
workflow      wfw_pve_apt_v1.2.0  execute  devops
```

Example:

```bash

  awx-grant-team role/devops.awx devops

awx-cli role grant -v --team devops --type admin --inventory wst
awx-cli role grant -v --team devops --type use --project ansible_wst_v1.6.0
awx-cli role grant -v --team devops --type execute --job-template wst_upd_v1.6.0
awx-cli role grant -v --team devops --type execute --workflow wfw_pve_apt_v1.2.0

```


## `awx group` commands


### `awx-group-get-variable`


Usage:

```bash

  awx-group-get-variable INVENTORY GROUP [VARIABLE|all]

```

Description

Example:

```bash

  awx-group-get-variable wst dev

```


### `awx-group-modify-variable`

Usage:
  awx-group-modify-variable

Description


### `awx-group-diff-variables`


Usage:

```bash

  awx-group-diff-variables INVENTORY GROUP

```

Compare and merge AWX group variables with local YAML group file.

Example:

```bash

  awx-group-diff-variables wst dev

```


## `awx help` commands


### `awx-help`


Usage:

```bash

  awx-help

```

Generate a markdown output for usage of each command script


## `awx host` commands


### `awx-host-associate`


Usage:

```bash

  awx-host-associate HOST GROUP_NAME [INVENTORY]

```bash

Associate _host_ to _group_.
Use PREFIX-HOST as INVENTORY.

```bash

  awx-host-associate wst-dev01 dev

  awx-host-associate wstdev01 dev wst

```

### `awx-host-get-variable`

Usage:

```bash

  awx-host-get-variable HOST [KEY|all] [INVENTORY|prefix-]

```

Get _host_ variables from _inventory_

Example:

  Implicit _inventory_ from _host_:

```bash

  awx-host-get-variable pve-dev01

```

  Get value of `ansible_host` from _host_:

```bash

  awx-host-get-variable pve-dev01 ansible_host

```

  Explicit _host_, all variables and _inventory_:

```bash

  awx-host-get-variable dev01 all pve

```


### `awx-host-associate-host-vars`

Usage:



```

  awx-host-associate-host-vars INVENTORY REGEXP GROUP



```

Associate _host_ to _group_ based on variables in `host_vars`
directory.

Example:



```

  awx-host-associate-host-vars pve REGEXP dev



```

### `awx-host-create`

Usage:

```bash

  awx-host-create INVENTORY_HOSTNAME [INVENTORY]

```

Create _host_ in _inventory_.

Example:

```bash

  awx-host-create wst-dev01

  awx-host-create wstdev001 wst

```

### `awx-host-disable`

Usage:

```

  awx-host-disable HOST_NAME INVENTORY_NAME

```

Disable _host_ from _inventory_.

Example:

```

  awx-host-disable spve01 pve

```


### `awx-host-disable-all`

Usage:

```bash

  awx-host-disable-all [INVENTORY]



```

Disable all enabled hosts in _inventory_.

Example:

```bash

  awx-host-disable-all pve



```


### `awx-host-enable`

Usage:

```bash

  awx-host-enable HOST [INVENTORY]



```

Enable _host_ in _inventory_.

Example:

  Implicit _inventory_ from _host_:

```bash

  awx-host-enable pve-dev01



```

  Explicit _host_ and _inventory_:

```bash

  awx-host-enable dev01 pve



```

Result:



```

  === ========= ========= =======
  id    name    inventory enabled
  === ========= ========= =======
  123 pve-dev01         2    true
  === ========= ========= =======



```


### `awx-host-enable-all`

Usage:
  awx-host-enable-all

Description


### `awx-host-get-by-description`

Usage:

```bash

  awx-host-get-by-description DESCRIPTION [INVENTORY]

```

Get _host_ by `description`.

Return: `id name enabled ansible_host primary_macaddress`

Example:

```bash

  awx-host-get-by-description wst050f0247 wst
  12345 wst-ACDCFAFAFA true 10.10.1.22 ca:fe:ac:dc:fa:fa

```


### `awx-host-get-ip`

Usage:

  awx-host-get-ip [HOST]

Get IP Address from `ansible_host` in host_vars of AWX.

Example:

  awx-host-get-ip gateway

  10.1.2.1


### `awx-host-get-recent-jobs`

Usage:

```bash

  awx-host-get-recent-jobs

```

Description

```bash

  awx-host-get-recent-jobs

```


### `awx-host-modify-from-yaml`

Usage:

```bash

  awx-host-modify-from-yaml HOST YAML INVENTORY



```

Modify _host_ variable providing `.yaml` file.

Example:

```bash

  awx-host-modify-from-yaml pve-dev01



```

### `awx-host-modify-ip`

Usage:
  awx-host-modify-ip

Description


### `awx-host-modify-variable`

Usage:
  awx-host-modify-variable

Description


### `awx-host-vars2ssh-config`

Usage:

```bash

  awx-host-vars2ssh-config HOST_VARS_YAML

```

Generate _SSH_ host config from host_vars _YAML_ file.

Example:

```bash

  awx-host-vars2ssh-config host_vars/wstdev01.yml

```


### `awx-host-get-description`

Usage:

```bash

  awx-host-get-description HOST [INVENTORY]

```

Get _host_ description from _AWX_ _inventory_.

Example:

  Implicit _inventory_ from _host_:

```bash

  awx-host-get-description pve-dev01

  Proxmox develop server

```

  Explicit _host_ and _inventory_:

```bash

  awx-host-get-description dev01 pve

  Proxmox develop server

```



```


### `awx-host-get-last-job-summary`

Usage:

```bash

  awx-host-get-last-job-summary HOST [INVENTORY]

```

Get summary fields last job executed in host using `curl`.

Example:

```bash

  awx-host-get-last-job-summary wst01n01 wst

  1234 wst_apt_v1.1.0 failed true 43.514 888 wst_apt_v1.1.0

```


### `awx-host-get-csv`

Usage:

```bash

  awx-host-get-csv HOST_NAME [INVENTORY]

```

Get `.csv` with basic attributes of _host_.

  inventory_host,description,ansible_host,primary_macaddress,inventory_serial

Example:

```bash

  awx-host-get-csv wst01dev01 wst

  'wst01dev01','imported','192.168.1.11','ca:fe:ca:fe:00:3d','S12345678'
  'wst01dev02','imported','192.168.1.12','fa:fa:fa:02:ac:dc','S12345679'

```


### `awx-host-get-groups`

Usage:

```bash

  awx-host-get-groups HOST [INVENTORY]

```

Get associated _groups_ to a _host_.

Example:

  Implicit _inventory_ from _host_:

```bash

  awx-host-get-groups wst-dev01

  wst
  n01

```

  Explicit _host_ and _inventory_:

```bash

  awx-host-get-groups wst01n01 wst

  wst
  n01

```


### `awx-host-list-inventory-group`


Usage:

```bash

  awx-host-list-inventory-group INVENTORY GROUP_ID

```

Get enabled hosts in group of inventory.

Example:

```bash

  awx-host-list-inventory-group wst 123

	150 wstdev01
	151 wstdev02
	152 wstdev03
	153 wstdev04

```


### `awx-host-replace-ansible-host`

Usage:

```bash

  awx-host-replace-ansible-host [HOST_INVENTORY]

```

Replace `ansible_host` value with _FQDN_ in host_vars YAML files of inventory.

Example:

```bash

  awx-host-replace-ansible-host hosts-pve

```


### `awx-host-list`


Usage:

```bash

  awx-host-list INVENTORY

```

Get all _hosts_ in _inventory_.

Example:

```bash

  awx-host-list wst

  id  name     enabled
  150 wstdev01 true
  151 wstdev02 false
  152 wstdev03 true
  153 wstdev04 true

```


## `awx install` commands


### `awx-install-apt`


Usage:

```bash

  awx-install-apt

```

Install dependencies using apt on Debian based distros

```bash

  awx-install-apt

```

## `awx inventory` commands


### `awx-inventory-source-update`

Usage:

```bash

  awx-inventory-source-update INVENTORY_SOURCE

```

Update _inventory source_ of _inventory_

Example:

```bash

  awx-inventory-source-update inventory_pve

```


### `awx-inventory-get-variable`

Usage:

```bash

  awx-inventory-get-variable INVENTORY VARIABLE

```

Get variable value from _inventory_.

Example:

```bash

  awx-inventory-get-variable pve subnet

```


### `awx-inventory-source-get-variable`

Usage:

```bash

  awx-inventory-source-get-variable INVENTORY_SOURCE [KEY|all]

```

Get variable from _inventory_source_.

```bash

  awx-inventory-source-get-variable inventory_pve source_path
  hosts-pve

```


### `awx-inventory-batch-update`

Usage:
  awx-inventory-batch-update

Description


### `awx-inventory-create`

Usage:

```bash

  awx-inventory-create INVENTORY DESCRIPTION ORGANIZATION

```bash

Create _inventory_

```bash

  awx-inventory-create pve Proxmox

```


### `awx-inventory-get-id`

Usage:

```bash

  awx-inventory-get-id INVENTORY



```

Get `id` of _inventory_

Example:

```bash

  awx-inventory-get-id pve



```


### `awx-inventory-group-get-hosts`

Usage:

```bash

  awx-inventory-group-get-hosts INVENTORY GROUP

```

Get hosts from group of inventory

Example:

```bash

  awx-inventory-group-get-hosts pve dev

    spve01dev

```


### `awx-inventory-list`

Usage:

```bash

  awx-inventory-list



```

List all _inventories_.


### `awx-inventory-modify-variable`

Usage:
  awx-inventory-modify-variable

Description


### `awx-inventory-set-description`

Usage:
  awx-inventory-set-description

Description


### `awx-inventory-source-create`

Usage:

```bash

  awx-inventory-source-create INVENTORY PROJECT

```bash

Create _inventory_source_

```bash

  awx-inventory-source-create pve inventory_v0.1.0

```


### `awx-inventory-source-get-project`

Usage:
  awx-inventory-source-get-project

Description


### `awx-inventory-source-modify-variable`

Usage:
  awx-inventory-source-modify-variable

Description


### `awx-inventory-source-set-project`

Usage:
  awx-inventory-source-set-project

Description


### `awx-inventory-delete`

Usage:

```bash

  awx-inventory-delete INVENTORY_NAME

```

Delete _inventory_ by name.

```bash

  awx-inventory-delete wst

```


## `awx job` commands


### `awx-job-template-get`

Usage:

```bash

  awx-job-template-get JOB_ID

```

Get summary of _job_template_ execution in format:

 name duration date start finish url

```bash

	awx-job-template-get 1234

  vms_cin_v0.2.0 00:00  2022-05-17 17:47 17:47 http://awx-dev/#/jobs/playbook/1234

``


### `awx-job-template-create`

Usage:

```bash

  awx-job-template-create JOB_TEMPLATE PROJECT_NAME PLAYBOOK_FILE [EXTRA_VARS_YAML]

```

Create _job template_ and associate default credentials in _AWX_.

```bash

  awx-job-template-create wst_wol_v0.1.0 ansible_wst_v0.1.0 wst-wol.yml wst_extra_vars.yml

```


### `awx-job-list-running`

Usage:

```bash

  awx-job-list-running

```

List current running _jobs_


### `awx-job-stdout`

Usage:
  awx-job-stdout

Description


### `awx-job-template-get-last-failed-jobs`

Usage:
  awx-job-template-get-last-failed-jobs

Description


### `awx-job-template-get-last-job`

Usage:
  awx-job-template-get-last-job

Description


### `awx-job-template-get-last-job-status`

Usage:
  awx-job-template-get-last-job-status

Description


### `awx-job-template-get-url`

Usage:
  awx-job-template-get-url

Description


### `awx-job-template-get-variable`

Usage:
  awx-job-template-get-variable

Description


### `awx-job-template-get-recent-jobs`

Usage:

```bash

  awx-job-template-get-recent-jobs

```

Get `job_template` recent _jobs_.
Return job ID, timestamp and status of each job.

Example:

```bash

  awx-job-template-get-recent-jobs wst_wol_v0.1.0

	137020 2021-11-29 13:27:45 successful
	136982 2021-11-29 08:15:40 successful
	136877 2021-11-25 13:05:05 successful
	136799 2021-11-25 09:12:57 successful
	136793 2021-11-24 20:17:46 successful
	136720 2021-11-24 10:31:45 successful
	136719 2021-11-24 10:24:43 successful
	136709 2021-11-24 08:50:15 successful
	136696 2021-11-23 16:18:26 successful
	136683 2021-11-23 12:59:12 successful

```


### `awx-job-status`


Usage:

```bash

  awx-job-status JOB_ID

```

Show status of _job_

```bash

  awx-job-status 678

  ========== ====== =======
    status   failed elapsed
  ========== ====== =======
  successful  false 379.13
  ========== ====== =======

```

### `awx-job-overview`

Usage:

```bash

  awx-job-overview JOB_ID

```

Get overview of _job_ execution.

Example:

```bash

  awx-job-overview 1234

  | 1234 | wst_ap_v1.1.0 | failed | 43.514 |     | 2021-05-10 | 17:04:32 | 17:05:15 | 00:00:43 | test |

```


### `awx-job-template-delete`

Usage:

```bash

  awx-job-template-delete JOB_TEMPLATE

```

Delete _job template_.

```bash

  awx-job-template-delete wst_wol_v0.1.0

```


### `awx-job-launch`

Usage:

```bash

  awx-job-launch JOB_NAME [JOB_LIMIT]

```

Launch job template with limit.

Example:

```bash

  awx-job-launch wst_wlp_v1.0.0 dev

```


## `awx json` commands


### `awx-json-send-projects`


### `awx-json-inventory-group-get-hosts`

Usage:

```bash

  awx-json-inventory-group-get-hosts INVENTORY.json GROUP

```

Get hosts from group of inventory `.json` file

Example:

```bash

  awx-json-inventory-group-get-hosts inventory/pve.json dev

    spve01dev

```


### `awx-json-inventory-get-variables`

Usage:

```bash

  awx-json-inventory-get-variables [INVENTORY]

```

Get variables of inventory `.json` file

Example:

```bash

  awx-json-inventory-get-variables inventory/pve.json

  remote_user: ansible
  http_proxy_host: 10.0.0.1
  http_proxy_port: 3128

```


### `awx-json-bump-version`

Usage:

```bash

  awx-json-bump-version JSON



```

Increment semantic version in `.json` file.


### `awx-json-bump-version-unified-job-name`

Usage:
  awx-json-bump-version-unified-job-name

Description


### `awx-json-get-ask-inventory-on-launch`

Usage:
  awx-json-get-ask-inventory-on-launch

Description


### `awx-json-get-ask-limit-on-launch`

Usage:
  awx-json-get-ask-limit-on-launch

Description


### `awx-json-get-dependencies`

Usage:

```bash

  awx-json-get-dependencies JSON



```

Get dependencies of `.json` file and write a `.version` file with
properties.

Example:

```bash

  awx-json-get-dependencies workflow/wfw-pve.json



```


### `awx-json-get-job-template`

Usage:
  awx-json-get-job-template

Description


### `awx-json-inventory-group-subgroup-get-hosts`

Usage:

```bash

  awx-json-inventory-group-subgroup-get-hosts INVENTORY.json GROUP SUBGROUP

```

Get hosts from subgroup of group of inventory `.json` file

Example:

```bash

  awx-json-inventory-group-subgroup-get-hosts inventory/pve.json dev lab

    spve01dev

```


### `awx-json-get-project`

Usage:
  awx-json-get-project

Description


### `awx-json-get-unified-job-name`

Usage:
  awx-json-get-unified-job-name

Description


### `awx-json-inventory-get-groups`

Usage:

```bash

  awx-json-inventory-get-groups [INVENTORY]

```

Get groups of inventory `.json` file

Example:

```bash

  awx-json-inventory-get-groups inventory/pve.json

    dev
    prd

```


### `awx-json-inventory2all`

Usage:

```bash

  awx-json-inventory2all [INVENTORY_JSON] GROUP

```

Generate hosts inventory file and ssh config from inventory `.json`

Example:

```bash

  awx-json-inventory2all inventory/pve.json

  inventory hosts:

    [pve]
    spve01dev
    spve01prd

    [dev]
    spve01dev

    [prd]
    spve01prd

  ssh config:

    Host spve01dev
         Hostname spve01dev.example.com

    Host spve01dev
         Hostname spve01dev.example.com

```


### `awx-json-inventory-get-subgroups`

Usage:

```bash

  awx-json-inventory-get-subgroups [INVENTORY_JSON] GROUP

```

Get groups of inventory `.json` file

Example:

```bash

  awx-json-inventory-get-subgroups inventory/pve.json

    dev
    prd

```


### `awx-json-inventory-group-get-variables`

Usage:

```bash

  awx-json-inventory-group-get-variables INVENTORY.json GROUP

```

Get hosts from group of inventory `.json` file

Example:

```bash

  awx-json-inventory-group-get-variables inventory/pve.json dev

    spve01dev

```


### `awx-json-inventory-group-host-verify`

Usage:

```bash

  awx-json-inventory-group-host-verify GROUP_HOST_FILE INVENTORY_JSON

```

Get _hosts_ from _group_ of _inventory_ `json` file.

Example:

```bash

  awx-json-inventory-group-host-verify pve-deploy pve.json

    spve01dev

```


### `awx-json-inventory-group-hosts`

Usage:

```bash

  awx-json-inventory-group-hosts GROUPS_FILE INVENTORY_JSON

```

Get _hosts_ from _group_ file of _inventory_.

Example:

```bash

  awx-json-inventory-group-hosts pvedeploy pve.json

    dev pve-dev-01
    prd pve-prd-01
    prd pve-prd-02

```


### `awx-json-get-extra-vars`


Usage:

```bash

  awx-json-get-extra-vars JSON

```

Get extra_vars from `.json`.

```bash

  awx-json-get-extra-vars job_template/ipa_sss_syn_v0.1.0.json

	---
	sssd_cache_script_path: /opt/freeipa-sssd-tools/ipa-sss-syn
	sssd_cache_rt_path: /opt/freeipa-sssd-tools

```


### `awx-json-receive-inventory`

Usage:
  awx-json-receive-inventory

Description


### `awx-json-receive-job-template`

Usage:
  awx-json-receive-job-template

Description


### `awx-json-receive-project`

Usage:
  awx-json-receive-project

Description


### `awx-json-receive-workflow`

Usage:
  awx-json-receive-workflow

Description


### `awx-json-rename`

Usage:

```bash

  awx-json-rename JSON NEW_NAME

```

Rename `.json` file and replace internal `name`.

Example:

```bash

  awx-json-rename pve_kvm.json pve_vms_kvm

```

### `awx-json-role-team-list`

Usage:

```bash

  awx-json-role-team-list ROLE_TEAM.json

```

Get grants from unique TEAM ROLE in `.json` file

Example:

```bash

  awx-json-role-team-list role/ROLE_TEAM.json

```


### `awx-json-send-all`

Usage:

```bash

  awx-json-send-all

```

Send to _AWX_ al `.json` files (_projects_, _job_templates_ and
_workflows_).


### `awx-json-send-inventory`

Usage:
  awx-json-send-inventory

Description


### `awx-json-send-job-templates`

Usage:
  awx-json-send-job-templates

Description


### `awx-json-send-workflows`

Usage:

```bash

  awx-json-send-workflows [JSON]

```

Send to _AWX_ one or multiples _workflow_ and _workflows_ dependencies.

Without file, scan `.json` files with `WORKFLOW_PREFIX` in
`WORKDIR`.

Default Variables in `~/.awx-config`

```ini

  DIR_WORKFLOW: workflow
  WORKFLOW_PREFIX: wfw

```

Example:

```bash

  awx-json-send-workflows workflow/wfw_pve_v0.1.0.json

```

### `awx-json-get-playbook`

Usage:

```bash

  awx-json-get-playbook [JSON_LIST]

```

Get _playbook_ from one or more _job template_ `.json` file.

```bash

  awx-json-get-playbook job_template/wst_apt_v1.1.0.json

  main.yml

```


### `awx-json-job-template-add-suffix`


Usage:

```bash

  awx-json-job-template-add-suffix

```

Add suffix to job_template with project and show diff

Example:

```bash


  awx-json-job-template-add-suffix job_template/wst_wol_v0.1.0.json hotfix

	RENAME FROM job_template/wst_wol_v0.1.0.json TO job_template/wst_wol_v0.1.0-hotfix.json

			"name": "wst_wol_v0.1.0",             |         "name": "wst_wol_v0.1.0-hotfix",

	REPLACE ansible_wst_v1.0.0 WITH ansible_wst_v1.0.0-hotfix

	DIFF job_template/wst_wol_v0.1.0.json WITH job_template/wst_wol_v0.1.0-hotfix.json

			"name": "wst_wol_v0.1.0",                 |     "name": "wst_wol_v0.1.0-hotfix",
			"project": "ansible_wst_v1.0.0",          |     "project": "ansible_wst_v1.0.0-hotfix",


```


### `awx-json-inventory-get-csv`

Usage:

```bash

  awx-json-inventory-get-csv INVENTORY_JSON [REGEX]

```

Get `.csv` with _hosts_ of each _group_ of _inventory_ `.json` file.
Optionally filter _groups_ by regular expression.

  inventory_host,description,ansible_host,primary_maccadress,inventory_serial

Example:

```bash

  awx-json-inventory-get-csv inventory/wst.json

  'wst01dev01','imported','192.168.1.11','ca:fe:ca:fe:00:3d','S12345678'
  'wst01dev02','imported','192.168.1.12','fa:fa:fa:02:ac:dc','S12345679'

```


### `awx-json-modify-verbosity`

Usage:

```bash

  awx-json-modify-verbosity JSON VERBOSITY

```

Modify verbosity in `.json` _file_.

```bash

  awx-json-modify-verbosity pve_kvm.json 1

	BACKUP job_template/pve_kvm.json TO /tmp/tmp.YKCruLt5xb.json
    "verbosity": 2,                      |     "verbosity": 1,

```

### `awx-json-get-limit`

Usage:

```bash

  awx-json-get-limit JSON

```

Get _limit_ of _job_template_ or _workflow_ `.json`.

Example:

```bash

  awx-json-get-limit job_template/ipa_sss_syn_v0.1.0.json

  ipa

```


### `awx-json-workflow-add-suffix`


Usage:

```bash

  awx-json-workflow-add-suffix WORKFLOW_JSON

```

Add suffix to workflow with dependencies and show diff

Example:

```bash

  awx-json-workflow-add-suffix workflow/wfw_pve_v0.2.0.json hotfix

RENAME FROM workflow/wfw_pve_v0.2.0.json TO workflow/wfw_pve_v0.2.0-hotfix.json

  "name": "wfw_pve_v0.2.0"               |  "name": "wfw_pve_v0.2.0-hotfix"

  REPLACE wfw_ftp_v0.2.0 WITH wfw_ftp_v0.2.0-hotfix
  REPLACE wfw_git_v0.1.0 WITH wfw_git_v0.1.0-hotfix
  REPLACE wfw_cdn_v0.2.0 WITH wfw_cdn_v0.2.0-hotfix
  REPLACE wfw_apt_v1.1.3 WITH wfw_apt_v1.1.3-hotfix

  DIFF workflow/wfw_pve_v0.2.0.json WITH workflow/wfw_pve_v0.2.0-hotfix.json

  "unified_job_name": "wfw_ftp_v0.2.0",  |  "unified_job_name": "wfw_ftp_v0.2.0-hotfix",
  "unified_job_name": "wfw_git_v0.1.0",  |  "unified_job_name": "wfw_git_v0.1.0-hotfix",
  "unified_job_name": "wfw_cdn_v0.2.0",  |  "unified_job_name": "wfw_cdn_v0.2.0-hotfix",
  "unified_job_name": "wfw_apt_v1.1.3",  |  "unified_job_name": "wfw_apt_v1.1.3-hotfix",

  "name": "wfw_pve_v0.2.0"               |  "name": "wfw_pve_v0.2.0-hotfix"

```


### `awx-json-get-description`

Usage:

```bash

  awx-json-get-description JSON

```

Get _description_ of _job_template_ or _workflow_ `.json`.

Example:

```bash

  awx-json-get-description job_template/ipa_sss_tol_v0.2.4.json

  Install and configure FreeIPA Tools with API Queue Syn

```


### `awx-json-rename.bak`

Usage:

```bash

  awx-json-rename.bak JSON NEW_NAME

```

Rename `.json` file and replace internal `name`.

```bash

  awx-json-rename.bak pve_kvm.json pve_vms_kvm

```

### `awx-json-receive-credential`

Usage:

```bash

  awx-json-receive-credential CREDENTIAL_NAME

```

Get _credential_ from _AWX_ and save in `.json` file.

```bash

  awx-json-receive-credential ssh_ansible

```


### `awx-json-workflow-get-url`

Usage:
  awx-json-workflow-get-url

Description


### `awx-json-inventory-get-inventory-name`

Usage:

```bash

  awx-json-inventory-get-inventory-name [INVENTORY_JSON]

```

Get name of _inventory_source_ from inventory `.json` file.

Example:

```bash

  awx-json-inventory-get-inventory-name inventory/pve.json

  inventory_pve

```


### `awx-json-inventory-get-inventory-source`

Usage:

```bash

  awx-json-inventory-get-inventory-source [INVENTORY_JSON]

```

Get _inventory_source_ from inventory `.json` file.

Example:

```bash

  awx-json-inventory-get-inventory-source inventory/pve.json

  inventory_v0.1.0

```


### `awx-json-workflow-nodes`


Usage:

```bash

  awx-json-workflow-nodes SRC_YML AWX_YML

```

Show _workflow_ nodes grouped by common nodes

Example:

```bash

	awx-json-workflow-nodes workflow/wfw_pve_vms_v0.2.2.json

	wfw_vms_ans_v0.2.4  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_ans_v0.2.2
	wfw_vms_ftp_v0.2.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_ftp_v0.2.0
	wfw_vms_pxe_v0.5.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_pxe_v0.5.0
	wfw_vms_log_v0.1.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_log_v0.1.0
	wfw_vms_git_v0.1.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_git_v0.3.1
	wfw_vms_prn_v0.1.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_prn_v0.1.0
	wfw_vms_cdn_v0.2.2  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_cdn_v0.2.0
	wfw_vms_apt_v1.10.4 apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_apt_v1.10.2
	wfw_vms_rep_v0.1.1  apt_set_v0.1.1 vms_acs_v0.1.0 vms_cin_v0.2.0 vms_rep_v0.1.0

```


## `awx log` commands


### `awx-log-version2png`


Usage:

```bash

  awx-log-version2png [STDOUT_JOB_FILE]

```

Plot _hosts_ versions group by network from _stdout_ job file.

Example:

```bash

  awx-log-version2png 12345.log

```

### `awx-log-get-host-last-job`

Usage:

```bash

  awx-log-get-host-last-job JOB_LOG_FILE

```

Get last job of awx_history_stdout in job `.log` file.

Example:

```bash

  awx-log-get-host-last-job 12345.log

	wstdev01 wfw_wst_upd_v1.2.0
	wstdev02 wfw_wst_upd_v1.3.0

```


### `awx-log-host-get-data`

Usage:

```bash

  awx-log-host-get-data JOB_LOG_PATTERN

```

Get group, description, inventory_host and last job of awx_history_stdout in multiples job `.log` files.

Example:

```bash

  awx-log-host-get-data 12*.log

	dev wstdevelop01 wstdev01 wfw_wst_upd_v1.2.0
	dev wstdevelop02 wstdev02 wfw_wst_upd_v1.3.0

```


## `awx organization` commands


### `awx-organization-create`

Usage:

```bash

  awx-organization-create NAME [DESCRITION]

```bash

Create _organization_

```bash

  awx-organization-create example

```


## `awx pass` commands


### `awx-pass`

Usage:

```bash

  awx-pass ENVIRONMENT

```

Get _AWX_ credentials for environment according `~/.awx-config`.

Example:

```bash

  awx-pass develop

```


## `awx plot` commands


### `awx-plot-host-versions`

Usage: gnuplot [OPTION] ... [FILE]
for X11 options see 'help X11->command-line-options'
  -V, --version
  -h, --help
  -p  --persist
  -s  --slow
  -d  --default-settings
  -c  scriptfile ARG1 ARG2 ... 
  -e  "command1; command2; ..."
gnuplot 5.4 patchlevel 1

### `awx-plot-host-versions.bak`

Usage: gnuplot [OPTION] ... [FILE]
for X11 options see 'help X11->command-line-options'
  -V, --version
  -h, --help
  -p  --persist
  -s  --slow
  -d  --default-settings
  -c  scriptfile ARG1 ARG2 ... 
  -e  "command1; command2; ..."
gnuplot 5.4 patchlevel 1

## `awx project` commands


### `awx-project-create`

Usage:
  awx-project-create

Description


### `awx-project-disable-scm-clean`

Usage:

```bash

  awx-project-disable-scm-clean PROJECT_NAME

```

Set `scm_clean = False` in _project_ attributes to disable update
repository when _job_template_ launch.

Example:

```bash

  awx-project-disable-scm-clean myproject

```


### `awx-project-get-last-job`

Usage:
  awx-project-get-last-job

Description


### `awx-project-get-url`

Usage:
  awx-project-get-url

Description


### `awx-project-get-variable`

Usage:

```bash

  awx-project-get-variable project_name [variable_name]

```

Get variable value from _project_.


### `awx-project-list-name`

Usage:
  awx-project-list-name

List all projects


### `awx-project-modify-scm-branch`

Usage:
  awx-project-modify-scm-branch

Description


### `awx-project-update`

Usage:
  awx-project-update

Description


### `awx-project-delete`

Usage:

```bash

  awx-project-delete PROJECT_NAME

```

Delete _project_ by name.

```bash

  awx-project-delete ansible_wst_v0.1.0

```


### `awx-project-sync`

Usage:

```bash

  awx-project-sync PROJECT_NAME

```

Update _project_ when `scm_revision` don't match with last _commit_ of current _branch_

Example:

```bash

  awx-project-sync ansible_freeipa_sssd_tools_v0.4.0

    GET SCM_REVISION FROM PROJECT ansible_freeipa_sssd_tools_v0.4.0
    PROJECT ansible_freeipa_sssd_tools_v0.4.0 OK LAST_COMMIT (ce779df11eda84e977c1926bf2ce34bfedcf6327) = SCM_REVISION (ce779df11eda84e977c1926bf2ce34bfedcf6327)

  NEXT_TAG=v0.2.2 awx-project-sync

    GET SCM_REVISION FROM PROJECT ansible_freeipa_sssd_tools_v0.2.2
    BRANCH feature/start-restart-services LAST COMMIT (ce779df1) != PROJECT SCM REVISION (ddcb8feb)
    UPDATE PROJECT ansible_freeipa_sssd_tools_v0.2.2
    Resource changed.
    ===== ==== ======== ======= ==========
     id   name scm_type scm_url local_path
    ===== ==== ======== ======= ==========
    24546 N/A  N/A      N/A     N/A
    ===== ==== ======== ======= ==========
    WAITING UPDATE ...
    GET SCM_REVISION FROM PROJECT ansible_freeipa_sssd_tools_v0.2.2
    BRANCH feature/start-restart-services LAST COMMIT (ce779df1) != PROJECT SCM REVISION (ddcb8feb)
    UPDATE PROJECT ansible_freeipa_sssd_tools_v0.2.2
    Resource changed.
    ===== ==== ======== ======= ==========
     id   name scm_type scm_url local_path
    ===== ==== ======== ======= ==========
    24547 N/A  N/A      N/A     N/A
    ===== ==== ======== ======= ==========
    WAITING UPDATE ...
    GET SCM_REVISION FROM PROJECT ansible_freeipa_sssd_tools_v0.2.2
    [ERROR] TOO MANY UPDATES, CANCEL SYNC

```


## `awx role` commands


### `awx-role-list-job-template`

Usage:

\'\'\'bash

  awx-role-list-job-template JOB_TEMPLATE [TEAM]

\'\'\'

List

Example:

\'\'\'bash

  awx-role-list-job-template pve-udp-v0.1.0 devops

\'\'\'


## `awx setting` commands


### `awx-setting-get-custom-login-info`

Usage:

```bash

  awx-setting-get-custom-login-info



```

Get `CUSTOM_LOGIN_INFO from _AWX_ settings.

Return:



```

  DEVELOP



```

### `awx-setting-get-tower-url-base`

Usage:

```bash

  awx-setting-get-tower-url-base



```

Get `TOWER_URL_BASE` from _AWX_ settings.

Return:



```

  https://awx.local/



```

### `awx-setting-list-system`

Usage:

```bash

  awx-setting-list-system

```

List _AWX_ settings


## `awx shell` commands


### `awx-shell-check`

Usage:

```bash

  awx-shell-check

```

Check syntax using shellcheck. Group errors by code in result.

Example:

```bash

  awx-shell-check

awx-shell-check                               SC2034
awx-team-create                               SC2034 SC2236

```


## `awx team` commands


### `awx-team-associate-from-csv`

Usage:

```bash

  awx-team-associate-from-csv CSV

```

Associate _user_ to _team_ specified in `.csv` file.

Example:

```bash

  awx-team-associate-from-csv awx-users.csv

```bash


### `awx-team-associate`

Usage:

```bash

  awx-team-associate USERNAME [TEAM]

```

Associate _user_ to _team_.

Example:

```bash

  awx-team-associate junior devops

```bash


### `awx-team-create`

Usage:
  awx-team-create

Description


## `awx user` commands


### `awx-user-modify-is-superuser`

Usage:

```bash

  awx-user-modify-is-superuser USERNAME [SUPERUSER]

```

Modify user type as SysAdmin

Example:

```bash

  awx-user-modify-is-superuser elliot

  awx-user-modify-is-superuser dom false

```


### `awx-user-get`

Usage:

```bash

  awx-user-get USERNAME

```

Get user from _AWX_

Example:

```bash

awx-user-get admin

  == ======== ================= ========== ========= ============ =================
  id username      email        first_name last_name is_superuser is_system_auditor
  == ======== ================= ========== ========= ============ =================
   1 admin    admin@example.com Sys        Admin     true         false
  == ======== ================= ========== ========= ============ =================

```


### `awx-user-create`

Usage:
  awx-user-create

Description


### `awx-user-delete`

Usage:
  awx-user-delete

Description


### `awx-user-list`

Usage:

```bash

  awx-user-list

```

List all _users_.


## `awx vault` commands


### `awx-vault-check`


Usage:

```bash

  awx-vault-check YAML

```

Check if the _AWX vaults_ are unbalanced in the _YAML_ file and exit
with 0 when balanced or exit with error showing unbalanced pattern
totals.

Expected format:

```

variable_name:
  __ansible_vault: |
          $ANSIBLE_VAULT;1.2;AES256;dev
          31415926535897932384626433832795028841971693993751058209749445923078164062862089
          98628034825342117067982148086513282306647093844609550582231725359408128481117450
          28410270193852110555964462294895493038196442881097566593344612847564823378678316
          52712019091456485669234603486104543266482133936072602491412737245870066063155881
          7488

```

Example:

```bash

  awx-vault-check group_vars/all.yml

  [ERROR] UNBALANCED (3) __ansible_vault VS (4) $ANSIBLE_VAULT;[0-9.]+;AES256;[a-z]+$

```


### `awx-vault2yml`


Usage:

```bash

  awx-vault2yml YAML

```

Convert _AWX vault_ format to _YAML_ format.

Example:

```bash

  awx-vault2yml host_vars/spvedev01.yml

```


## `awx vault2yml` commands


### `awx-vault2yml`


Usage:

```bash

  awx-vault2yml YAML

```

Convert _AWX vault_ format to _YAML_ format.

Example:

```bash

  awx-vault2yml host_vars/spvedev01.yml

```


## `awx version` commands


### `awx-version-get-files`

Usage:
  awx-version-get-files

Description


### `awx-version-get-status`

Usage:
  awx-version-get-status

Description


### `awx-version-get-urls`

Usage:
  awx-version-get-urls

Description


### `awx-version-get-urls-md`

Usage:
  awx-version-get-urls-md

Description


### `awx-version-list`

Usage:
  awx-version-list

Description


### `awx-version-send`

Usage:
  awx-version-send

Description


### `awx-version-tar-dependencies`

Usage:
  awx-version-tar-dependencies

Description


## `awx workflow` commands


### `awx-workflow-job-get`

Usage:
  awx-workflow-job-get

Description


### `awx-workflow-job-summary`

Usage:

```bash

  awx-workflow-job-summary WORKFLOW_JOB_ID

```

Get summary of `workflow_job` execution.

Example:

```bash

  awx-workflow-job-summary

  awx-workflow-job-summary 143

  === ================== ====== ========== ======================== =======
  id         name         type    status           created          elapsed
  === ================== ====== ========== ======================== =======
  144 vms_bak_dsk_v0.3.0 job    successful 2021-11-30T18:54:13.7518 19.166
  146 vms_rbt_wfr_v0.1.0 job    successful 2021-11-30T18:54:33.5181 185.63
  147 vms_apt_upd_v0.1.0 job    successful 2021-11-30T18:57:39.7561 14.068
  149 vms_crn_rsy_v0.4.0 job    successful 2021-11-30T18:57:54.4358 18.851
  151 vms_nfs_own_v0.4.0 job    successful 2021-11-30T18:58:13.9210 24.452
  === ================== ====== ========== ======================== =======

```


### `awx-workflow-job-get-hosts`


Usage:

```bash

  awx-workflow-job-get-hosts WORKFLOW_JOB_ID

```

Get enabled hosts of limit groups from workflow_job

Example:

```bash

  awx-workflow-job-get-hosts 123

  dev wstdev01
  dev wstdev02
  dev wstdev03
  lab wstlab01
  lab wstlab02

```


### `awx-workflow-job-get-limit`

Usage:

```bash

  awx-workflow-job-get-limit WORKFLOW_JOB_ID

```

Get limit of workflow_job.

Example:

```bash

  awx-workflow-job-get-limit 123

  dev
  lab

```


### `awx-workflow-job-overview`

Usage:

```bash

  awx-workflow-job-overview WORKFLOW_JOB_ID

```

Get overview of _workflow job_ execution and nodes.

Example

```bash

	awx-workflow-job-overview 143

	| 143 | wfw_vms_bak_v0.4.1 | successful |  265.368 | 100.00 % | 2021-11-30 | 15:54:13 | 15:58:38 | 00:04:25 | dev |
	| 144 | vms_bak_dsk_v0.3.0 | successful |   19.166 |   7.00 % | 2021-11-30 | 15:54:14 | 15:54:33 | 00:00:19 | dev |
	| 146 | vms_rbt_wfr_v0.1.0 | successful |   185.63 |  69.00 % | 2021-11-30 | 15:54:33 | 15:57:39 | 00:03:05 | dev |
	| 147 | vms_apt_upd_v0.1.0 | successful |   14.068 |   5.00 % | 2021-11-30 | 15:57:40 | 15:57:54 | 00:00:14 | vms |
	| 149 | vms_crn_rsy_v0.4.0 | successful |   18.851 |   7.00 % | 2021-11-30 | 15:57:54 | 15:58:13 | 00:00:18 | vms |
	| 151 | vms_nfs_own_v0.4.0 | successful |   24.452 |   9.00 % | 2021-11-30 | 15:58:14 | 15:58:38 | 00:00:24 | vms |

```


### `awx-workflow-job-status`


Usage:

```bash

  awx-workflow-job-status WORKFLOW_JOB_ID

```

Show status of _workflow job_

```bash

  awx-workflow-job-status 678

  ========== ====== =======
    status   failed elapsed
  ========== ====== =======
  successful  false 434.405
  ========== ====== =======

```

### `awx-workflow-get-last-job`

Usage:
  awx-workflow-get-last-job

Description


### `awx-workflow-get-variable`

Usage:
  awx-workflow-get-variable

Description


### `awx-workflow-job-launch`

Usage:

```bash

  awx-workflow-job-launch WORKFLOW



```

Launch _workflow_

Example:

```bash

  awx-workflow-job-launch wfw_pve



```


### `awx-workflow-list`

Usage:

```bash

  awx-workflow-list



```

List all _workflows_.


### `awx-workflow-delete`

Usage:

```bash

  awx-workflow-delete WORKFLOW

```

Delete _workflow_.

```bash

  awx-workflow-delete wfw_pve_pvs_v0.2.2

```


## `awx yml` commands


### `awx-yml-diff`


Usage:

```bash

  awx-yml-diff SRC_YML AWX_YML

```

Compare and merge AWX group variables with local YAML group file.

Example:

```bash

  awx-yml-diff group_vars/prn.yml group_vars/ftp.yml

  | `key                      ` |   `group_vars/prn.yml  `   |   ` group_vars/ftp.yml  `   |
  |-----------------------------|----------------------------|-----------------------------|
  | `             ansible_host` |   `       {{ sprn_ip }}`   | **`        {{ sftp_ip }}`** |
  | `          apt_setup_proxy` |   `                true`   |   `                 true`   |
  | `       apt_setup_proxy_ip` |   `      {{ subnet }}.1`   |   `       {{ subnet }}.1`   |
  | `         apt_setup_source` |   `                true`   |   `                 true`   |
  | `       cups_lpadmin_users` |   `            ["root"]`   | **`                 null`** |
  | `   sftp_client_local_user` |   `                null`   | **`{{ sftp_local_user }}`** |

```

