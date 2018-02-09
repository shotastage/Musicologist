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
        self.Stepflows      = []
        self.constructor()

    def constructor(self): pass

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
