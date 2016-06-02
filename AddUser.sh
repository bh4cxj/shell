#!/bin/bash


username=(libo_ding xiuting_dai botao_song guofuz)
#username=(guofuz)
#group=develop
libo_dingkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCu1Yi3CDCb1pz8vNgSmBpYXvn2JkaLJ3pZaQaCmG6/EQM5SeVFLKYHpxynwxNqdAyZj2sPVPmre0M++Vu2Bk6dKV9FSjPwebRW5YGIuYhauLXm4D5iN5k4aIVomDAvYpFt/GkEyDGcNNg+RI2nUg39UyITmsvU+Zwv+VU3uRYwG9gDWN5m7RCBez0Kfno/2d6DarZ/X5xiRyn2dNLrz/7dizej0TPlTnfiSw1RwErFEgvNyz8gUB0+4r713fWGTKXkhXKHcwMtlBDP2uO9rXj1j3xDOPj6kmKzcgFIr8IcA9zVAGxT0FRg0bCPUtkqx4vAkYiE3iQCThDBipMv4jQ9 libo.ding@libo.ding@qq.com'
xiuting_daikey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB8ImN5YK+A9svCYbiH+PHu87SuUH+BxLy7ikrbPuhkF3/QcCuaJNm7pJ0M+fpXqSm+xfAgIaQ6t9thlQ1jSaSkMchsDdwerLemI6OX4XTyuSkIJCrPvRTieEU8mINE4ScB5DYMoDRsfkODWv41i/I+1SzuIUMEwCpJGYz6M1Dl5rO6Obnm0rHZyHk3HqYLKKY/HVrjf+HjGOLYOCNxB/xMbuzD+/OofNnfyTFzwpATOz3/nh91r2pqz8HGCKA4soolDZyqIMBpqLwvQviXnTmhETIWmzGMyLMrLVRPZC1q0LFTkNA+QdTzF6l5ac5OcX/SsFcFHI4VnTgYX60yNqb xiaobaismiley@gmail.com'
youbin_zengkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2vL+X19Ce0qZXPuvfpRIi4BPz3zvyYngBpNssuyBHmVwkM0gmd1i80V2IeHFp6iz7EGc/Dk7VNP8kpU0AoLwHSi3EZbeCcBBntHHTxP77ADKlOBfGve9jYHv0X/a+lxXXTirgm1YY1F1fQkiYLa411KVB8/nXhwF8svvRJD670arepPaBdN5XNnDUDKG7LybYY6dwVDzrYXPJeCX5s9uWKKdUT6IPNsANGdYOgSW2lWBqS3drpah73YoLNkgBCYqHfH4dvwQ54d1kB7+VZ6qWLdKAxoXSEqUQWz7bFK1TWgepuAELTlk9NEVByvGZFaoNaQ83DUU3kWnSGcdnQ8d9 ZYB@Mac.local'
botao_songkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDnnewKEIHkSdwFxRJsohQQXw6VzTQVImgD9ZJeafgLhiv6E6XfwtndZVrHSRPHEFvH1LbWqFcVONS9hAF3a+KlPplWsCUNryYbz5LJjaMq3RPYHmYqhRfoU9mBfN1X7hEYMCPtzR65BlQDZ+JoqWIdvnfpoZB/GBIJ4uovHXV2nn/bDk/NIe18GWtvpnVYS6cKIRrbzBRLuvH9Eze9k5kSKgq80cbydAyruBhg6Xa9Qr5TaI+zBAcYGfMfINJJmB3vlQoC/1V0wDZ4neYA5I33Aa02V0b4S7+/SWfRRvqdhnJdUvPJcVUvgf/2ztB+bO+GYo8j3wlMnkVCec8QXIRR bh4cxj@bh4cxjdeMacBook-Pro.local'
Dukekey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLQMadcJvHb1+q5FnzPympx5wMjvQHWKX/xSqHRHmpTuFrQwOyy2tr4YUTdVDfOmw9pNGAfbWTfh8QWcbhts8EnyN+gZfA7Wz32kmJUlPBgmhKF7n3SSdv+PqW7sjSZxBj6ZkssCI7h0RJyj8gfrLTrc7PXM1dF+AewfTGNhpmRdbsyVlx0ny6ohRkcUw2NP0FHkLxpfwybcF7rpKVVlHYiwKElTkVE/pjNDVqpjF4B7ZuTCjT0vLYs4jaucprEbJ3ciU7SJ4sof3vvNezimLeiREkHv5OXYRXRol2XZm0kfW0mUvSCfCi+s1cLA8l7yx3cDhT43rnJw8RzTsrd6sl daiwenjun@daiwenjundeMacBook-Pro.local'
MBkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDI/6ej65gDcEe2mid0AIcjI28qhyilqXgh0Xyjchd9QZsxhivw++v6xrEtUuFORuln3Qc5btl4myqvuK90ptBVvsS9Xq6ERXKyt4rtikvbXYHsg0PFmddADNCni40kmUk5tdVwq314G84IyPhuMpRDF2pYhs1FYJT0ArZRNJ8ISuAmtBhfskDcwjQLfGT6gYa2FeyaICCPjrXCZpRrc1LLhACHkEYX7PvJnDg2F/c6AlOK4tsOF44jUBWdDrEz+uwfJEJYIIGLTIQLh+wYuqDCSRzO8bK5RWIpG5/tz9PGMCJP2Nj4iD/xLTrNQOCAluklEsMao0CMeddgZ0G4TzTr SpongeBob@Ma.local'
guofuzkey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFK8goO8v3OZggXQe65+RHN4QDfFrhvOmpjUNz8M8w+zM8Atz3rMYvpbsBi4dwrkeMCy4OMddbqRBdZ/Kv1M/10LNxuHNKaqlr6qhfAxKOQamp7lUsfMG6eTPicT66TsMjlMI4gK23A3Qsm4ENjxha+zl9JMp6vyB++o7Z/CkyGQWolA6DPCfKhiK1YSBscKzYrqP3W8vGUKq5xHstt+vVXaTRvX+oTCONdma2w+io0ImX178qg+y96YXS2B2tzcukQwEWVhdGvQYcReWvNXsN16ciUTpq3nMlPPNNlWuhbpHwXdM2c59BaDFebTkwANy5TYwuskaYdYasS30gPV5b 694663906@qq.com'
xuyankangkey='sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOFtB2KpvZGFOPz2r4P9pkJeaqv87GtbenVKvkvsYt6hhBpOs3sVuvHr/4ygqTnEeLtHGb9PTtG0DrbDSTeWd236y4V821dmbORzahdmQjWDBqYbIqoL3YNxpgFY/nLxAHKYUhttZCj1K/JOdZalaPUOwUwyGemC32zhOO0yjw8btyAtJ3DmSL+ObbtLJ8BFUSZ1oqR4Q3zWo+K1SjDgg/BT06ONb66Igi9YzhByN3s8Fgvu/k2QXglSoBNhP6Xqe5Cvum9g5iPob/EAe87E9W4fxkYKcf4F6taDSre9An3C35mADAF8ORtc+VfIyD9PdVcFd8EF35qywwxNxHo/Vx xuyankang@gmail.com
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbTCsspu1pm/YvlGAAJA6vP9Kbd5j4E8Bu8KiJ8EwJD0qEhOLk/eeYKIYYCVb353cuwVNj0sLQ04ocCzm3MTR7JCmWlnNmjhNMMkvD8SbJlmrUtEdQfvirIakI+AawJwSlyIXDRTv1XBasCt3e72GxOOdFDKus7ai8xw8vlqzJI6LJye62Vw6TQ79nboX2ajcBUpJZdQbao2FU40fAlIABkFKsdJXQWh8UzwS0mEz7ot/6neJBdhHCtKQf72OetG/oMnxhqRW89tvxgAwFGKp/fFxviooAjYxkSMja2ZACD25EF6Vx9xu2ZLArQdrmNmnSBh0cBIa1SuZo6MpqCpct xuyankang@gmail.com'
guleikey='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDWc+MDg7MPckAN57oWgAUqFwVa0gZYO9tZCORbOcu4FDyZI4iFXojXqJFvYfhhIGFwBRd4EZhcxIjsGW7rzkfIQUqosQYOs4oL6w7FZrzUuckJW7M5r1YvnvrWDX6LJd9gomO/8aV9Pt1RwBn2/MpJnkGu5qijfhveEl2IttVz6W7bxbyqy2033YjnXYTo1U24OJqhRPCJ0s9HDTBvq1vyh3lFAv1z/ZAHsH4Dy6I00dz2oMeTrt2oi8a78Ec8fJZ22K/5Z7uBUwQhHSb126yIahf17iMvva0i2DxDjR2CuLTO6cZYoPzW0/VR/6qZX2Ke7WF40HL+stL3NLCGASr gulei@guleideMacBook-Pro.local'

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
