---
title: Communications
permalink: /docs/zoo/communications
---
Last Updated: 31 July 2003 by 594

Communicating on the Zoo
This page describes several utilities that you can use to communicate with Zoo users and the Internet at large.

## finger
finger is like a phonebook - it lets you "look someone up." It's typically used to find out a full name from login/NetID, to check when a user last logged in, or to read a user's .plan or .project files. finger takes as an argument the finger name or login name of a user, and, optionally the location of the user (that is, the name of the machine on which that user has an account -- potentially an account outside of Yale). Suppose you were looking for a user whose login was "jrg45" on the local machine. You could type finger jrg45, and the output might look like the following:

Login: jrg45                            Name: Julian Graham
Directory: /home/accts/jrg45            Shell: /bin/bash
On since Sat Nov  2 21:41 (EST) on pts/7 from yale128036064065.student.yale.edu
On since Fri Nov  1 16:27 (EST) on pts/8 from yale128036064065.student.yale.edu
   306 days 3 hours idle
     (messages off)
Mail forwarded to julian.graham@yale.edu
No mail.
## getent
getent is like finger, only quicker and uglier. Think of it as the finger of a grubby little gnome. It accesses the administrative database directly, so queries go a little faster. To look up someone's name from their NetID, you'll be using the passwd database, so you'll type getent passwd NETID. An example:

``` 
$hornet->[10:21:57]{jct29}:getent passwd jct29
jct29:x:594:602:James Terry:/home/accts/jct29:/bin/bash
```
## .plan, .project
.plan and .project files often contain interesting or humorous passages, You can create your own .plan/.project by editing the .plan file in your home directory and making it/them world readable. Remember that, in order for other people to be able to read your .project and .plan, your home directory itself must be world-accessible (via chmod o+x, perhaps).

## talk

Once you've found a user's login name, you can use the talk program to have an interactive conversation with them on your screen (provided they are logged in at the same time as you are, of course). Simply specify the address of the user as an argument to the talk command. For example, if you wish to talk to user "ebd5" who is logged in on the Zoo node "chameleon," you would type talk ebd5@chameleon.

The user whom you talk will have the option of responding to your talk request or of ignoring it. If the user opts to respond, a connection will take place and your screen will be divided into two sections. The top half will reflect what the other user is typing, and the bottom half will reflect what you are typing. The display will look the same (but reversed) to the other user. You can press Control-C at any time to end or interrupt the conversation.

(Ytalk, a multi-user talk client, is also installed on the Zoo.)

## Phone
As is stated elsewhere, the open Zoo's phone number is 2-2169 and the closed Zoo's phone number is 2-2266. Now you can wear out your fingers dialing as well as typing.

## E-mail
The Zoo currently has all incoming e-mail turned off on Zoo nodes themselves. (That is, Zoo users do not have incoming e-mail addresses.) However, you can still send outgoing e-mail using pine...

## pine
Pine is a general-purpose, screen-oriented, MIME-aware mail program. It's menu-driven, and all available commands for each menu and function are displayed at the bottom of the screen. It's also pretty much ubiquitous at the time of this writing, so you may have used it already on the Pantheon machines. Pine manages email based on folders, which are much like directories in the file system -- you can group mail you receive into categories using folders, and selectively archive/delete groups of messages.

It is possible to access your incoming Pantheon mail from your Zoo account by making a few changes to your Pine configuration.

From the Main menu, press 'S' to go to the Setup menu.
From the Setup menu, press 'C' to go the Config menu.
Change the value of user-domain to pantheon.yale.edu
Change the values of
inbox-path
default-fcc
default-saved-msg-folder
postponed-folder
so that they are prefixed by {NetID.mail.yale.edu}, where NetID is your NetID.
Pine is also capable of reading Usenet newsgroups. Ensure that the value of nntp-server (in the Config menu) is set to news.yale.edu, and a News folder should be present on your top-level folder list.

## write
To drop a quick line to another user who is logged in to the same machine as you are, you can use the write command. write takes a single argument, the name of a user, and then transfers subsequent lines of text (i.e., strings followed by a carriage return) that you type at your keyboard to that user's screen. The other user may write you back, thus initiating a two-way, line-by-line conversation. Pressing Control-D or Control-C closes your end of the transmission.

## mesg
Sometimes receiving talk requests and write messages may be annoying. UNIX provides a command called mesg which allows you to prevent such annoyances from occurring. Typing mesg n turns off messaging capability (that is, your ability to receive and send messages), and mesg y turns it back on. Users who attempt to talk or write you while you have mesg n will receive an error message: In addition, the words "(messages off)" will appear in your finger information when you have mesg n in effect.

## jzw
The jzw script is your guide to finding people in the Zoo. The acronym "jzw" stands for "Jim's ZooWho." It was written by James C. Terry (SM '05) as a replacement for tzw ("Turbo ZooWho"), which was itself an offshoot of an older program, zoowho. Normally, jzw is used to obtain a list of users logged in to Zoo machines. The typical output from jzw command might look like this:

NETID      NAME                             NODE 
xf28       Xinyu Feng                       tiger    
fischer    Michael Fischer                  frog     
njf9       Nathan Francis                   jaguar   
mbf6       Marjorie Beth Friedman           newt     
mbf6       Marjorie Beth Friedman           termite  
asg9       Athinodoros Spyrou Georghiades   gator    
jrg45      Julian Graham                    python   
ndg8       Nitin Gupta                      tiger    
ajg36      Alvaro Gutierrez                 cobra    
jh427      Jason Hsueh                      ladybug  
eki2       Emmanuel Imbeah                  lion     
cej9       Collin Jackson                   rattlesnake (console)
Among other things, jzw is handy for finding out who is in the Zoo and where they are sitting, for finding a particular user when the Zoo is crowded, and for finding out the name of the cute girl/guy who is sitting next to you without looking geeky or suspicious (a common problem under the old "asking their name" method). A web interface was once available from the tools page. It's broken now, but the faithful know that it shall work again, when our need is greatest.
Please run the jzw -h for help with using jzw.