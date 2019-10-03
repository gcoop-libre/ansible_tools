# Ansible Tools

## overview

Repository of usefull scripts for Ansible DevOps.

## install

Clone the repository:

```bash

  cd ~
  git clone https://github.com/gcoop-libre/ansible_tools

```

Add to ``~/.bashrc``:

```bash

   if [[ -d "$HOME/ansible_tools" ]]
   then
       PATH="$HOME/ansible_tools:$PATH"
   fi

```

## scripts

### ``git-ls-remote-tags``

Show tags of git repository.

```bash

  git-ls-remote-tags https://github.com/gcoop-libre/ansible_tools.git
  v0.1.0
  v0.1.1

```

### ``requirements-version-update``

Update ``version:`` with last tag of ``src:`` in ``requirements.yml``

Before update ``requirements.yml``

```yaml

  - src: https://github.com/gcoop-libre/ansible-role-ssh
    scm: git
    name: gcoop-libre.ssh
    branch: v0.1.0

```

Update ``requirements.yml`` in current directory:

```bash

  requirements-version-update

```

After update ``requirements.yml``:

```yaml

  - src: https://github.com/gcoop-libre/ansible-role-ssh
    scm: git
    version: v0.4.4
    name: gcoop-libre.ssh
```

## License

GNU General Public License, GPLv3.

## Author Information

This role was created in 2019 by
 [Osiris Alejandro Gomez](http://osiux.com/), worker cooperative of
 [gcoop Cooperativa de Software Libre](http://www.gcoop.coop/).
