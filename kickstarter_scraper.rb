require 'nokogiri'
require 'pry'

def create_project_hash
  
  html=File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  
  projects={}
  
  #iterate through the projects 
  kickstarter.css("li.project.grid_4").each do |project|
    title=project.css
    projects[project]={}
  end 
  
  #returns the projects hash 
  projects 
end 
  
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
  
  #percent funded
  project.css("ul.project-stats li.first.funded strong").text
  
  #removes percentage sign and converts into integer 
  project.css("ul.project-stats li.first.funded strong").text.gsub("%","")
  
  
end

create_project_hash