set :output, '/Users/andrea.vecino/Projects/scraper/log/cron_log.log'

# every :thursday, at: '12am' do
#   rake 'futbol:scraper'
# end

# every :tuesday, at: '12am' do
#   rake 'futbol:scraper_miercoles'
# end

# every :tuesday, at: '12am' do
#   rake 'futbol:scraper_miercoles_sec'
# end

# every :sunday, at: '12am' do
#   rake 'futbol:scraper_lunes'
# end

# every :thursday, at: '12am' do
#   rake 'futbol:scraper_second'
# end

every :wednesday, at: '12am' do
  rake 'futbol:scraper'
end

every :wednesday, at: '12am' do
  rake 'futbol:scraper_second'
end
