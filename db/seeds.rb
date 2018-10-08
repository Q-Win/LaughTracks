
#
# Comedian.destroy_all

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

require_relative "../app/models/comedian"
require_relative "../app/models/special"

Comedian.create(
  name: "Jim Carrey",
  age: 56,
  city: "Newmarket, Canada",
)

Comedian.create(
  name: "Joe Rogan",
  age: 51,
  city: "Boston, MA",
)

Comedian.create(
  name: "Bill Burr",
  age: 50,
  city: "Boston, MA",
)

Comedian.create(
  name: "Mitch Hedberg",
  age: 37,
  city: "Saint Paul, MN",
)

Comedian.create(
  name: "Kat Williams",
  age: 47,
  city: "Cincinnati, OH",
)

Comedian.create(
  name: "George Carlin",
  age: 71,
  city: "New York, NY",
)

Comedian.create(
  name: "Dave Chapelle",
  age: 45,
  city: "Washington D.C.",
)

Comedian.create(
  name: "John Mulaney",
  age: 34,
  city: "Chicago, IL",
)

Comedian.create(
  name: "Richard Pryor",
  age: 65,
  city: "Los Angeles, CA",
)

Comedian.create(
  name: "Jerry Seinfeld",
  age: 64,
  city: "New York, NY",
)

Comedian.create(
  name: "Robin Williams",
  age: 63,
  city: "Chicago, IL",
)

Comedian.create(
  name: "Kevin Hart",
  age: 39,
  city: "Philladelphia, PA",
)

Special.create(
  comedian_id: 2,
  name: "Rocky Mountain High",
  length: 246,
)

Special.create(
  comedian_id: 2,
  name: "Talking Monkeys in Space",
  length: 272,
)

Special.create(
  comedian_id: 2,
  name: "Shiny Happy Jihad",
  length: 111,
)

Special.create(
  comedian_id: 3,
  name: "I'm Sorry You Feel That Way ",
  length: 152,
)

Special.create(
  comedian_id: 4,
  name: "Mitch All Together",
  length: 221,
)

Special.create(
  comedian_id: 3,
  name: "Why Do I Do This?",
  length: 362,
)

Special.create(
  comedian_id: 3,
  name: "Let It Go",
  length: 350,
)

Special.create(
  comedian_id: 3,
  name: "You People Are All The Same",
  length: 400,
)

Special.create(
  comedian_id: 8,
  name: "New in Town",
  length: 200,
)

Special.create(
  comedian_id: 12,
  name: "Laugh At My Pain",
  length: 150,
)

Special.create(
  comedian_id: 11,
  name: "Live on Broadway",
  length: 225,
)

Special.create(
  comedian_id: 9,
  name: "Richard Pryor Live!",
  length: 242,
)

Special.create(
  comedian_id: 7,
  name: "Killing Them Softly",
  length: 60,
)

Special.create(
  comedian_id: 6,
  name: "It's Bad For Ya",
  length: 100,
)
