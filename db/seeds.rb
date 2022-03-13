# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# m = Candidate.new
#   m.Name= "John",
#   m.Surname= "Butler",
#     m.State="SA",
#     m.PartyAb="LP",
#     m.PartyName="Liberal",
#     m.CandidateNumber="23343",
#     m.count="32412".to_i
#
#
# puts m.Name

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vote_data.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Candidate.new
  t.Name = row['GivenNm']
  t.State = row['StateAb']
  t.Surname = row['Surname']
  t.PartyAb = row['PartyAb']
  t.PartyName = row['PartyNm']
  t.CandidateNumber = row['CandidateID']
  t.count = row['TotalVotes'].to_i
  t.save
  puts "#{t.Name}, #{t.PartyAb} saved"
end