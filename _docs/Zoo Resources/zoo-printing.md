---
title: Printing
permalink: /docs/zoo-printing/
---
Last Updated: 5 Aug 2003 by 32462

### The printers
The Zoo is equipped with a pair of HP LaserJet 4050N printers, one in the open portion of the Zoo, one in the closed. They are named, respectively, zoo1 and zoo2. See the Zoo Etiquette section of this help system for some ground rules for printing in the Zoo.

### Printing from an application
Many document-handling applications, particularly those that run in X Windows, will provide you with a "Print" option somewhere in their interfaces, and will handle the vagaries of text and graphics formatting themselves. All you really have to do is make sure that the correct printer is selected when you hit that big "OK" button.

### Using lpr
The lpr program is the standard method of printing from the command line. While its subtleties are many and its workings mysterious, its basic usage is summarized below:

lpr <filename> will print the file given by filename on zoo1, the default printer. The file may be plain text or Postscript formatted.
lpr -P zoo2 <filename> will print filename on zoo2.
lpr -K n <filename> will print n copies of filename on the default printer, zoo1.
Printing remotely
On Windows machines, the printers are networked as
\\crystal\zoo1 and \\crystal\zoo2.
From Pantheon and other remote Unix servers, print (using lpr -P, for example) to
zoo1@crystal.cs.yale.edu

### Format before you print
When printing large Postscript files, consider using psnup, which fits multiple pages of a document into a single page in a new file. Type psnup -2 file newfile to do a quick conversion, or man psnup for other formatting options. PDFs can usually be converted into nice PostScript using pdftops (and the process reversed with ps2pdf).
Check out the man page for enscript -- you can use it to convert text files into nicely formatted PostScript, perfect for when your professor wants you to submit a hard copy of your source code. Try enscript -r -2 filename if you're in a hurry.

### Tips and tricks
Wondering why your job isn't printing? Type lpq [-P printer] to check the status of the print queue for any of the Zoo printers.
Just realized you're printing the wrong file / don't like the way it looks? Try using the lprm command to remove your job from the queue -- you'll have to look up its number first using lpq.
Having trouble printing from an application like xpdf or KWord? Try Saving your file as plain text of PostScript, then print it from the command line using lpr.