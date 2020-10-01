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
