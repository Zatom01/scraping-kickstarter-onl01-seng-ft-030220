require 'nokogiri'
require 'pry'

def create_project_hash
  
  @@all=[]
  
  html=File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  binding.pry 
  
  #projects:
  kickstarter.css("li.project.grid_4").first
  
  #gives the title of the project
  project.css("h2.bbcard_name strong a").text
  
  #gives the project MOBY DICK thumbnail link 
  project.css("div.project-thumbnail a img").attribute("src").value
  
  #description
  project.css("p.bbcard_blurb").text
  
  #location-name 
  project.css("span.location-name").text
  
  
  
  
end

create_project_hash