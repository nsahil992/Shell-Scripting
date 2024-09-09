# Shell-Scripting-for-Rookies

1. Clone the Repository:
   git clone https://github.com/nsahil992/Shell-Scripts-for-Rookies

2. Navigate to the Project Directory:

3. Make the Script Executable:
  Ensure the Git deploy script has execute permissions. Run the following command to make it executable:
  `chmod +x gitdeploy.sh`

4. Test the Script:
  You can manually run the script to make sure it's working as expected:
  `./gitdeploy.sh`

5. Set up Alias:

   a) Open the Shell Configuration File:
      Depending on the shell you use, you’ll edit either .bashrc (for Bash users) or .zshrc (for Zsh users). This file is where you define your aliases.

      For Bash:  `vim ~/.bashrc`
      For Zsh:   `vim ~/.zshrc`

   b) Add the Alias:
      Scroll to the end of the file, press i to insert, and add the following alias:
      `alias deploy='/path/to/your-repository/gitdeploy.sh'`
      Example: alias deploy='/Desktop/Shell-Scripting/AutomationProjects/gitdeploy.sh deploy' (It should be the path of where you deploy script is stored)

   c) Reload the Shell Configuration:
      To apply the changes, reload the shell configuration:

      For Bash: `source ~/.bashrc`
      For Zsh: `source ~/.zshrc`

6. Use the Alias:
   Now, instead of running ./gitdeploy.sh, you can simply type: `deploy`


   ### For more information, visit: https://sahilnaik.hashnode.dev/scripting-mischief-automate-the-boring-stuff

