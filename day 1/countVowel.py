text =input("enter a string")

count = sum(1 for char in text.lower() if char in "aeiou")

print("Number of vowels:", count)