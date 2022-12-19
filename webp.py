#import the modules needed
import os
import imghdr
from PIL import Image

#get the current working directory
cwd = os.getcwd()

#iterate over all the files in the cwd
for file in os.listdir(cwd):
    #get the file type
    file_type = imghdr.what(file)
    #check if the file is an image
    if file_type != None:
        #open the image
        img_file = Image.open(file)
        #convert the image to webp format
        img_file.save(file + ".webp", "WEBP")