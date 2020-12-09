##############################################################################
# clean_data.py
# https://github.com/DigiLog-N/SynopticDataClient
# Copyright 2020 Canvass Labs, Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##############################################################################
import sys

# parse PHM08 training and testing data

# I wrote this quick script to process the text files, as trailing
# whitespace was throwing off the bulk loads needed for testing.

with open(sys.argv[1], 'r') as f:
    # read all lines into a list
    l = f.readlines()
    # remove any leading or training whitespace
    # (found in some lines) before splitting on
    # single spaces.
    l = [x.strip().split(' ') for x in l]
    for x in l:
        if len(x) != 26:
            # data is pretty regular, if # of fields
            # does not equal 26, something is wrong.
            print("Bad Line: %s" % x)
        # print the sanitized line, now comma-separated.
        # user can redirect to a file if they wish.
        print(','.join(x))
