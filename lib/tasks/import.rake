require 'CSV'
namespace :import do
  desc "import weeks data"
  task weeks: :environment do
    CSV.foreach("weeks.csv") do |row|
      start_date, end_date = row
      Week.create(start_date: start_date, end_date: end_date)
    end
  end
end
