#!/bin/bash
timeout 12 cvc4 cvc4-m-i-q-T_12-VS-z3-T_1-GeRnz_1.smt2 --tlimit=12000  >/dev/null 2>&1
retVal=$?
if [ $retVal -eq 124 ]
then
   timeout 1 z3 -smt2 cvc4-m-i-q-T_12-VS-z3-T_1-GeRnz_1.smt2 -T:1 >/dev/null 2>&1
   exit $?
fi
exit 1



