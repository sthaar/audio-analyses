#this script prepares textgrid annotations for use in tweetynet:
#steps in this script: Convert to table, remove tier, change comumn names, save as .csv
#enter the path to your textgrid files in the first line, after 'directory$=' between quotes


directory$ = "/home/sitath/Dropbox/Utrecht/python_praat/song_analyse_python/testsongs/textgrid/text"
strings = Create Strings as file list: "list", directory$ + "/*.TextGrid"
numberOfFiles = Get number of strings
 
for ifile to numberOfFiles
###read all files
	selectObject: strings 
	fileName$ = Get string: ifile
	Read from file: directory$ + "/" + fileName$
### create table
	Down to Table: "no", 6, "yes", "no"
###modify for tweetynet
	Remove column: "tier"
	Set column label (index): 1, "onset_s"
	Set column label (index): 2, "label"
	Set column label (index): 3, "offset_s"
### save table as csv
	filennew$ = replace$ (fileName$, "TextGrid", ".wav.csv", 0)
	Save as comma-separated file: directory$ + "/" + filennew$
endfor




