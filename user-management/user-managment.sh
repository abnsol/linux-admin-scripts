#!/bin/sh

#create dir at root for each department
su -
cd /
mkdir Engineering_Department
mkdir Sales_Department
mkdir IS_Department

#create a group for each department
groupadd engineering_Department
groupadd sales_Department
groupadd IS_Department

#create an administrative user for each of the department
# Engineering
useradd -g engineering_Department -d /Engineering_Department -s /bin/bash -c "Linux expert" Abenezer
useradd -g engineering_Department -d /Engineering_Department -s /bin/bash -c "Cloud expert" Bertolomy
useradd -g engineering_Department -d /Engineering_Department -s /bin/bash -c "AI expert" John
useradd -g engineering_Department -d /Engineering_Department -s /bin/bash -c "Developer" yitem
useradd -g engineering_Department -d /Engineering_Department -s /bin/bash -c "tester" kidus

#Sales
useradd -g sales_Department -d /Sales_Department -s /bin/bash -c "Marketing expert" yoseph
useradd -g sales_Department -d /Sales_Department -s /bin/bash -c "marketing expert #2" biruk
useradd -g sales_Department -d /Sales_Department -s /bin/bash -c "sales expert" philimon
useradd -g sales_Department -d /Sales_Department -s /bin/bash -c "sales expert #2" natan
useradd -g sales_Department -d /Sales_Department -s /bin/bash -c "dealer" nahom

#IS
useradd -g IS_Department -d /IS_Department -s /bin/bash -c "web expert" ruth
useradd -g IS_Department -d /IS_Department -s /bin/bash -c "Block chain expert" sara
useradd -g IS_Department -d /IS_Department -s /bin/bash -c "networking expert" tigabu
useradd -g IS_Department -d /IS_Department -s /bin/bash -c "IS expert" ema
useradd -g IS_Department -d /IS_Department -s /bin/bash -c "signal expert" batman


# Ensure that owner of each directories is the department administrator and the group ownership for each department
chown Abenezer /Engineering_Department
chgrp engineering_Department /Engineering_Department

chown philimon /Sales_Department
chgrp sales_Department /Sales_Department

chown batman /IS_Department
chgrp IS_Department /IS_Department

#give permission accordingly

chmod 770 /Engineering_Department
chmod 770 /Sales_Department
chmod 770 /IS_Department

# Create a document in each of the department directories where the administrator can only modify

touch /Engineering_Department/file1.txt 
touch /Sales_Department/file2.txt 
touch /IS_Department/file3.txt

chmod 740 /Engineering_Department/confidential_file1.txt 
chmod 740 /Sales_Department/confidential_file2.txt 
chmod 740 /IS_Department/confidential_file3.txt

#check
# verify user and group are created and correct user assignment
tail -9 /etc/passwd
tail -3 /etc/group
#Use the appropriate command to verify the directory creation and the permission settings.
ls -l /
ls -ld /Engineering_Department
ls -ld /Sales_Department
ls -ld /IS_Department
# Use the appropriate command to verify the files are created in their respective directories.
ls -l /Engineering_Department
ls -l /Sales_Department
ls -l /IS_Department
