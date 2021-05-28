#!/bin/bash
 cvc4 $2 --tlimit=1000 >/dev/null 2>&1 &&\
 grep timeout <( z3 -smt2 $2 -T:$1 -nw) >/dev/null 2>&1
