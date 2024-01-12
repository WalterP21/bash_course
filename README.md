# Shell Scripting
- A script is simply a file that contains a series of commands. An interpreter executes commands in the script
- Once a script is written, you'll need to actually give yourself permission to run it
    - ex. `chmod 755 script.sh`
    - with `ls -l` you can see scripts current permisions
- `#!/bin/bash` will be the first line in most scripts. The `#!` is commonly referred to as 'Shebang' what follows that is the actual interpreter used to run the script. In this example, it is a bash interpreter but could also be different such as:
    - `#!/bin.csh`
    - `#!/bin.ksh`
    - `#!/bin.zsh`
- if you do not provide a shebang, the commands will be executed using your shell. This will work sometimes, but its best to be explicit
- You can actually write scripts in an specific language. See `python_script.py` as an example (doesn't currently work as no python interpreter is intalled)
- You can assign the output of a command to a variable. See `command_variable.sh`
- To create a test in a script the syntax is `[ condition-to-test-for ]`
    - `-d FILE` True if file is a directory
    - `-e FILE` True if file exists
    - `-f FILE` True if file exists and is a regular file
    - `-r FILE` True if file is readable to you
    - `-s FILE` True if file exists and it is not empty
    - `-w FILE` True if file writable to you
    - `-x FILE` True if file is executable by you
- Accepting user input (STDIN): `read -p "PROMPT" VARIABLE`
- Every time a command is executed it returns an exit status. Exit statuses range from 0 to 255
    - `0` is success, all other numbers are error conditions
- `$?` contains the return code of the previously executed command
- `&&` will execute the second command if the first command succeeds, `||` will execute the second command if the first command fails
- if you want to chain multiple commands together on the same line, you can do that by seperating them with `;`
- To explicitly define the exit code of 1 of your script: `exit 1`
- `man <command>` will give you some details about a command. Ex. `man ping`
- When calling a function in shell scripts, do not use parentheses
- functions can also accept positional parameters. `$@` contains all of the parameters
- Functions are kinda like shell scripts within a shell script - they also have exit statuses
- Wildcards - A character or string used for pattern matching
        - Globbing expands the wildcard pattern into a list of files and/or directories
        - `*` - mathces zero or mor characters
        - `?` - matches exactly one character
        - `[]` - a charachter clss. Matches any of the characters included in the brackets
        - `[0-3]` - a character range from 0-3
        - `[[:digit]]` - named character class (digits)
        - `\` - escape character. Use if you want to match a wildcard character
- The `logger` command generates syslog messages
- While loop format:
```
while [ CONDITION_IS_TRUE ]
do
    command1 
    command2
done
```
- `#!/bin/bash-x` - this will print comands as they execute (`-x`)
        - also can wrap specific sections of the script via `set -x` and `set +x`
- `-e` - Exit on error
- Sed - stream editor
        - Example sed command `sed 's/file/replacement/' test_file.txt` - this will replace the word 'file' with 'replacement' in test_file.txt. Note: just the stream output, doesn't update the actual file
        - Same thing, but case insensitive: `sed 's/file/replacement/i' test_file.txt`