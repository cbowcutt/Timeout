class SpreadsheetCreator



	def initialize
	end

	def make_leaders_spreadsheet(filepath)
		NBALeadersPage.new do |page|
			page.read_leaders_table

		end
	end

	def make_spreadsheet(data, filepath)
		Spreadsheet.client_encoding = 'UTF-8'

		book = Spreadsheet::Workbook.new
		sheet = book.create_worksheet :name => 'leaders'

		# name the n-th entry of the first row with the data's elements'
		# nth attribute

		# insert attributes for each object in data into sheet
		first_data_object = data[0]
		attribute_keys = data.attributes
		for i in 0.. attribute_keys.length
			sheet[0][i] = "#{attribute_keys[i]}"
		end

		for i in 0.. data.length
			data_object = data[i]
			attributes = data_object.attributes
			for j in 0.. attributes_length
				sheet[i][j] = attributes[j]
			end
		end

		book.write 'destination.xls'
	end
end
