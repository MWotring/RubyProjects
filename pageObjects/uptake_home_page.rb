require_relative '../pageObjects/page'

class Uptake_home_page < Page

	def initialize(driver)
		super(driver)
	end

	def navigateToJobs
		@@driver.find_element(:id, 'menu-item-4167').click
		return JoinUsPage.new(@@driver)
	end

end
