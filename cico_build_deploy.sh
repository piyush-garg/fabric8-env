#!/bin/bash

. cico_setup.sh

load_jenkins_vars

if [ ! -f .cico-prepare ]; then
    install_deps
    prepare

    run_tests_with_coverage;

    touch .cico-prepare
fi

deploy;
