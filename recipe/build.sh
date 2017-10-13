#!/bin/bash

if [[ ${HOST} =~ .*darwin.* ]]; then
  export LDFLAGS="${LDFLAGS_CC} -Wl,-rpath,${PREFIX}/lib"
fi
$R CMD INSTALL --build .
