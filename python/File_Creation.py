# File Creation
try:
    with open("my_file.txt", "w") as file:
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Another line with some text and numbers: 987\n")
except PermissionError:
    print("Permission denied. Could not create or write to the file.")
except Exception as e:
    print("An error occurred:", e)
else:
    print("File 'my_file.txt' created successfully.")

# File Reading and Display
try:
    with open("my_file.txt", "r") as file:
        print("Contents of 'my_file.txt':")
        for line in file:
            print(line, end="")
except FileNotFoundError:
    print("File 'my_file.txt' not found.")
except Exception as e:
    print("An error occurred:", e)

# File Appending
try:
    with open("my_file.txt", "a") as file:
        file.write("This is line 4 (appended)\n")
        file.write("More appended text\n")
        file.write("Final line appended\n")
except PermissionError:
    print("Permission denied. Could not append to the file.")
except Exception as e:
    print("An error occurred:", e)
else:
    print("Text appended to 'my_file.txt' successfully.")
finally:
    print("File handling complete.")
