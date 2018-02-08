"""
Musicologist
workflow.py

Created by Shota Shimazu on 2018/2/9

Copyright (c) 2018 Shota Shimazu All Rights Reserved.

This software is released under the terms of GNU AFFERO GENERAL PUBLIC LICENSE, see LICENSE for detail.
https://github.com/shotastage/Musicologist/blob/master/LICENSE
"""


from abc import ABCMeta, abstractmethod
from musicologist.debug import log, raise_error_message


class Workflow():

    def __init__(self, parser):
        self.inherite       = parser
        self._action        = self.inherite[0]
        self._subaction     = self.inherite[1]
        self._option        = self.inherite[2]
        self._option_detail = self.inherite[3]
        self._values        = self.inherite[4]
        self.Stepflows      = []
        self.additional_init_()

    def additional_init_(self): pass
    
    def get_first_arg(self):
        try:
            return self._values[0]
        except:
            raise ValueError

    def register(self, flow):
        self.Stepflows.append(flow)
    
    def main(self):
        # Main flow struct
        pass

    def run(self):
        self.main()

        # Flow
        for flow in self.Stepflows:
            try:
                flow.run()
            except:
                raise Exception
