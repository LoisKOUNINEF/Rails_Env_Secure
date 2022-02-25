## README

# A little script to add .env in the gitignore when creating a new rails app.

I was kinda scared to forget this step and I definitely don't want to owe money I don't have.

# Add "alias newrails='ruby Path/to/rails_secure_env.rb'" to your .zshrc or .bashrc file.

Go in the directory where you want to create your app's folder.
Enter command line "newrails your_app_name" and hit enter.

# Using file.puts "..." :
- Feel free to add any gems you like to use in the "add_dotenv_to_gemfile" method ;
- Feel free to add anything you'd like to ignore in the "create_and_fill_gitignore" method ;
- Feel free to add your keys in the "create_env" method ;
- etc.

