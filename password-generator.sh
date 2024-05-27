#!/bin/bash
upper_case_letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
lower_case_letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
symbols=("$" "!" "@" "#" "{" "}" "[" "]" "*" "&")
len_upper_array=${#upper_case_letters[@]}
len_lower_array=${#lower_case_letters[@]}
len_symbols=${#symbols[@]}
password=""
for ((i=0; i<4; i++));
do
  random_upper_letter=$(shuf -i 0-$len_upper_array -n 1)
  random_lower_letter=$(shuf -i 0-$len_lower_array -n 1)
  random_symbol=$(shuf -i 0-$len_symbols -n 1)
  password+=${upper_case_letters[$random_upper_letter]}
  password+=${lower_case_letters[$random_lower_letter]}
  password+=${symbols[$random_symbol]}
done;
echo $password