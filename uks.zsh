# to check for configured users (/etc/passwd) and get the password hash (/etc/shadow) of everyone of them
#! /bin/zsh

for user in $(sudo cat /etc/passwd | grep 'zsh\|bash' | cut -d ":" -f 1)
do
 printf 'user: %s\t, password hash: %s\n' $user $(sudo cat /etc/shadow | grep $user | cut -d ':' -f 2)
done
