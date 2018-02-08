"""
Musicologist
debug.py

Created by Shota Shimazu on 2018/2/9

Copyright (c) 2018 Shota Shimazu All Rights Reserved.

This software is released under the terms of GNU AFFERO GENERAL PUBLIC LICENSE, see LICENSE for detail.
https://github.com/shotastage/Musicologist/blob/master/LICENSE
"""

import os, sys
import inspect, warnings
import textwrap
import functools
from subprocess import check_output, DEVNULL, STDOUT


def log(string, withError = False, errorDetail = None):

    if withError:

        print('\033[31mMusicologist: ' + str(string) + '\033[0m')

        if not errorDetail == None:
            separator_begin = "===== Error Detail =======================================================\n"
            separator_end   = "==========================================================================\n"
            print('\033[31m' + separator_begin + errorDetail + "\n" + separator_end + '\033[0m')

    else:
        print('\033[32mMusicologist: \033[0m' + str(string))



def raise_error_message(func):

    try:
        errored_func = func.__name__
    except:
        errored_func = "Failed to get func information!"

    try:
        errored_obj  = str(func)
    except:
        errored_obj  = "Failed to get errored object information!"

    try:
        func_sig     = inspect.signature(func)
    except:
        func_sig     = "Failed to get functino signature!"

    try:
        exec_info    = str(sys.exc_info())
    except:
        exec_info    = "Failed to get exec info!"


    return textwrap.dedent("""
Python Information:

Exceute func name : {func_name}
Exec Information  : {exec_info}
Object Info       : {obj_inf}
Signature         : {func_signature}
    """).format(
        func_name = errored_func,
        exec_info = exec_info,
        obj_inf   = errored_obj,
        func_signature = func_sig
    ).strip()



def command(command, withOutput = False):
    separated_cmds = command.split(" ")

    if withOutput:
        try:
            check_output(separated_cmds, stderr=STDOUT)
        except:
            log("Failed to exec " + command + "!", withError = True)

    else:
        try:
            check_output(separated_cmds, stderr=DEVNULL)
        except:
            log("Failed to exec " + command + "!", withError = True)
