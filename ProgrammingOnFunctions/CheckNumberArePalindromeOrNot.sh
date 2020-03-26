#!/bin/bash -x

function checkPalindrome() {
   num=$1;
   local rem;
   local revNum;
   while [  $((num%10)) -ne   0  ]
   do
      rem=$((num%10));
      num=$((num/10));
      revNum="${revNum}${rem}"
   done
   echo  "$revNum"
}

read  -p "Enter Number : " number;
result="$(  checkPalindrome   "number"  )"

if [  "$result" == "$number"   ];
then
   echo  "$number Is Palindrome"
else
    echo  "$number  Is Not Palindrome"
fi
