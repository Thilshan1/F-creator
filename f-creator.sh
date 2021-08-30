#!bin/bash
# The F-CREATOR v2 - GPG File protector by Thilshan De Silva (ZIKO)
#
# About:
#			F-CREATOR simple program for secure files on your system. Build with The GNU Privacy
# Gurd.Original F-CREATOR  concept created  by Thilshan De Silva (@ZIKO). This bug fixed version
# (F-CREATOR v2) developed by Thumula Basura Suraweera (@anoxtovo).
#
# author	: Thilshan De Silva
# project	: F-CREATOR
# Version	: v2-2021

# -- colors --

colfred=""
echo
# -------------------------------------
echo -e "\x1b[37;91m 	==========> F - C R E A T O R <========== \x1b[m"
echo ""
echo -e "\x1b[37;95m F-creator this tool help you to make normal folders/files ,
 encrypted & password protected files.\x1b[m"
 echo ""
echo -e "                           Author - \x1b[37;91m Thilshan de silva (ZIKO)\x1b[m"
# -------------------------------------
echo ""
echo " What do yoy want to create ?"
echo ""
echo " o - create folder "
echo " i - create file "
echo " e - create encrypted file "
echo " d - decrypt file "
echo ""
read -p " Type here => " an
if [ $an == o ]
then
echo -e "\x1b[37;96m"
read -p " Enter your folder name => " foname
mkdir $foname
echo ""
fi
if [ $an == i ]
then
	read -p "Enter your file name => " aa
	read -p "Enter your file extention => " bb
touch $aa.$bb
fi
echo ""
if [ $an == e ]
then
echo ""	
read -p " Enter your file name => " finame
echo ""
read -p " Enter your file extention => " exname
touch $finame.$exname
gpg -c $finame.$exname
echo ""
fi
if [ $an == d ]
then
read -p "Enter filename & extention to decrypt => " de
gpg $de.gpg
fi
