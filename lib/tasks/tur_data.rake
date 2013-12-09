namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_countries
    make_regions
    make_cities
    make_camps
    
  end
end

def make_countries
  
  2.times do |n|
    name  = Faker::Address.country    
    Country.create!(name:  name)
  end
end

def make_regions
  countries = Country.all
  2.times do |n|
    name  = Faker::Address.state    
    countries.each { |country| country.regions.create!(name: name) }
  end
end

def make_cities
  regions = Region.all
  5.times do |n|
    name  = Faker::Address.city    
    regions.each { |region| region.cities.create!(name: name) }
  end
end

def make_camps
  cities = City.all
  2.times do |n|
    name  = Faker::Company.name 
    description = Faker::Lorem.sentence(5)   
    cities.each { |city| city.camps.create!(name: name, description: description) }
  end
end

