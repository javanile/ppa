#!/usr/bin/env bash
set -e

commit_message="PPA Build ($(date +%F))"

git config --global credential.helper 'cache --timeout=3600'

while IFS= read repo || [[ -n "${repo}" ]]; do
    [[ -z "${repo}" ]] && continue
    [[ "${repo::1}" == "#" ]] && continue

    [[ ! -d build ]] && git clone ${repo} build
    cd build
    repo=$(git remote get-url origin)

    echo ""
    echo "====[ ${repo} ]===="

    make qa

    date "+%F %T" > RELEASE

    git add .
    git commit -am "${commit_message}"
    git push
    cd .. && rm -fr build
done < repositories

git add .
git commit -am "${commit_message}"
git push
