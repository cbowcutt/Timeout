# This represents a statistical summary
# of a particular NBA player, including:
# GP, MIN, PTS, FGM, FGA, FG%, 3PM, 3PA, 3P%,
# FTM, FTA, FT%, OREB, DREB, REB, AST, STL, BLK,
# TOV, EFF

class PlayerStatsInfo


	# statistical attributes
	attr_accessor :rank
	attr_accessor :games_played_this_season
	attr_accessor :average_minutes_per_game
	attr_accessor :average_points_per_game
	attr_accessor :field_goals_made
	attr_accessor :field_goals_average
	attr_accessor :field_goals_percentage
	attr_accessor :three_pointers_made
	attr_accessor :three_pointers_attempted
	attr_accessor :three_pointer_percentage
	attr_accessor :free_throws_made
	attr_accessor :free_throws_attempted
	attr_accessor :free_throws_percentage
	attr_accessor :offensive_rebounds	
	attr_accessor :defensive_rebounds
	attr_accessor :rebounds
	attr_accessor :assists
	attr_accessor :steals
	attr_accessor :blocks
	attr_accessor :turnovers
	attr_accessor :efficiency	

	attr_accessor :player_name							

	def initialize(player_name)
		@player_name = player_name
	end

	# this receives and orders a stats 
	# TODO: Possibly hash attributes into an ordered array
	# and then associate each attribute with the stats_array
	# element that has the same index
	def receive_and_associate_stats(stats_array)
		ordered_instance_attributes = self.attributes

		for i in 0..stats_array.length 
			ordered_instance_attributes[i] = stats_array[i]
		end	

		# for i in 0..stats_array.length do
		# 	case i
		# 	when 0
		# 		@rank = stats_array[i].text	
		# 	when 1
		# 		@games_played_this_season = stats_array[i].text	
		# 	when 2	
		# 		@average_minutes_per_game = stats_array[i].text	
		# 	when 3
		# 		@average_points_per_game = stats_array[i].text		
		# 	when 4
		# 		@field_goals_made = stats_array[i].text			
		# 	when 5
		# 		@field_goals_average = stats_array[i].text	
		# 	when 6
		# 		@three_pointers_made = stats_array[i].text		
		# 	when 7
		# 		@three_pointers_attempted = stats_array[i].text			
		# 	when 8
		# 		@free_throws_made = stats_array[i].text			
		# 	when 9
		# 		@free_throws_attempted = stats_array[i].text		
		# 	when 10
		# 		@free_throws_percentage = stats_array[i].text			
		# 	when 11
		# 		@offensive_rebounds = stats_array[i].text	
		# 	when 12
		# 		@defensive_rebounds = stats_array[i].text
		# 	when 13
		# 		@rebounds = stats_array[i].text
		# 	when 14
		# 		@assists = stats_array[i].text
		# 	when 15
		# 		@steals = stats_array[i].text
		# 	when 16
		# 		@blocks	= stats_array[i].text
		# 	when 17
		# 		@efficiency = stats_array[i].text																												
		# end

	end
end
