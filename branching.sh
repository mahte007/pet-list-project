#!/bin/bash

function read_data {
    echo -n "Enter your name and press [ENTER]: "
    read name
    echo -n "Enter your email address and press [ENTER]: "
    read email
    echo -n "Enter your NEPTUN code and press [ENTER]: "
    read neptun

    echo "Name: $name"
    echo "Email: $email"
    echo "NEPTUN: $neptun"

    echo -n "Are these data correct? [y/N] "
    read answer
}

while : ; do
    read_data
    [[ $answer != 'y' ]] || break
done

git config user.name "$name"
git config user.email "$email"

branch_name="$neptun-$RANDOM-$RANDOM-$RANDOM"

git checkout -b $branch_name && git push --set-upstream origin $branch_name
