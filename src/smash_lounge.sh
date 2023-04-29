#!/bin/bash

api="http://smashlounge.com/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_all_groups() {
    curl --request GET \
        --url "$api/groups/all" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_all_techniques() {
    curl --request GET \
        --url "$api/techs/all" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_all_characters() {
    curl --request GET \
        --url "$api/chars/all" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_attack_by_id() {
    # ! - attack_id: (integer): <attack_id>
    curl --request GET \
        --url "$api/attack/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_character_attacks_by_id() {
    # ! - character_id: (integer): <character_id>
    curl --request GET \
        --url "$api/attack/char/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
