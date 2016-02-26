num_users = 1
num_players = 5
num_rounds = 8
num_games = 2


num_users.times do
  User.create(email: Faker::Internet.email, password: "123")#, name: Faker::Name.name)
end

num_games.times do
  Game.create(name: Faker::Hipster.word, theme: Faker::Team.creature, user_id: rand(1..num_users))
end

30.times do
  Clue.create(text: Faker::Hipster.sentence, pt_value: rand(1..4), game_id: rand(1..num_games))
end

num_players.times do

	Player.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number)
end

num_rounds.times do
	Round.create(url_ext: Faker::Internet.domain_word, game_id: rand(1..num_games))
end
