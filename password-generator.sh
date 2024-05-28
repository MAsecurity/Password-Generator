#!/bin/bash
#Create arrays
upper_case_letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
lower_case_letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
symbols=("$" "!" "@" "#" "{" "}" "[" "]" "*" "&")
numbers=(1 2 3 4 5 6 7 8 9 0)
#Calculate length of arrays
len_upper_array=${#upper_case_letters[@]}
len_lower_array=${#lower_case_letters[@]} 
len_symbols=${#symbols[@]}
len_numbers=${#numbers[@]}
#Since we are indexing from 0 ensure their is no out of range error by updating the length
((len_upper_array = len_upper_array - 1))
((len_lower_array = len_lower_array - 1))
((len_symbols = len_symbols - 1))
((len_numbers = len_numbers - 1))
password=""
for ((i=0; i<4; i++));
do
  random_upper_letter=$(shuf -i 0-$len_upper_array -n 1)
  random_lower_letter=$(shuf -i 0-$len_lower_array -n 1)
  random_symbol=$(shuf -i 0-$len_symbols -n 1)
  random_number=$(shuf -i 0-$len_numbers -n 1)
  password+=${upper_case_letters[$random_upper_letter]}
  password+=${lower_case_letters[$random_lower_letter]}
  password+=${symbols[$random_symbol]}
  password+=${numbers[$random_number]}
done;
echo $password