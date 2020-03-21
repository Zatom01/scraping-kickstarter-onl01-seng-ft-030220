require 'nokogiri'

def create_project_hash
  
  @@all=[]
  
  html=File.read(fixtures/kickstarter.html)
  
  kickstarter = Nokogiri::HTML(html)
  
  
  
  
  
end