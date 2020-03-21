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
  
  
  
  
  
end

create_project_hash