directory$ = "/home/sitath/Dropbox/Utrecht/python_praat/song_analyse_python/testsongs/textgrid/text"
strings = Create Strings as file list: "list", directory$ + "/*.TextGrid"
numberOfFiles = Get number of strings
 
for ifile to numberOfFiles
###read all files
	selectObject: strings 
	fileName$ = Get string: ifile
	Read from file: directory$ + "/" + fileName$
### create and save table
	Down to Table: "no", 6, "yes", "no"
	filennew$ = replace$ (fileName$, "TextGrid", "csv", 0)
	Save as comma-separated file: directory$ + "/" + filennew$
endfor



