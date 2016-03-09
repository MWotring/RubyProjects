require 'rspec'
require "selenium-webdriver"
require_relative '../pageObjects/page'
require_relative '../pageObjects/uptake_home_page'
require_relative '../pageObjects/join_us_page'


describe 'Testing the Uptake site' do

	pageTest = nil

  before :all do
		pageTest = Page.new(Selenium::WebDriver.for(:firefox))
  end

  after :all do
		pageTest.quit
  end

  it "starts by loading the uptake home page" do
		pageTest = pageTest.navigateToUptake
		expect(pageTest.get_page_title).to eq('Uptake – Analytics for the Industrial Internet')
  end

  it "can navigate to Jobs page" do
		pageTest = pageTest.navigateToJobs
		pageTest = pageTest.confirmLanding
  	expect(pageTest.get_page_title).to eq('Join Us | Uptake')
  end

  it "can navigate from Jobs and back to home" do
		pageTest = pageTest.navigateToHome
		expect(pageTest.get_page_title).to eq('Uptake – Analytics for the Industrial Internet')
	end

end
