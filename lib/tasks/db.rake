require 'CSV'

namespace :db do
  desc 'Load example data from db/examples.rb'
  task examples: :environment do
    require_relative '../../db/examples'
  end

  desc 'Fill the weeks table with week data'
  task weeks: :environment do
    Week.transaction do
      CSV.foreach(Rails.root + 'data/weeks.csv',
                  headers: true) do |row|
        week = row.to_hash
        next if Week.exists? week
        Week.create!(week)
      end
    end
  end

  unless Rails.env == 'production'
    desc 'Drop and setup the development database with examples'
    task nuke_pave:
    %w(environment db:drop db:create db:migrate db:seed db:examples db:weeks) do
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end
