# [_ANSIBLE_TOOLS CHANGELOG_](https://gitlab.com/gcoop-libre/ansible_tools.git)

 - this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html)

## [`Unreleased - 2023-02-10`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.4.0...develop)


## [`v0.4.0 - 2023-02-10`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.3.0...v0.4.0) _revoke grant permissions if exists deploy/revoke.awx file_

### `awx-common`

- better filter for role list team functions
- add function role_list_team_table
- add function role_list_team_csv
- add function role_list_team_workflow
- add function role_list_team_job_template
- add function role_list_team_inventory
- add function role_list_team_project
- add function role_list_team_credential

### `awx-credential-list`

- get sorted names of all credentials

### `awx-deploy-grant`

- add usage on -h or --help
- add die error when get team

### `awx-deploy-revision`

- fix typo, replace REVOKET_FILE with REVOKE_FILE
- revoke permission to a team if exits awx/revoke.awx
- clone documentation repository only once
- prevent grep from exiting in case of nomatch
- fail when PROJECT_VERSION is empty
- clean temporal files only when DOC_CLEAN=1
- add ls for debug in cleanup
- clean temporary files on die and normal exit
- enable CHECK_PROJECT_NAME and CHECK_BRANCH_VERSION by default

### `awx-grant-inventory`

- disable SC2086 for shellcheck lint

### `awx-grant-team`

- set -x when BASH_DEBUG is defined

### `awx-host-list-inventory-group`

- use group instead of group id as parameter

### `awx-inventory-list`

- only get sorted names of all inventories

### `awx-inventory-role-list`

- get user and teams permissions from an inventory

### `awx-job-template-list`

- get sorted names of all job templates

### `awx-job-template-role-list`

- get user and teams permissions from an job template

### `awx-json-bump-version`

- define default VERSION as PATCH

### `awx-project-list`

- get sorted names of all projects

### `awx-revoke-team`

- add script for revoke permission to a team from file

### `awx-role-list-all`

- list all permissions in CSV or Markdown table iterating all resources

### `awx-role-list-credential`

- allow to show multiple permissions of the same resource
- show CSV or MD Table using role_list_team_credential function

### `awx-role-list-inventory`

- allow to show multiple permissions of the same resource
- show CSV or MD Table using role_list_team_inventory function

### `awx-role-list-job-template`

- improve help description and example
- allow to show multiple permissions of the same resource
- show CSV or MD Table usign role_list_team_job_template function

### `awx-role-list-project`

- allow to show multiple permissions of the same resource
- show CSV or MD Table using role_list_team_project function

### `awx-role-list-workflow`

- allow to show multiple permissions of the same resource
- show CSV or MD Table using role_list_team_workflow function

### `awx-team-list`

- get sorted names of all teams

### `awx-team-users-list`

- get all usernames of a team

### `awx-workflow-list`

- only get sorted names of all workflows

### `awx-workflow-role-list`

- get user and team permissions from a workflow

### `gitignore`

- add *.dot and *.png

## [`v0.3.0 - 2022-10-03`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.2.0...v0.3.0) _scripts that automate the deployment of an AWX release and various other improvements_

### `ansible-inventory-test`

- fix syntax according to shellcheck

### `awx-adhoc-shell`

- define default values when variables is undefined

### `awx-adhoc-stdout`

- add usage example and minor fix to shell-lint

### `awx-common`

- send messages to stderror on die
- define grant_inventory function as wrap of grant_inventory_use
- validate if ~/.awx-config is a text plain
- add DEFAULT_CREDENTIAL_TYPE and DEFAULT_CREDENTIAL_USER in config example
- add functions awx_cfg_read, config_read, dependencies_verify, config_verify and main
- remove debug on die, add conditional to show usage on error
- remove execution debug
- improve debug on die
- add debug in die
- enable debug
- fix undefined TERM
- define TERM when is undefined
- fixes according shell-lint
- add usage before exit on die call function

### `awx-config`

- add defaults grant permissions example config
- hide pass path when verify if exists
- replace admin with current user when generate example config
- prevent backslashes when read AWX_PASS
- replace /home/awx with current user home when generate config
- update examples in config and usage
- invoke pass command when PASSWORD_STORE_DIR is defined
- show environment, user and host before try connect
- inform when pass command not found
- invoke pass command only when pass command exists
- read Password when AWX_PASS is undefined or not found in pass
- allow overwrite config variables with environment variables
- update config example
- fix typo replace AWX_USER with SUPERUSER
- verify http status code, show more data when user is superuser

### `awx-config-clean`

- remove ~/.tower_cli.cfg to prevent unauthorized access

### `awx-credential-create`

- fix invalid ssh_key_data
- add example use of PASSWORD_STORE_DIR environment variable
- validate ssh key before use
- disable shellcheck SC2181
- create credential from pass or from file

### `awx-credential-delete`

- relete credential by name

### `awx-credential-modify`

- fix invalid ssh_key_data
- disable shellcheck SC2181
- modify existent credential from pass or from file

### `awx-deploy-changelog`

- update usage with defaults values of AWX_DIR, REVISION and CHANGELOG
- show diff when CHANGELOG already exists and return to previous branch
- define function changelog_generate to redirect stdout to CHANGELOG file
- add workflow in resources section
- mask credentials in GIT_URL
- define output file DIR_NAME-REVISION.md when CHANGELOG is undefined
- use current directory when DIR_NAME is undefined
- hide git checkout output
- use last tag when REVISION is undefined
- set -x when BASH_DEBUG is defined
- checkout revision when it is not a tag
- update usage, better variables defaults
- generate markdown output details of the specific revision

### `awx-deploy-delete`

- delete all resources definined in deploy/update.awx

### `awx-deploy-diff`

- prevent git pull when DONT_PULL when the environment variable is defined
- sort output using awx-deploy-sort
- add suffix .awx in OUT deploy file
- prevent execute git pull when revision is a tag
- update usage and example
- get git revision diff to generate deploy/update.awx

### `awx-deploy-grant`

- prevent git pull when DONT_PULL when the environment variable is equal to 0
- add DONT_PULL, defaults in help and better error log
- generate deploy/grant.awx with default permissions

### `awx-deploy-revision`

- add quote inside JOB_GROUP to prevent shellcheck error SC2295
- verify job template documentacion and fail when not found by default (DOC_CHECK=1)
- replace hardcoded origin with ORIGIN variable when execute git reset --hard
- prevent execute git pull and git fetch --tags when DONT_PULL and DONT_FETCH_TAGS are enabled
- validate project version match with version defined in scm_branch
- validate project name match with project filename
- add git reset --hard when GIT_RESET_HARD_REVISION is defined
- add --all to git fetch
- replace git reset with git pull --allow-unrelated-histories to prevent error fatal: refusing to merge unrelated histories
- add git reset to prevent error fatal: refusing to merge unrelated histories
- set -x when BASH_DEBUG is defined
- remove sort to respect workflow deploy order defined in deploy file
- search and send workflows defined in deploy file
- fix jq syntax error when get scm_revision and scm_branch
- send teams defined in deploy
- define ORGANIZATION based on DEFAULT_ORGANIZATION
- grant permissions from a file to a team
- associate users to a team from file
- don't fail when deploy file not exists
- prevent execute git pull when revision is a tag
- exit immediately if a command exits with a non-zero status
- failing when the declared credential was not found
- replace commands to get inventory_source and inventory_name from json with direct jq invocation
- add die on failed (send|update) project, inventory and job_template
- fix execution inventory_source update with capture error
- update inventory_source after send inventory
- wrap awx-cli send to prevent errors
- replace PROJECT with PROJECT_NAME in project_update
- replace PROJECT_SOURCE with INVENTORY_SOURCE when send inventory dependency
- get and send inventory_source before send inventory
- add verbose in awx-cli send project
- always update project after send project
- add verbose log before execute awx-cli send
- send inventory from deploy/update.awx
- update project after send project
- remove AWX_DEBUG
- put AWX_DEBUG to end of command line
- use AWX_DEBUG as verbose option in awx-cli send
- allow overwrite DEPLOY_DIR with 'deploy' as default
- fail when ~/.tower_cli.cfg don't exists
- delete temporal debug
- replace awx-json-send-job-templates with awx-cli
- replace AWX_DEBUG with -vv in send project
- define AWX_DEBUG, calculate hash and show project
- remove debug and revert invalid logic
- add git log last commit and ls to current project
- add pwd and ls for debug
- fix json project file variable
- validate json exists before send project
- replace awx-json-send-projects with awx-cli send
- remove execution debug
- remove usage to debug execution
- enable bash debug
- send all JSONs defined in deploy/update.awx to AWX

### `awx-deploy-sort`

- add workflow at the end of file sort
- remove trailing whitespace
- add team in sort list
- sort awx dependencies lines in a file

### `awx-grant-filter`

- define *use* as default permission

### `awx-grant-inventory`

- update usage with example and set use as default permission
- fixes according shell-lint

### `awx-grant-inventory-admin`

- fixes according shell-lint

### `awx-grant-inventory-use`

- fix syntax according to shellcheck

### `awx-grant-job-template`

- add usage and fix syntax according to shellcheck

### `awx-grant-json-all`

- update usage, fix syntax according to shellcheck, remove duplicated code, add validations

### `awx-grant-project`

- add usage example, define use as default permission and fixes for shell-lint

### `awx-grant-team`

- grant permissions from grant file to a team

### `awx-grant-workflow`

- add usage and fix syntax according to shellcheck

### `awx-group-diff-variables`

- show YAML filename

### `awx-group-get-variable`

- use `all` as default variable

### `awx-help`

- update AWX Help

### `awx-host-associate`

- fix syntax according to shellcheck

### `awx-host-disable`

- fix syntax according to shellcheck

### `awx-host-get-by-description`

- add example in usage and fix syntax according to shellcheck

### `awx-host-get-csv`

- fix syntax according to shellcheck

### `awx-host-get-last-job-summary`

- add awx_cfg_read to get login variables

### `awx-host-get-recent-jobs`

- fix syntax according to shellcheck

### `awx-host-get-variable`

- update usage and example
- use key=all to get all variables and allow inventory as the third argument

### `awx-host-list`

- align columns in usage example
- list all host in inventory in 3 columns

### `awx-install-apt`

- install ansible tools dependencies using apt on Debian based distros

### `awx-inventory-create`

- fix syntax according to shellcheck and update usage

### `awx-inventory-delete`

- delete inventory by name

### `awx-inventory-source-create`

- fix syntax according to shellcheck and update usage

### `awx-inventory-source-get-variable`

- add usage, simplify key value, and fix syntax according to shellcheck

### `awx-inventory-source-update`

- add usage

### `awx-job-launch`

- launch and monitor job with limit

### `awx-job-overview`

- fix syntax according to shellcheck

### `awx-job-template-create`

- update usage with example, use additional variables and default credentials when defined

### `awx-job-template-delete`

- delete template by name

### `awx-job-template-get`

- fix syntax errors according to shellcheck
- fix typo, replace WORKFLOW_JOB with JOB
- update usage with example
- add awx_cfg_read to get login variables

### `awx-json-get-description`

- get description of job template or workflow from json

### `awx-json-inventory-get-csv`

- replace reserved variable GROUPS with variable TMP

### `awx-json-inventory-get-inventory-name`

- get name from inventory_source of inventory json file

### `awx-json-inventory-get-inventory-source`

- get inventory_source from inventory json file

### `awx-json-receive-credential`

- receive credential without secrets

### `awx-json-send-projects`

- remove execution debug
- remove usage to debug execution
- add description and example in usage

### `awx-json-workflow-get-url`

- fix typo in awx-json-worklow-get-url

### `awx-json-workflow-nodes`

- show workflow nodes grouped by common nodes

### `awx-json-worklow-get-url`

- add awx_cfg_read to get login variables

### `awx-log-get-host-last-job`

- fix syntax according to shellcheck

### `awx-organization-create`

- fix syntax according to shellcheck and update usage

### `awx-pass`

- fix syntax according to shellcheck

### `awx-project-create`

- fix syntax according to shellcheck

### `awx-project-delete`

- delete project by name

### `awx-project-get-variable`

- fix error message when not found project

### `awx-project-list-name`

- fix syntax according to shellcheck

### `awx-project-sync`

- update project when scm_revision don't match with last commit of current branch

### `awx-role-list-job-template`

- fix syntax according to shellcheck and filter job_template

### `awx-shell-check`

- add example in usage, group errors by code in result

### `awx-team-create`

- fix syntax according to shellcheck and fix typo

### `awx-user-modify-is-superuser`

- fix syntax according to shellcheck
- switch superuser permission

### `awx-vault2yml`

- convert AWX vault format to YAML format

### `awx-vault-check`

- check if the AWX Vaults are unbalanced in the YAML file

### `awx-workflow-delete`

- delete workflow by name

### `awx-workflow-job-get`

- fix syntax according to shellcheck
- add awx_cfg_read to get login variables

### `awx-yml-diff`

- compare and merge AWX group variables with local YAML group file

### `bump-version`

- add example in usage, refactor according Semantic Version

### `CHANGELOG`

- add ChangeLog from all versions from v0.1.0 to v0.3.0

### `general`

- add disable=SC1091 and source=/dev/null to prevent shellcheck errors

### `gitignore`

- exclude awx directory

### `gitlab-ci`

- find shellscripts and execute shellcheck using koalaman/shellcheck-alpine:stable

### `git-projects-list`

- fix syntax according to shellcheck

### `grant`

- remove verbose temporal file generation in in awx-grant-filter
- add output example in awx-grant-filter
- add CSV example of ROLE_FILE in awx-grant-filter

### `job2md`

- add awx_cfg_read to get login variables

### `log-ansible-proxmox-kvm`

- add example in usage

### `Makefile`

- hide commands on rules

### `pre-commit`

- migrate syntax in .pre-commit-config.yaml

### `README`

- add howto install dependencies

### `var2vault`

- improve vault generation in diferents formats

### `yq-keys-delete`

- delete variables in top level of yaml based on keys

### `yq-keys-search`

- search variables values in yaml using keys file

### `yq-keys-sort`

- sort variables into yaml based on keys

### `yq-role-name`

- get role_name from meta/main.yml

### `yq-sort-keys`

- fixes according shell-linl
- sort YAML based on keys, allow STDIN use

## [`v0.2.0 - 2021-12-31`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.8...v0.2.0) _happy gnu year with new scripts and lots of fixed scripts_

### `adhoc`

- add awx-adhoc-shell-product-serial

### `ansible-inventory`

- add test inventory hosts file

### `awx-common`

- add ssh_config function to generate minimal ssh config host
- add yaml_host_vars function to generate host vars yaml
- add json_get_asset_type function in json_is_inventory
- add json_get_asset_type parameter in json_is_workflow
- add json_get_asset_type parameter in json_is_job_template
- add json_get_asset_type parameter in json_is_project
- hide errors in json_get_asset_type

### `awx-host`

- update help in awx-host-associate
- fix INVENTORY option in awx-host-associate

### `common`

- add function json_is_workflow
- add function json_is_job_template
- add function json_is_project
- add function json_get_asset_type
- define AWX_CFG_PASS and AWX_CFG_USER using awx_cfg_get function
- replace awx_cfg_get_host with awx_cfg_get general function
- add jq_modify_verbosity
- fix name in get_json_workflows
- add json_get_project
- add json_is_inventory
- refactor grant_workflow, add grant_workflow_execute
- refactor grant_job_template, add grant_job_template_execute and grant_job_template_admin
- refactor grant_project, add grant_project_use and grant_project_admin

### `config`

- add support to use diferent pass repository in each environtment

### `csv`

- add awx-csv-host2all to generate ssh config, host_vars and inventory hosts from csv
- add awx-csv-host-versions2table

### `gitignore`

- exclude *.dat, *.tar.gz, bak/*

### `grant`

- add awx-grant-version
- add awx-grant-workflow-execute
- add grant_job_template_admin
- add awx-grant-project-admin

### `group`

- add awx-group-diff-variables to compare and merge AWX group variables with local YAML group file
- better yaml output in awx-group-get-variable, sort variables, add header and fix vault
- remove title and code markdown output in awx-group-get-variable
- fix shellcheck syntax in awx-group-get-variable
- better help in awx-group-get-variable

### `help`

- update awx-help.md
- update requirements-help.md
- shellchek fix

### `host`

- add awx-host-vars2ssh-config to generate SSH config from host vars YAML file
- add awx-host-replace-ansible-host to replace ansible_host value with FQDN in host_vars YAML files of inventory
- add awx-host-get-last-job-summary to get summary fields last job executed in host
- better yaml output in awx-host-get-variable, sort variables, add header
- allow to use INVENTOR as environment variable (default as PREFIX from HOST)
- fix shellcheck syntax in awx-host-get-variable
- remove title and code markdown output in awx-host-get-variable
- add awx-host-list-inventory-group
- add awx-host-get-description
- add awx-host-get-csv

### `hosts`

- add awx-json-inventory-get-csv

### `inventory`

- better yaml output in awx-inventory-get-variable, sort variables, add header and fix vault
- fix shellcheck syntax in awx-inventory-get-variable
- remove title and code markdown output in awx-inventory-get-variable

### `job`

- add awx-job-template-get-recent-jobs
- add awx-job-status
- add awx-job-overview

### `json`

- add awx-json-inventory2all to generate hosts inventory and ssh config from inventory json
- add awx-json-inventory-group-subgroup-get-hosts to get hosts from subgroup of group of inventory json
- sort output in awx-json-inventory-group-get-hosts
- add awx-json-workflow-add-suffix
- add awx-json-job-template-add-suffix
- add awx-json-modify-verbosity
- add awx-json-inventory-get-variables
- add awx-json-get-playbook
- add awx-json-get-limit
- add awx-json-get-extra-vars
- fix calculate LEN and WIDTH for diff output in awx-json-rename
- add validation, fail on empty NEW_NAME in awx-json-rename
- update help in awx-json-rename
- fix undefined JSON in awx-json-inventory-get-groups

### `log`

- add awx-log-version2png to generate awx-host-versions.dat to plot awx-hosts-versions.png
- add awx-log-host-get-data to get group, description, inventory_host and last job of awx_history_stdout in multiples job log files
- add awx-log-get-host-last-job to get last job of awx_history_stdout in job log

### `pass`

- add support to use diferent pass repository in each environtment

### `plot`

- add awx-plot-host-versions to plot histogram of last job awx history versions from awx-hosts-versions.dat

### `requirements`

- add help in requirements-ssh2https, limit one git origin

### `team`

- add awx-team-associate

### `user`

- add awx-user-get

### `workflow`

- add awx-workflow-job-get-hosts
- add awx-workflow-job-get-limit
- add awx-workflow-job-overview
- add awx-workflow-job-summary
- add awx-workflow-job-status

## [`v0.1.8 - 2021-05-05`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.7...v0.1.8) _general refactor, add new scripts, update and fix many scripts_

### `awx-adhoc`

- remove awx-adhoc-shell-bra
- add awx-adhoc-shell-wol
- add awx-adhoc-shell-vzdump
- add awx-adhoc-shell-sssctl-domain-status
- add awx-adhoc-shell-set-hostname
- add awx-adhoc-shell-qm-start-all
- add awx-adhoc-shell-qm-start
- add awx-adhoc-shell-qm-shutdown
- add awx-adhoc-shell-qm-set-cores
- add awx-adhoc-shell-qm-reboot
- add awx-adhoc-shell-qm-no-boot
- add awx-adhoc-shell-qm-list-stopped
- add awx-adhoc-shell-qm-list-running
- add awx-adhoc-shell-qm-get-cores
- add awx-adhoc-shell-qm-destroy
- add awx-adhoc-shell-qm-clone
- add awx-adhoc-shell-ping-ip
- add awx-adhoc-shell-hostnamectl-status
- add awx-adhoc-shell-grep-log-sssd
- add awx-adhoc-shell-grep-ffox-js
- add awx-adhoc-shell-braa
- add awx-adhoc-shell
- add awx-adhoc-get-stdout

### `awx-common`

- add awx-common

### `awx-grant`

- add awx-grant-inventory-use
- add awx-grant-inventory-admin
- add awx-grant-filter

### `awx-help`

- add awx-help

### `awx-host`

- add awx-host-modify-from-yaml
- add awx-host-get-variable
- add awx-host-enable
- add awx-host-disable-all
- add awx-host-disable
- add awx-host-create
- add awx-host-associate

### `awx-inventory`

- update awx-inventory-list
- update awx-inventory-get-variable
- update awx-inventory-get-id
- add awx-inventory-group-get-hosts

### `awx-job`

- add awx-job-template-get-last-failed-jobs
- add awx-job-template-create
- add awx-job-stdout
- add awx-job-list-running

### `awx-json`

- update awx-json-send-workflows
- update awx-json-inventory-group-get-variables
- update awx-json-inventory-group-get-hosts
- update awx-json-inventory-get-groups
- add awx-json-inventory-group-host-verify
- add awx-json-inventory-group-hosts
- add awx-json-inventory-get-subgroups
- add awx-json-role-team-list
- add awx-json-get-dependencies
- add awx-json-bump-version

### `awx-pass`

- add awx-pass

### `awx-project`

- update awx-project-get-variable
- add awx-project-list-name
- add awx-project-disable-scm-clean

### `awx-role`

- add awx-role-list-job-template

### `awx-setting`

- add awx-setting-list-system
- add awx-setting-get-tower-url-base
- add awx-setting-get-custom-login-info

### `awx-shell`

- add awx-shell-check

### `awx-team`

- add awx-team-create

### `awx-user`

- add awx-user-modify-is-superuser
- add awx-user-list
- add awx-user-delete

### `awx-version`

- add awx-version-send

### `awx-workflow`

- update awx-workflow-list
- update awx-workflow-job-launch
- update awx-workflow-job-get
- add awx-workflow-job-summary

### `bump-version`

- add bump-version

### `git-help`

- add git-help

### `gitignore`

- exclude *.pdf

### `help`

- update awx-help, git-help and requirements-help

### `job2md`

- add job2md

### `requirements-help`

- add requirements-help

## [`v0.1.7 - 2020-12-16`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.6...v0.1.7) _general refactor, add support for help_

### `adhoc`

- rename ad-hoc to adhoc
- add awx-adhoc-stdout
- add awx-adhoc-shell-vzdump
- add awx-adhoc-shell-sssctl-domain-status
- add awx-adhoc-shell-set-hostname
- add awx-adhoc-shell-qm-start-all
- add awx-adhoc-shell-qm-start
- add awx-adhoc-shell-qm-shutdown
- add awx-adhoc-shell-qm-set-cores
- add awx-adhoc-shell-qm-reboot
- add awx-adhoc-shell-qm-no-boot
- add awx-adhoc-shell-qm-list-stopped
- add awx-adhoc-shell-qm-list-running
- add awx-adhoc-shell-qm-get-cores
- add awx-adhoc-shell-qm-destroy
- add awx-adhoc-shell-qm-cores
- add awx-adhoc-shell-qm-clone
- add awx-adhoc-shell-ping-ip
- add awx-adhoc-shell-hostnamectl-status
- add awx-adhoc-shell-grep-log-sssd
- add awx-adhoc-shell-grep-ffox-js
- add awx-adhoc-shell-bra
- add awx-adhoc-shell

### `awx-cli`

- add awx-host-associate-host-vars using regex from host_vars
- add awx-send-json-all to ordered send *.json to AWX
- add awx-grant-workflow and refactor awx-grant-json-all
- add common functions in awx-common
- add awx-grant-json-all to grant project, job_template and workflows, reading *.json files of AWX
- add awx-config, awx-common, .awx-config-example, update README.md
- add wrapper scripts of awx-ad-hoc-shell for safe execution

### `common`

- update awx-common
- add BIN variable to scriptname
- add .gitignore
- add bump-version
- add example .awx-config
- add awx-common

### `config`

- update awx-config

### `git`

- update git-projects-list
- update git-ls-remote-tags
- update git-ls-remote-heads

### `gitignore`

- update

### `grant`

- update awx-grant-workflow
- update awx-grant-project
- update awx-grant-json-all
- update awx-grant-job-template
- update awx-grant-inventory
- add awx-grant-project
- fix default team in awx-grant-job-template

### `group`

- add awx-group-modify-variable
- update awx-group-get-variable
- add awx-group-get-variable

### `help`

- add awx-help.md, git-help.md, requirements-help.md
- add requirements-help
- add git-help
- add awx-help

### `host`

- add awx-host-modify-from-yaml
- update awx-host-modify-variable
- update awx-host-modify-ip
- update awx-host-get-variable
- update awx-host-get-recent-jobs
- update awx-host-get-ip
- update awx-host-get-by-description
- update awx-host-enable-all
- update awx-host-enable
- update awx-host-disable-all
- update awx-host-disable
- update awx-host-associate-host-vars
- update awx-host-associate
- replace exit with die in awx-host-disable-all

### `inventory`

- add awx-inventory-modify-variable
- add awx-inventory-list
- add awx-inventory-get-id
- update awx-inventory-source-update
- update awx-inventory-source-set-project
- update awx-inventory-source-modify-variable
- update awx-inventory-source-get-variable
- update awx-inventory-source-get-project
- update awx-inventory-source-create
- update awx-inventory-set-description
- update awx-inventory-get-variable
- update awx-inventory-create
- update awx-inventory-batch-update
- add awx-grant-inventory, update awx-common
- add awx-inventory-set-description
- add awx-inventory-create

### `inventory_source`

- add awx-inventory-source-set-project
- add awx-inventory-source-get-variable
- add awx-inventory-source-get-project
- add awx-common in awx-inventory-source-create

### `job`

- add awx-job-template-create
- update awx-job-template-get-variable
- update awx-job-template-get-url
- update awx-job-template-get-last-job-status
- update awx-job-template-get-last-job
- update awx-job-template-get
- add awx-job-template-get-variable
- add awx-job-template-get-url
- add awx-job-template-get-last-job-status
- add awx-job-template-get-last-job
- add awx-job-template-get

### `json`

- update awx-json-send-workflows
- update awx-json-get-dependencies
- rename awx-send-json-all to awx-json-send-all
- add awx-json-inventory-group-get-variables
- add awx-json-inventory-group-get-hosts
- add awx-json-inventory-get-groups
- update awx-json-worklow-get-url
- update awx-json-send-projects
- update awx-json-send-job-templates
- update awx-json-send-inventory
- update awx-json-rename
- update awx-json-receive-workflow
- update awx-json-receive-project
- update awx-json-receive-job-template
- update awx-json-receive-inventory
- update awx-json-get-unified-job-name
- update awx-json-get-project
- update awx-json-get-job-template
- update awx-json-get-ask-limit-on-launch
- update awx-json-get-ask-inventory-on-launch
- update awx-json-bump-version-unified-job-name
- update awx-json-bump-version
- add awx-json-worklow-get-url
- add awx-json-send-workflows
- add awx-json-send-projects
- add awx-json-send-job-templates
- add awx-json-send-inventory
- add awx-json-rename
- add awx-json-receive-workflow
- add awx-json-receive-project
- add awx-json-receive-job-template
- add awx-json-receive-inventory
- add awx-json-get-job-template
- add awx-json-get-dependencies
- add awx-json-get-ask-limit-on-launch
- add awx-json-get-ask-inventory-on-launch
- add awx-json-bump-version-unified-job-name
- add awx-json-bump-version

### `organization`

- update awx-organization-create

### `pass`

- update awx-pass

### `project`

- update awx-project-create
- add awx-project-get-last-job
- update awx-project-update
- update awx-project-modify-scm-branch
- update awx-project-get-variable
- update awx-project-get-url
- add awx-project-get-url
- add awx-project-modify-scm-branch

### `README`

- include awx, git and requirements helps

### `requirements`

- update requirements-version-update
- update requirements-ssh2https

### `setting`

- add awx-setting-list-system
- add awx-setting-get-tower-url-base
- add awx-setting-get-custom-login-info

### `shell`

- add awx-shell-check

### `team`

- update awx-team-create

### `user`

- update awx-user-create

### `version`

- update awx-version-tar-dependencies
- update awx-version-send
- update awx-version-list
- update awx-version-get-urls-md
- update awx-version-get-urls
- update awx-version-get-status
- update awx-version-get-files
- add awx-version-tar-dependencies
- add awx-version-send
- add awx-version-list
- add awx-version-get-urls-md
- add awx-version-get-urls
- add awx-version-get-status
- add awx-version-get-files

### `workflow`

- add awx-workflow-list
- add awx-workflow-job-launch
- update awx-workflow-job-get
- update awx-workflow-get-variable
- update awx-workflow-get-last-job
- add awx-workflow-job-get
- add awx-workflow-get-variable
- add awx-workflow-get-last-job

## [`v0.1.6 - 2020-09-20`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.5...v0.1.6) _requirements-ssh2https: use requirements.yml in roles or in tests/roles_

- requirements-ssh2https: use requirements.yml in roles or in tests/roles
- add git-projects-list

## [`v0.1.5 - 2020-09-20`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.4...v0.1.5) _add requirements-ssh2https_

- add requirements-ssh2https replace ssh to https src in requirements.yml
- Add git-ls-remote-heads example in README.md
- add git-ls-remote-heads and set repo from .git/config

## [`v0.1.4 - 2020-06-14`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.3...v0.1.4) _update README.md_

- Add git-ls-remote-heads example in README.md
- add git-ls-remote-heads and set repo from .git/config

## [`v0.1.3 - 2020-06-14`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.2...v0.1.3) _add git-ls-remote-heads_

- add git-ls-remote-heads and set repo from .git/config

## [`v0.1.2 - 2020-01-30`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.1...v0.1.2) _Better tags sort_

- Replace numeric sort option by version sort

## [`v0.1.1 - 2019-10-03`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/v0.1.0...v0.1.1) _Add README.md and example of requirements.yml_

- Add README.md and example of requirements.yml

## [`v0.1.0 - 2019-10-03`](https://gitlab.com/gcoop-libre/ansible_tools/-/compare/bd38875...v0.1.0) _Add git-ls-remote-tags and requirements-version-update_


