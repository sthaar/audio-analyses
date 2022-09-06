Audio analysis for (bio)acoustics in praat and python

for all scripts I'm  sure there's a lot of room for improvement. suggestions welcome

python:

* spectrogram_all_3dec20b_clean.ipynb: 
    notebook to print multiple spectrograms, reading all .wav files from a folder and printing them by 100 files. When more files exist in the folder a popup will appear (sometimes hidden behind the jupyter lab window!), which you can click to continue


* songdkl_csv_onset-offset.py: 
    adaptation of songdkl script (https://github.com/NickleDave/songdkl) producing csv file with onset and offset times for segmented syllables, in order to visualize segmentation by printing spectrograms (using get_spectrogram_with_lines_clean.ipynb

* get_spectrogram_with_lines_clean.ipynb: 
    credits to yangzheng-121, notebook to print spectrograms with red lines for onset and blue for offset of syllables, using csv produced by         songdkl_csv_onset-offset.py
    



praatscripts:

#staring a collection of useful praatscripts for editing and analyzing soundfiles for bioacoustics

* textgrids_to_csv.praat
    opens a list of of textgrid files (enter path to filder containing textgrids) and coverts them to tables which are saved as csv.
    csv files contain starttime, tiername, labels and endtime. (I will work on removing columns if necessary for tweetynet)
