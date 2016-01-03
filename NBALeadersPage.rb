

require 'selenium-webdriver'
require 'spreadsheet'

# POM-designed class that represents
# https://stats.nba.com/teams

class NBALeadersPage
	# array of PlayerStatsInfo object
	attr_accessor :player_stats_array	

	# Selenium Webdriver object
	attr_accessor :driver

	attr_accessor :spreadsheet_filepath




	def initialize(filepath)
		@driver = Selenium::WebDriver.new(:firefox)
		@player_stats_array = []
		@spreadsheet_filepath = filepath
	end

	def read_leaders_table	
		@driver.find_elements(:css, 'tr.ng-scope')
		player_html_elements.each do |element|
			read_table_entry_info(element)
		end
	end

	# creates a PlayerStatsInfo object and
	# pushes it into player_stats_array
	def read_table_entry_info(element)
		player_name = element.find_element(:css, ' .player > .ng-binding').text
		player_info = PlayerStatsInfo.new(player_name)
		player_stats = element.find_elements(:css, 'td.ng-binding')
		player_info.receive_and_associate_stats(player_stats)
		return player_info
	end
end