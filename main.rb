require_relative 'app'

def list_options
  '
      1 - List all books
      2 - List all people
      3 - Add a book
      4 - Create a person
      5 - Create a rental
      6 - Show all rentals for a given ID
      7 - Exit
    '
end

def options(option, app)
  actions = {
    1 => method(:list_books),
    2 => method(:list_people),
    3 => method(:add_book),
    4 => method(:add_person),
    5 => method(:add_rental),
    6 => method(:list_rentals),
    7 => method(:exit_option)
  }

  action = actions[option]
  if action
    action.call(app)
  else
    puts 'Invalid selection'
  end
end

# Define separate methods for each option

def add_book(app)
  app.create_book
end

def list_books(app)
  app.list_all_books
end

def add_person(app)
  app.create_person
end

def list_people(app)
  app.list_all_people
end

def add_rental(app)
  app.add_rental
end

def list_rentals(app)
  app.list_all_rentals
end

def exit_option(_app)
  exit
end

def main
  app = App.new
  puts "Welcome to the School Library App!\n\n"

  loop do
    puts list_options
    option = gets.chomp.to_i
    options(option, app)
  end
end

main
