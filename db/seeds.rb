
#
# Comedian.destroy_all

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

require_relative "../app/models/comedian"

Comedian.create(
  name: "Jim Carrey",
  age: 56,
  city: "Newmarket, Canada",
)

Comedian.create(
  name: "Joe Rogan",
  age: 50,
  city: "Boston, MA",
)

Comedian.create(
  name: "Bill Burr",
  age: 48,
  city: "Boston, MA",
)

Comedian.create(
  name: "Mitch Hedberg",
  age: 48,
  city: "Boston, MA",
)
