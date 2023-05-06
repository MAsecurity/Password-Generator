import random
import pyfiglet
  
banner = pyfiglet.figlet_format("Password Generator")
print(banner,"\t\t\t\tCreated By Mohamed")
q1 = input("\nPassword Generator \n\n1.Would you like to generate a strong password?, 2.Would you like to quit: ")

q1 = int(q1)

if q1 == 1:
    uppercase_letters ="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    lowercase_letters = uppercase_letters.lower()

    numbers = "0123456789"

    symbols = "()[]{},;:.-/\\?+*#!£$"


    upper,lower,nums,syms = True, True, True, True

    all = ""
    if upper:
        all += uppercase_letters

    if lower:
        all += lowercase_letters
    if nums:
        all += numbers

    if syms:
        all += symbols

    length = 20

    amount = 1
    for x in range(amount):
        password = "".join(random.sample(all, length))
        print (password)
if q1 == 2:

    quit()

