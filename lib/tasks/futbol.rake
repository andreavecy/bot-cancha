require 'byebug'
require 'watir'
namespace :futbol do
  desc 'TODO'

  task scraper: :environment do
    browser = Watir::Browser.new :firefox
    browser.goto('https://reservadeportes.com/index.php?client=scdescription&scid=ADI&iframe=iframe')
    email = browser.text_fields[0]
    # email.set 'Kagiomar_021@hotmail.com'
    # email.set 'andreavecino94@gmail.com'
    email.set 'klausotop@hotmail.com'
    password = browser.text_fields[1]
    # password.set '3814'
    # password.set '4441'
    password.set '2408'
    browser.form.submit
    browser.element(xpath: '/html/body/div[2]/div/div[1]/center[2]/div/div[4]').click
    browser.a(xpath: '/html/body/div[5]/div/a[2]').click
    browser.element(xpath: '/html/body/div[7]/div[9]/div[2]/a[2]').click
    # end
    # byebug
    browser.element(xpath: '//*[@id="pterms"]/input').click
    browser.element(xpath: '//*[@id="frmajax"]/center/input').click
    browser.screenshot.save '/Users/andrea.vecino/Projects/scraper/log/reserva.png' until sleep(10.seconds)
  end

  task scraper_second: :environment do
    browser = Watir::Browser.new :firefox
    browser.goto('https://reservadeportes.com/index.php?client=scdescription&scid=ADI&iframe=iframe')
    email = browser.text_fields[0]
    # email.set 'klausotop@hotmail.com'
    email.set 'karemastrid@gmail.com'
    password = browser.text_fields[1]
    # password.set '2408'
    password.set '5663'
    browser.form.submit
    browser.element(xpath: '/html/body/div[2]/div/div[1]/center[2]/div/div[4]').click
    browser.a(xpath: '/html/body/div[5]/div/a[2]').click
    browser.element(xpath: '/html/body/div[7]/div[10]/div[2]/a[2]').click
    # end
    # byebug
    browser.element(xpath: '//*[@id="pterms"]/input').click
    browser.element(xpath: '//*[@id="frmajax"]/center/input').click
    browser.screenshot.save '/Users/andrea.vecino/Projects/scraper/log/reserva.png' until sleep(10.seconds)
  end

  task scraper_miercoles_sec: :environment do
    browser = Watir::Browser.new :firefox
    browser.goto('https://reservadeportes.com/index.php?client=scdescription&scid=ADI&iframe=iframe')
    email = browser.text_fields[0]
    email.set 'Kagiomar_021@hotmail.com'
    # email.set 'andreavecino94@gmail.com'
    password = browser.text_fields[1]
    password.set '3814'
    # password.set '4441'
    browser.form.submit
    browser.element(xpath: '/html/body/div[2]/div/div[1]/center[2]/div/div[4]').click
    browser.a(xpath: '/html/body/div[5]/div/a[2]').click
    browser.element(xpath: '/html/body/div[7]/div[9]/div[2]/a[2]').click
    # end
    # byebug
    browser.element(xpath: '//*[@id="pterms"]/input').click
    browser.element(xpath: '//*[@id="frmajax"]/center/input').click
    browser.screenshot.save '/Users/andrea.vecino/Projects/scraper/log/reserva.png' until sleep(10.seconds)
  end

  task scraper_lunes: :environment do
    browser = Watir::Browser.new :firefox
    browser.goto('https://reservadeportes.com/index.php?client=scdescription&scid=ADI&iframe=iframe')
    email = browser.text_fields[0]
    email.set 'Kagiomar_021@hotmail.com'
    # email.set 'andreavecino94@gmail.com'
    password = browser.text_fields[1]
    password.set '3814'
    # password.set '4441'
    browser.form.submit
    browser.element(xpath: '/html/body/div[2]/div/div[1]/center[2]/div/div[4]').click
    browser.a(text: 'Lunes').click
    # browser.a(text: 'Miercoles').click
    # if browser.element(xpath: "/html/body/div[7]/div[3]/div[1]/span").text == 'CANCHA EUGENIO MACIAS'
    # browser.element(xpath: '/html/body/div[7]/div[3]/div[2]/a[2]').click
    browser.element(xpath: '/html/body/div[7]/div[4]/div[2]/a[2]').click # electrificadora
    # end
    # byebug
    browser.element(xpath: '//*[@id="pterms"]/input').click
    browser.element(xpath: '//*[@id="frmajax"]/center/input').click
    browser.screenshot.save '/Users/andrea.vecino/Projects/scraper/log/reserva.png' until sleep(10.seconds)
  end
end
