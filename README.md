>> Dwi
## How To Use

### WARNING

Test  : 
RPM Based
- Centos 7 ^
- Fedora 34 ^

DEB Based
- Ubuntu 20 ^
- Debian 18 ^


Take your own risk!!!


### Varaible Global Roles luneareth_iam:

```
---
#python3 -c 'import crypt; print(crypt.crypt("password"))'
#ruby -e 'puts "password".crypt("$6$saltsalt$")'

- hosts: hardening 
  become: yes
  become_user: root
  ### Variable
  vars:
     - user_root: root
     - password_root: "$6$saltsalt$PHc7yZm/40FFox.otHiMMVmuHWWpFOtiWYIv2gjOM5M0A39FxZfn2.zg.DMgkpgERGJm0xX2UTNGAv854fMbn0"
     - user_admin: admin
     - password_admin: "$6$saltsalt$PHc7yZm/40FFox.otHiMMVmuHWWpFOtiWYIv2gjOM5M0A39FxZfn2.zg.DMgkpgERGJm0xX2UTNGAv854fMbn0"
     - user_other: app     
     - password_other: "$6$saltsalt$PHc7yZm/40FFox.otHiMMVmuHWWpFOtiWYIv2gjOM5M0A39FxZfn2.zg.DMgkpgERGJm0xX2UTNGAv854fMbn0"
     - public_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDdA4sdMITuL88nV4XP44MF/uvUwoSl08ExgRE3xNdUsIZaSa+VeNiLVwZGoGdvQf6F5CYSXl4kpUyQZspYQvu+H6VEU/bhYvHFHok+BLZPLg9IJERCK8l/8tnRRv3DllSFGx9zSTEaAy6mA3JiObNwf0WmnWkmFMKroqkvV+ss/PUCQvYbLkmUXuaAgDISisj0YYYk8eFg8RdDxk0Z5T8UrO4Gm7NTH6T/BtXP5UATHmDIG/jWMS+tn6PKh/pXpq6oS/epx3Uyz38h8p6Hjs/Xlo1c6989uDqh+035bX7vGYpWcBlq3UsYOMHP7vmqm6yUOV8fUyvK0D7MmtQuLVNI72fjbqkFM+REQ7RniXi9WqgzTEgL0WYtbGa0bTvBxwu6QkhDXucr8fCFKQ3+9I4LzXEz6aobRw7N0Myi/rltqcVbNJb9hc3uHggXvhINu/wQfoIcxK2lWUXPapR07Lzs8pIT6miv/r5A9rgztFViPwe1MkFlqGoEWYgbtCZuT9E= neareth@127block"
     - iptables_ssh_access_ip_allow: 10.69.69.0/24,10.69.66.7
     - port_ssh: 12920
     - swap_support: True
  # Variable iptables_ssh_access_ip_allow for ip private allowed access ssh via port 22
  # for any access ssh using port 12920 or you can change number of port used variable port_ssh
  ### Or Define using file external
  #vars_files:
  #  - ./global_variables.yml
  ### Or Define Variable as Host Or Group in inventories/production/group_vars/app
  ### Currently Variable For Hardening put in Variable Global Inventory - all
  roles: 
    - luneareth_iam



``` 

### How To Generate Password

Using Python:

```
python3 -c 'import crypt; print(crypt.crypt("password-123"))'
```

or 

Using Ruby:

```
ruby -e 'puts "password-123".crypt("$6$saltsalt$")'
```

### How To Execute Global Ansible

Execute :

```
ansible-playbook -i inventories/staging/hosts -l hardening  server-iam.yml  -Kk  --become
```

# DONATE

1. Ethereum : 0xB0e6e6c379389bBB30fACD427e02d74d27ec0C78

2. Near Blockchain : ohmeth.near 

3. Mina Protocol : B62qiiBBXKN5CdgXv7wPkXxC1prdzQxwfaTMAi3isAeb9F7gCbzi5dU
