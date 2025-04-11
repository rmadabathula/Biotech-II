print('Hello World!')
1 + 1
print('Hello', 'World!', sep='-')
print('Hello', 'World!', 'World!', sep='-', end='\n')
print('SPSS', 'is', 'a', 'Biostatistic', 'tool', sep='-', end='\n')
print('The result is of 16 times 18', 16*8)


"""
practice.py
Purpose: Python Practice
Author: Ramya Madabathula
Date: April 10, 2025
"""

# Print a friendly message to the console
print('Hello Ramya')

# Make a DNA Sequence
dnaseq = 'GCCGATCGCTATT'

#Print the variable
print(dnaseq)

# Make a variable for number
num = 500

# print the variable
print(num)

# Make a DNA Sequence
dnaseq = 'GNCGATCGCTATT'

# Extract a character
print(dnaseq[1])

# Extract last character
print(dnaseq[-1])

# String slicing
print(dnaseq[1:4])

#Replace a character
print(dnaseq.replace('N', 'G'))

# Activity 10 DNA Sequences
dnaseq = 'ATTGCTAGCTNCGGTCG'

#Replace N with T
print(dnaseq.replace('N', 'T'))

# Extract any character
print(dnaseq[5])

# Extract series of characters
print(dnaseq[1], dnaseq[4], dnaseq[-3])

# List
weekdays = ['Mo', 'Tu', 'We', 'Th', 'Fr']
print(weekdays[3])

# Create append variable
weekdays.append('Sa')
print(weekdays)

# Remove a variable
weekdays.remove('Mo')
print(weekdays)

# Activity: Creating a list of colors
colors = ['Pink', 'Blue', 'Red']

#Print the second color
print(colors[1])

# Add a new color
colors.append('White')
print(colors)

# Remove one color
colors.remove('Blue')
print(colors)

# Print final list
print(colors)


