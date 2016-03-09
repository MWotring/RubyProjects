require 'page-object'
require_relative '../pageObjects/page'



class JoinUsPage < Page

	def initialize(driver)
		super(driver)
	end

#attributes

	def expected_title
		expected_title = "Join Us | Uptake"
	end

#methods

	def confirmLanding 
		raise "I believe I've gone astray" unless @@driver.title.include? expected_title
		return JoinUsPage.new(@@driver)
	end
	

	def navigateToHome
		@@driver.find_element(:css, "div#logo a").click
		return Uptake_home_page.new(@@driver)
	end
end