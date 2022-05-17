# Ansible Tools

## overview

Repository of useful scripts for Ansible DevOps.

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

## dependencies

```bash

apt-get install coreutils gpg moreutils pass tree
pip3 install requirements.txt

```

## commands

- [awx commands](awx-help.md)
- [git commands](git-help.md)
- [requirements commands](requirements-help.md)

## License

GNU General Public License, GPLv3.

## Author Information

This role was created in 2019 by
 [Osiris Alejandro Gomez](https://osiux.com/), worker cooperative of
 [gcoop Cooperativa de Software Libre](https://www.gcoop.coop/).
