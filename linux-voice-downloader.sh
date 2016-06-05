#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset -o pipefail

usage() {
    cat >&2 <<EOF
Usage: $0 SUBSCRIBER_NUMBER EMAIL_ADDRESS
Example: $0 123456 me@example.org
EOF
    exit 2
}

if [ $# -ne 2 ]
then
    usage
fi
subscription="$1"
username="$2"

trap 'rm --force --recursive $temporary_directory' EXIT
temporary_directory="$(mktemp --directory)"

cookie_file="${temporary_directory}/cookies.txt"
wget --keep-session-cookies --output-document=/dev/null --post-data="log=${subscription}&pwd=${username}" --save-cookies="${cookie_file}" 'https://subs.linuxvoice.com/wp-login.php'

issue=1
while true
do
    filename="Linux-Voice-Issue-$(printf %03d "${issue}").pdf"
    if [ ! -e "${filename}" ]
    then
        wget --load-cookies="${cookie_file}" --max-redirect=0 "https://subs.linuxvoice.com/wp-content/uploads/issues/${filename}"
    fi
    let issue++
done
