---
fontsize: 8pt
code-block-font-size: 8pt
classoption: landscape
---

# `awx` commands


## `awx adhoc` commands


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
  awx-adhoc-shell-grep-log-sssd

Description


### `awx-adhoc-shell-hostnamectl-status`

Usage:
  awx-adhoc-shell-hostnamectl-status

Description


### `awx-adhoc-shell-ping-ip`

Usage:
  awx-adhoc-shell-ping-ip

Description


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


### `awx-adhoc-stdout`

Usage:
  awx-adhoc-stdout

Description


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


## `awx config` commands


### `awx-config`


Usage:

  awx-config [branch]

Overwrite `~/.tower_cli.cfg` with enviroment config using
`~/.awx-config` and `pass` command for retrieve passwords to use
with `awx-cli`.

First copy `.awx-config` to `~/.awx-config`, customize variables
according your enviroment.

Example:

  awx-config develop


## `awx grant` commands


### `awx-grant-filter`

Usage:

```bash

  awx-grant-filter ROLE_FILE TEAM_NAME

```

Filter grants from ROLE_FILE and generate awx-cli role grant

Example:

```bash

  awx-grant-filter role/devops.csv support

```


### `awx-grant-inventory`

Usage:
  awx-grant-inventory

Description


### `awx-grant-job-template`

Usage:
  awx-grant-job-template

Description


### `awx-grant-json-all`

Usage:
  awx-grant-json-all

Description


### `awx-grant-project`

Usage:
  awx-grant-project

Description


### `awx-grant-workflow`

Usage:
  awx-grant-workflow

Description


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


## `awx group` commands


### `awx-group-get-variable`

Usage:
  awx-group-get-variable

Description


### `awx-group-modify-variable`

Usage:
  awx-group-modify-variable

Description


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
  awx-host-associate

Description


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
  awx-host-get-by-description

Description


### `awx-host-get-ip`

Usage:

  awx-host-get-ip [HOST]

Get IP Address from `ansible_host` in host_vars of AWX.

Example:

  awx-host-get-ip gateway

  10.1.2.1


### `awx-host-get-recent-jobs`

Usage:
  awx-host-get-recent-jobs

Description


### `awx-host-get-variable`

Usage:

```bash

  awx-host-get-variable HOST [INVENTORY]



```

Get _host_ variables from _inventory_

Example:

  Implicit _inventory_ from _host_:

```bash

  awx-host-get-variable pve-dev01



```

  Explicit _host_ and _inventory_:

```bash

  awx-host-get-variable dev01 pve



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

## `awx inventory` commands


### `awx-inventory-batch-update`

Usage:
  awx-inventory-batch-update

Description


### `awx-inventory-create`

Usage:
  awx-inventory-create

Description


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
  awx-inventory-source-create

Description


### `awx-inventory-source-get-project`

Usage:
  awx-inventory-source-get-project

Description


### `awx-inventory-source-get-variable`

Usage:
  awx-inventory-source-get-variable

Description


### `awx-inventory-source-modify-variable`

Usage:
  awx-inventory-source-modify-variable

Description


### `awx-inventory-source-set-project`

Usage:
  awx-inventory-source-set-project

Description


### `awx-inventory-source-update`

Usage:
  awx-inventory-source-update

Description


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


## `awx job` commands


### `awx-job-template-create`

Usage:

```bash

  awx-job-template-create JOB_TEMPLATE PROJECT_NAME PLAYBOOK_FILE [YAML]



```

Create _job template_ and associate default credentials in _AWX_.


### `awx-job-template-get`

Usage:
  awx-job-template-get

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


## `awx json` commands


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
  awx-json-rename

Description


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


### `awx-json-send-projects`

Usage:
  awx-json-send-projects

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

### `awx-json-worklow-get-url`

Usage:
  awx-json-worklow-get-url

Description


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


## `awx organization` commands


### `awx-organization-create`

Usage:
  awx-organization-create

Description


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


## `awx project` commands


### `awx-project-create`

Usage:
  awx-project-create

Description


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


### `awx-project-modify-scm-branch`

Usage:
  awx-project-modify-scm-branch

Description


### `awx-project-update`

Usage:
  awx-project-update

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


### `awx-project-list-name`

Usage:
  awx-project-list-name

List all projects


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

Check syntax using shellcheck.


## `awx team` commands


### `awx-team-create`

Usage:
  awx-team-create

Description


## `awx user` commands


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


### `awx-user-modify-is-superuser`

Usage:
  awx-user-modify-is-superuser

Description


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


### `awx-workflow-get-last-job`

Usage:
  awx-workflow-get-last-job

Description


### `awx-workflow-get-variable`

Usage:
  awx-workflow-get-variable

Description


### `awx-workflow-job-get`

Usage:
  awx-workflow-job-get

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


### `awx-workflow-job-summary`

Usage:
  awx-workflow-job-summary

Description

