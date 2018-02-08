"""
Musicologist
mrgparse.py

Created by Shota Shimazu on 2018/2/9

Copyright (c) 2018 Shota Shimazu All Rights Reserved.

This software is released under the terms of GNU AFFERO GENERAL PUBLIC LICENSE, see LICENSE for detail.
https://github.com/shotastage/Musicologist/blob/master/LICENSE
"""

import sys
import enum
import functools
from musicologist.debug import log, raise_error_message

# Flow Classies
from musicologist import workflow

class ArgumentsParser(object):

    def __init__(self):
        
        # Arguments
        self._cmd = None            # ex. **new**
        self._sub_action = None     # ex. new:**cms**
        self._option = None         # ex. g **app**
        self._option_detail = None  # ex. g app **--basic**
        self._values = None         # ex. g **app api mail user**
        self.__insert_arguments()   # <== Insert real value 

        # Exec flow
        self._exec_flow = None

        # Arguments Array 
        self._arguments = [
            self._cmd,
            self._sub_action,
            self._option,
            self._option_detail,
            self._values
        ]
        


    def add_argument(self, shorten_cmd, long_cmd, option, execute):

        # Check command

        if not self._cmd == shorten_cmd and not self._cmd == long_cmd:
            return

        if not self._sub_action == None:
            return

        if not option == None:
            if self._option == option:
                self._exec_flow = execute
        else:
            self._exec_flow = execute

        return
    

    def add_argument_with_subaction(self, base_shorten_cmd, base_long_cmd, action, option, execute):

        if not self._cmd == base_shorten_cmd and not self._cmd == base_long_cmd:
            return
    
        if not self._sub_action == action:
            return

        if not option == None:
            if self._option == option:
                self._exec_flow = execute
        else:
            self._exec_flow = execute

        return


    def avd_add_argument(self, shorten_cmd, long_cmd, option, execute):
        if self._cmd == shorten_cmd or self._cmd == long_cmd:
            if self._sub_action == None:
                self._exec_flow = execute

        return
    

    def avd_add_argument_with_subaction(self, base_shorten_cmd, base_long_cmd, action, option, execute):
        if self._cmd == base_shorten_cmd or self._cmd == base_long_cmd:
            if self._sub_action == action:
                self._exec_flow = execute

        return


    def parse(self):
        # If there are no command, show usage.
        if len(sys.argv) == 1:
            instance = getattr(workflow, "UsageShow")(self._arguments)
            instance.run()
            return
        
        # Check excute function is not empty.
        if not self._exec_flow == None: 
            instance = getattr(workflow, self._exec_flow)(self._arguments)
            instance.run()

            return
        else:
            log("CLI action is not appended!", withError = True, errorDetail = raise_error_message(self.parse))


    def __insert_arguments(self):
        # Get main command **new**:cms
        try: self._cmd = self.__colon_separate_cmd(sys.argv[1])
        except: pass

        # Get subaction new:**cms**
        try: self._sub_action = self.__colon_separate_action(sys.argv[1])
        except: pass
        
        # Get option and detail option
        # optin =           mg g **app**
        # detail option =   mg g app **--basic**
        try:
            self._option = sys.argv[2]

            if "--" in sys.argv[3]:
                self._option_detail = sys.argv[3]
        except: pass

        # Get values
        try:
            if "--" in sys.argv[3]:
                self._values = sys.argv[4:]
            else:
                self._values = sys.argv[3:]
        except: pass


    def __colon_separate_cmd(self, cmd_colon_value):
        if ":" in cmd_colon_value:
            return cmd_colon_value.split(":")[0]
        else:
            return cmd_colon_value


    def __colon_separate_action(self, cmd_colon_value):
        if ":" in cmd_colon_value:
            return cmd_colon_value.split(":")[1]
        else:
            raise ValueError



class DetailOptionParser():

    def __init__(self, detail_option):
        self._option_detail = detail_option
        self._excute = None

    def add_argument(self, option, excute):
        if self._option_detail == option:
            self._excute = excute
    
    def parse(self):
        self._excute.excute()



def reserve_as_command(*reserved_args):

    def _decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            for reserve in reserved_args:
                if args[1] == reserve:
                    re = func(*args, **kwargs)
                    return re
        return wrapper
    return _decorator
