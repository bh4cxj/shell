#!/bin/bash


#username=(libo_ding xiuting_dai youbin_zeng botao_song)
username=(botao_song)
#group=develop
libo_dingkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCu1Yi3CDCb1pz8vNgSmBpYXvn2JkaLJ3pZaQaCmG6/EQM5SeVFLKYHpxynwxNqdAyZj2sPVPmre0M++Vu2Bk6dKV9FSjPwebRW5YGIuYhauLXm4D5iN5k4aIVomDAvYpFt/GkEyDGcNNg+RI2nUg39UyITmsvU+Zwv+VU3uRYwG9gDWN5m7RCBez0Kfno/2d6DarZ/X5xiRyn2dNLrz/7dizej0TPlTnfiSw1RwErFEgvNyz8gUB0+4r713fWGTKXkhXKHcwMtlBDP2uO9rXj1j3xDOPj6kmKzcgFIr8IcA9zVAGxT0FRg0bCPUtkqx4vAkYiE3iQCThDBipMv4jQ9 libo.ding@libo.ding@qq.com'
xiuting_daikey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8ImN5YK+A9svCYbiH+PHu87SuUH+BxLy7ikrbPuhkF3/QcCuaJNm7pJ0M+fpXqSm+xfAgIaQ6t9thlQ1jSaSkMchsDdwerLemI6OX4XTyuSkIJCrPvRTieEU8mINE4ScB5DYMoDRsfkODWv41i/I+1SzuIUMEwCpJGYz6M1Dl5rO6Obnm0rHZyHk3HqYLKKY/HVrjf+HjGOLYOCNxB/xMbuzD+/OofNnfyTFzwpATOz3/nh91r2pqz8HGCKA4soolDZyqIMBpqLwvQviXnTmhETIWmzGMyLMrLVRPZC1q0LFTkNA+QdTzF6l5ac5OcX/SsFcFHI4VnTgYX60yNqb xiaobaismiley@gmail.com'
youbin_zengkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2vL+X19Ce0qZXPuvfpRIi4BPz3zvyYngBpNssuyBHmVwkM0gmd1i80V2IeHFp6iz7EGc/Dk7VNP8kpU0AoLwHSi3EZbeCcBBntHHTxP77ADKlOBfGve9jYHv0X/a+lxXXTirgm1YY1F1fQkiYLa411KVB8/nXhwF8svvRJD670arepPaBdN5XNnDUDKG7LybYY6dwVDzrYXPJeCX5s9uWKKdUT6IPNsANGdYOgSW2lWBqS3drpah73YoLNkgBCYqHfH4dvwQ54d1kB7+VZ6qWLdKAxoXSEqUQWz7bFK1TWgepuAELTlk9NEVByvGZFaoNaQ83DUU3kWnSGcdnQ8d9 ZYB@Mac.local'
botao_songkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDnnewKEIHkSdwFxRJsohQQXw6VzTQVImgD9ZJeafgLhiv6E6XfwtndZVrHSRPHEFvH1LbWqFcVONS9hAF3a+KlPplWsCUNryYbz5LJjaMq3RPYHmYqhRfoU9mBfN1X7hEYMCPtzR65BlQDZ+JoqWIdvnfpoZB/GBIJ4uovHXV2nn/bDk/NIe18GWtvpnVYS6cKIRrbzBRLuvH9Eze9k5kSKgq80cbydAyruBhg6Xa9Qr5TaI+zBAcYGfMfINJJmB3vlQoC/1V0wDZ4neYA5I33Aa02V0b4S7+/SWfRRvqdhnJdUvPJcVUvgf/2ztB+bO+GYo8j3wlMnkVCec8QXIRR bh4cxj@bh4cxjdeMacBook-Pro.local'
Dukekey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLQMadcJvHb1+q5FnzPympx5wMjvQHWKX/xSqHRHmpTuFrQwOyy2tr4YUTdVDfOmw9pNGAfbWTfh8QWcbhts8EnyN+gZfA7Wz32kmJUlPBgmhKF7n3SSdv+PqW7sjSZxBj6ZkssCI7h0RJyj8gfrLTrc7PXM1dF+AewfTGNhpmRdbsyVlx0ny6ohRkcUw2NP0FHkLxpfwybcF7rpKVVlHYiwKElTkVE/pjNDVqpjF4B7ZuTCjT0vLYs4jaucprEbJ3ciU7SJ4sof3vvNezimLeiREkHv5OXYRXRol2XZm0kfW0mUvSCfCi+s1cLA8l7yx3cDhT43rnJw8RzTsrd6sl daiwenjun@daiwenjundeMacBook-Pro.local'
MBkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDI/6ej65gDcEe2mid0AIcjI28qhyilqXgh0Xyjchd9QZsxhivw++v6xrEtUuFORuln3Qc5btl4myqvuK90ptBVvsS9Xq6ERXKyt4rtikvbXYHsg0PFmddADNCni40kmUk5tdVwq314G84IyPhuMpRDF2pYhs1FYJT0ArZRNJ8ISuAmtBhfskDcwjQLfGT6gYa2FeyaICCPjrXCZpRrc1LLhACHkEYX7PvJnDg2F/c6AlOK4tsOF44jUBWdDrEz+uwfJEJYIIGLTIQLh+wYuqDCSRzO8bK5RWIpG5/tz9PGMCJP2Nj4iD/xLTrNQOCAluklEsMao0CMeddgZ0G4TzTr SpongeBob@Ma.local'
guofuzkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAF+DIGT2Whr2G7CBc7m5zvnYKty2cALG09+ZFScQZOROezIWR1PDspwQ9tlwXHGXFD2f0XroQhqC2Ijf4UIjfUqa02/eM8XVl39wHUxJaneAaHY/fdtWD1UCrq9GcTw2lC7RwmRcjP/LL+3jV0JQw5bE83wR45oZnXMKNj2jA0Q4qkq5BDwMsru+lth1vDfIaD0G/t6ie09dy065wBaBtqIV1Ld2dpJT/uxePgZfYRwYv0UY7eb952Q4IvcApW1duCwu8YIK027KOu+sLayzUUu+LuWTy1sEwJF8h8x241ng1kZ6tgvGs3q9557W84XVE7vVvoDeUq1CWBroUPhj 694663906@qq.com'

#add group
function AddGroup() {
    groupadd ${group}
}

#add user and init ssh key
function AddUser () {
    for user in ${username[@]};do
        groupadd ${user}
        [ -d /home/$user ] || useradd -m -g ${user} -p `openssl passwd Cq#in1nt` ${user}
        mkdir /home/${user}/.ssh && chmod 700 /home/${user}/.ssh
        touch /home/${user}/.ssh/authorized_keys && chmod 644 /home/${user}/.ssh/authorized_keys
        pubkey="${user}key"
        echo ${!pubkey} > /home/${user}/.ssh/authorized_keys
        chown -R ${user}:${user} /home/${user}
    done
}

function DelUser() {
    for user in ${username[@]};do
        userdel -rf ${user}
    done
}

function ExtGroup() {
    for user in ${username[@]};do
        usermod -G ${group} ${user}
    done
}

#AddGroup
#DelUser
AddUser
#ExtGroup
