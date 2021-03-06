num_users = 2
num_players = 5
num_rounds = 8
num_games = 2


num_users.times do
  User.create!(email: Faker::Internet.email, password: "password")#, name: Faker::Name.name)
end

num_games.times do
  Game.create!(name: Faker::Hipster.word, theme: Faker::Team.creature, user_id: rand(1..num_users))
end

30.times do
  Clue.create!(text: Faker::Hipster.sentence, keyword: Faker::Hipster.word,  pt_value: rand(1..4), game_id: rand(1..num_games))
end

num_players.times do

	Player.create!(user_id: rand(1..num_users), name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number)
end

num_rounds.times do
	Round.create!(url_ext: Faker::Internet.domain_word, game_id: rand(1..num_games))
end

(1..num_rounds).to_a.each do |round|
	rand(1..num_players).times do
		PlayersRound.create(player_id: rand(1..num_players), round_id: round)
	end
end
