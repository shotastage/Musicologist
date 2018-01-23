#
#   bin.jl
#   tools
#
#   Copyright (c) 2017-2018 Shota Shimazu. All rights reserved.
#

# Tools Catalog
# 
# julia_setup.jl                  Install required packages
# build_package.jl                Build musicologist
# package_create.jl               Create a new Julia package 

doc = """Musicologist Tools

Usage:
  bin.jl build
  bin.jl check
  bin.jl create <name>
  bin.jl -h | --help
  bin.jl --version

Options:
  -h --help     Show this screen.
  --version     Show version.
"""

using DocOpt

arguments = docopt(doc, version=v"0.0.1")
dump(arguments)
