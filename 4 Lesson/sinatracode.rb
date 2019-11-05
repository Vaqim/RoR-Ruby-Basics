require './pet'
require 'sinatra'

set :pets, []

helpers do
	def pet
		pets[params['index'].to_i]
	end

	def pets
		settings.pets
	end
end

get('/') do
	File.read('index.html')
end

post ('/fnewpet') do
	puts 'Name first pet: ' + params['name']
	pets << Cat.new(params['name'])
	redirect '/play/' + (pets.count - 1).to_s
end

get ('/play/:index') do
	redirect '/' unless pet
	return erb :'end.html', locals:{pet: pet} if pet.alive != 'OK'
	erb :'play.html', locals:{pet: pet}
end

post ('/actions/:index') do
	puts params['index'] + params['action_type'].to_s

	case params['action_type']
	when 'look'
		pet.look
	when 'wash'
		pet.wash
	when 'eat'
		pet.food
	when 'play'
		pet.play
	when 'sleep'
		pet.sleep
	when 'wake_up'
		pet.wake_up
	when 'heal'
		pet.heal
	end
	redirect '/play/' + params['index']
end

post ('/rename/:index') do
	pet.rename(params['name'])
	redirect '/play/' + params['index']
end