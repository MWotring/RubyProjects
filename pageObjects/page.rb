require 'page-object'
require 'selenium-webdriver'


class Page
	@@driver = nil
	
	def initialize driver
		@@driver = driver
		@@driver.manage.timeouts.implicit_wait = 10
	end
	
	def navigateToUptake
		@@driver.navigate.to('http://www.uptake.com')
		return Uptake_home_page.new(@@driver)
	end
	
	def get_page_title
		return @@driver.title
	end

	def quit
		@@driver.quit
	end

end