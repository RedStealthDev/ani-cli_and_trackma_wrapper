#!/usr/bin/bash
. config.cfg

printf "$trackma_account\n" | LINES=25 COLUMNS=130 trackma list > tmp

