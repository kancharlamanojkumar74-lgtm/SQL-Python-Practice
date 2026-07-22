
sentence = "data science data analytics"

frequency = {}

for word in sentence.split():
    if word in frequency:
        frequency[word] += 1
    else:
        frequency[word] = 1

print(frequency)