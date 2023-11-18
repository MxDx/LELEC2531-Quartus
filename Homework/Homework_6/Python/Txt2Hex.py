#!/usr/bin/env python3
# -*-coding:Latin-1 -*

import sys, getopt

InputFileName = ""
OutputFileName = ""

def main(argv):
    global InputFileName
    global OutputFileName
    try:
        opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
    except getopt.GetoptError:
        print("Txt2Hex.py -i <inputfile> -o <outputfile>")
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print("Txt2Hex.py -i <inputfile> -o <outputfile>")
            sys.exit()
        elif opt in ("-i", "--ifile"):
            InputFileName = arg
        elif opt in ("-o", "--ofile"):
            OutputFileName = arg


if __name__ == "__main__":
    main(sys.argv[1:])

    InputFile  = open(InputFileName, "r")
    OutputFile = open(OutputFileName, "w")
    
    InputContent = InputFile.read()
    InputLines = InputContent.splitlines()

    for Line in InputLines:
        if (len(Line) < 2): continue
        if ((Line.find(":") == 8)):
            OutputFile.write(Line[10:18]+ "\n")
        
    InputFile.close()
    OutputFile.close()

