#!/bin/bash

# user function
setUser() {
    printf "Enter UserName:\n"
    read username

    if grep $username /etc/passwd; then
        echo "user already exists choose another user name"
        setUser
    fi
}

# group function
setGroup() {
    printf "Enter groupName:\n"
    read groupname

    if grep $groupname /etc/group; then
        echo "group already exists choose another user name"
        setGroup
    fi
}

setGroup
setUser

sudo groupadd $groupname
sudo useradd -m -s /bin/bash -g $groupName $username
sudo passwd $username
sudo mkdir /$username
sudo chown $username:$groupname /$username
sudo chmod 1770 /$username

echo "user and group successfully created"
