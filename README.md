>> Dwi
## How To Use


### Varaible Static Global For Generate User And Set Passowrd:

```
    - password_luneareth: "$6$4YJgt5XtIl2WTN/3$GJPEKYAosq2bElROiiXByGAI8wEddgE7.RN1LpyAGLs4KD8KwU7S70wg2zbtENxak2T6CRdh9iySM..mzNX5a0"
    - password_app: "$6$ERarx7DYO9k1wP3k$Kr8Wp6L8NcfKmG2C8S9jtEGCpYH2RNYBHhDShKv7HNDzgEpff8voNoy6a.NQFJl7orfOIh11fFyk89HLbQHBu/"
    - password_root: "$6$f5hXa3EbOaonKXYh$m38.zKqfxoyCSc/k9iDWeqNyxUES1GIFmJzs.GxMFb/uTxuCzNNewlaXeV4SHPx1PneMo3sr.z1x.qQTYmngn."
    - public_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDodQhDnNzGF7EL8ORDyTpFhRdP7aofCqy+Z4YLE99onTK54GN59X07kzI/kpwH7zf5yMsaEwEqzZEDT8bW0c5pW0recah11dDOifWI355Z7Oy5sSKB7wZ+1QaKmFmL++8+Gh2P7GXyA009xP6EEDjLaRKudnVNJ79d6dEl0kAFJ5tan6oPtxZeLay8mJBOhMnMcVzWkCS+D/dFxmHBCWdDj9fD+cIZy9zYrw+KpMUozPEYMvvOcTcZFop8BU88MQ0IthNyUW9HtjcRtLSyw1FoS9wsZFFCMzB0lVuYfb119VJo5yarYITrg5ooGKyr0qxW+PhzFoWgQpXwFNPm7jVZ wajatmaka@gmail.com"
``` 

### How To Generate Password

Using Python:

```
python3 -c 'import crypt; print(crypt.crypt("password"))'
```

or 

Using Ruby:

```
ruby -e 'puts "password".crypt("$6$saltsalt$")'
```

## Roles :

1. luneareth_iam for hardening OS
2. app_croncat_near_blockchain for auto deplyoment app croncat near blockchain


### How To Execute Ansible

Execute :

```
ansible-playbook -i inventories/production/hosts  -l app server-iam.yml --ask-vault-pass --user root
```
