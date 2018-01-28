class NslController < ApplicationController
	def index
    jsonFiles = File.read("NSL.json")
    jsonArray = JSON.parse(jsonFiles)
    timestampArray = []
    jsonArray.each do |jsonItem|
      timestampObj = DateTime.strptime(jsonItem['timestamp'], '%Y-%m-%dT%H:%M:%S')
      timestampObj = timestampObj + 8.hours
      timestampArray.push((timestampObj.change(:offset => '+0800')).to_date)
      timestampArray = timestampArray.uniq.sort()
    end
    @timestampArray = timestampArray
  end
end
