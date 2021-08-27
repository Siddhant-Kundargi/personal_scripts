#!/bin/python3

from os import system as sys

folder_path = "/home/siddhant/"
result_file_dir = "/home/siddhant/archieves/"

files_list_file = open("/home/siddhant/archieves/folders_list",'r')
files_list = files_list_file.readlines()

files_list = [x.strip("\n") for x in files_list]

for file_name in files_list:
    sys(str("tar -cf "+result_file_dir+file_name+".tar "+folder_path+file_name))
    sys(str("xz -z9evvT 2 "+result_file_dir+file_name+".tar"))
    sys(str("sha512sum "+file_name+".tar.xz"+" >> hashlist"))

files_list_file.close()
