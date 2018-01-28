class HomeController < ApplicationController
  def index
    render :layout => false
  end
  def ewl
    jsonFiles = File.read("EWL.json")
    jsonArray = JSON.parse(jsonFiles)
    timestampArray = []
    jsonArray.each do |jsonItem|
      if jsonItem["text"].include? "[EWL]"
        timestampObj = DateTime.strptime(jsonItem['timestamp'], '%Y-%m-%dT%H:%M:%S')
        timestampObj = timestampObj + 8.hours
        timestampArray.push((timestampObj.change(:offset => '+0800')).to_date)
        timestampArray = timestampArray.uniq.sort()
      end
    end
    @timestampArray = timestampArray
  end
  def nsl
    jsonFiles = File.read("NSL.json")
    jsonArray = JSON.parse(jsonFiles)
    timestampArray = []
    jsonArray.each do |jsonItem|
      if jsonItem["text"].include? "[NSL]"
        timestampObj = DateTime.strptime(jsonItem['timestamp'], '%Y-%m-%dT%H:%M:%S')
        timestampObj = timestampObj + 8.hours
        timestampArray.push((timestampObj.change(:offset => '+0800')).to_date)
        timestampArray = timestampArray.uniq.sort()
      end
    end
    @timestampArray = timestampArray
  end
  def ccl
    jsonFiles = File.read("CCL.json")
    jsonArray = JSON.parse(jsonFiles)
    timestampArray = []
    jsonArray.each do |jsonItem|
      if jsonItem["text"].include? "[CCL]"
        timestampObj = DateTime.strptime(jsonItem['timestamp'], '%Y-%m-%dT%H:%M:%S')
        timestampObj = timestampObj + 8.hours
        timestampArray.push((timestampObj.change(:offset => '+0800')).to_date)
        timestampArray = timestampArray.uniq.sort()
      end
    end
    @timestampArray = timestampArray
  end
  def bplrt
    jsonFiles = File.read("BPLRT.json")
    jsonArray = JSON.parse(jsonFiles)
    timestampArray = []
    jsonArray.each do |jsonItem|
      if jsonItem["text"].include? "[BPLRT]"
        timestampObj = DateTime.strptime(jsonItem['timestamp'], '%Y-%m-%dT%H:%M:%S')
        timestampObj = timestampObj + 8.hours
        timestampArray.push((timestampObj.change(:offset => '+0800')).to_date)
        timestampArray = timestampArray.uniq.sort()
      end
    end
    @timestampArray = timestampArray
  end
end
