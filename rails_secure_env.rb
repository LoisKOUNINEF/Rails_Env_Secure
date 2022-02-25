def check_input
  abort("Missing app name.") if ARGV.empty?
end

def create_rails_app(app_name)
  system("rails _5.2.6_ new -d postgresql --skip-turbolinks '#{app_name}'")
end

def create_env(app_name)
  Dir.chdir("#{app_name}") do
    file = File.open(".env", "w")
    file.close
  end
end

def create_and_fill_gitignore(app_name)
  Dir.chdir("#{app_name}") do
    file = File.open(".gitignore", "w")
    file.puts ".env"
    file.close
  end
end

def create_database(app_name)
  Dir.chdir("#{app_name}") do
    system("rails db:create")
  end
end

def add_dotenv_to_gemfile(app_name)
  Dir.chdir("#{app_name}") do
    file = File.open("Gemfile", "a")
    file.puts "gem 'dotenv-rails', :groups => [:development, :test]"
    file.close
    system("bundle install")
  end
end

def perform
  app_name = ARGV.to_s.delete '"[]'
  check_input
  create_rails_app(app_name)
  create_env(app_name)
  create_and_fill_gitignore(app_name)
  create_database(app_name)
  add_dotenv_to_gemfile(app_name)
end

perform
