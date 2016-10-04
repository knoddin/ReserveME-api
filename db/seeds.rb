# require 'CSV'
#
# # namespace :db do
# #   desc 'Load example data from db/examples.rb'
# #   task examples: :environment do
# #     require_relative '../../db/examples'
# #   end
#
# desc 'Fill the weeks table with week data'
# task weeks: :environment do
#   Week.transaction do
#     CSV.foreach(Rails.root + 'data/weeks.csv', headers: true) do |row|
#       week = row.to_hash
#       next if Week.exists? week
#       Week.create!(week)
#     end
#   end
# end
require 'CSV'
Week.transaction do
  CSV.foreach(Rails.root + 'data/weeks.csv', headers: true, header_converters: -> (h) { h.downcase.to_sym }) do |week|
   p week
   Week.create(start_date: week[:start_date], end_date: week[:end_date].to_s)
 end
end
