## A little script to add `.env` in the `.gitignore` when creating a new rails app.

I was kinda _scared_ to forget this step and I **_definitely_** don't want to owe money ~~I don't have~~.

### Create an alias.
Add `alias newrails='ruby Path/to/rails_secure_env.rb'` to your `.zshrc` or `.bashrc` file.

### Create Rails app.
Go in the directory where you want to create your app's folder.
Enter command line `newrails your_app_name` and hit enter.

***


#### Customize the script to fit your own needs.
Using `file.puts "..."` between `File.open` and `file.close` :
- Feel free to add any gems you like to use in the `add_dotenv_to_gemfile` method ;
- Feel free to add anything you'd like to ignore in the `create_and_fill_gitignore` method ;
- Feel free to add your keys in the `create_env` method **be sure to only save this script _locally_ in that case** ;
- etc.
