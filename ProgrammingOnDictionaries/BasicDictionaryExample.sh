#!/bin/bash	-x
#Note using Latest Bash Version 5.0

declare	-A	sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo	"Dog Sound "	${sounds[dog]}	        #Dog's Sounds
echo	"All Animal Sound	"	${sounds[@]}	    #All Animal Sounds(values)
echo	"Animal "	${!sounds[@]}             	#All Animal(keys)
echo	"Number Of Animals "	${#sounds[@]}	  #Number Of Elements
unset	sounds[dog]                         	#delete dog
