namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_countries
    make_regions
    make_cities
    make_events
    
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
  countries = Country.all
  regions = Region.all
  5.times do |n|
    name  = Faker::Address.city
    country = n+1    
    regions.each { |region| region.cities.create!(name: name, country_id: country) }
  end
end

def make_events
  countries = Country.all
  regions = Region.all
  cities = City.all
  2.times do |n|
    name  = Faker::Company.name 
    country = n+1
    region = n+1
    description = Faker::Lorem.sentence(25)   
    cities.each { |city| city.events.create!(name: name, description: description, 
                                              country_id: country, region_id: region) }
  end
end

