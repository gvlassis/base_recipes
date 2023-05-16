#!/usr/bin/env bash
# SPDX-FileCopyrightText: © 2023 Project's authors 
# SPDX-License-Identifier: MIT
function main(){

    function check_dependencies(){
        local dependencies=$@
        readonly dependencies 

        local missing_dependencies=""
        for dependency in $dependencies; do
            if ! command -v "${dependency}" &>/dev/null; then
                if [ -n "${missing_dependencies}" ]; then
                    missing_dependencies="${missing_dependencies}, ${dependency}"
                else
                    missing_dependencies="${dependency}"
                fi
            fi
        done

        if [ -n "${missing_dependencies}" ]; then
            local script_path="$(readlink -f "${0}")"
            readonly script_path
            printf "\e[31;1m${script_path} (Error): The following dependencies are not in PATH: ${missing_dependencies}.\e[0m\n" >&2
            exit 1
        fi
    }
    check_dependencies cargo

    cargo install --path "${SRC_DIR}/atuin" --root "${SRC_DIR}"

    mkdir -p "${PREFIX}/bin"
    cp "${SRC_DIR}/bin/atuin" "${PREFIX}/bin"
}

main