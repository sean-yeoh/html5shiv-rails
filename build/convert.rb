require 'open-uri'
require 'json'

class Convert

  def process
    get_html5shiv_files.each do |name|
      file = open("https://raw.github.com/aFarkas/html5shiv/master/dist/#{name}").read
      File.open("vendor/assets/javascripts/#{name}", "w+") do |f|
        puts "Saving: #{name}"
        f.write(file)
      end
    end
  end
  

private

  # Get the sha
  def get_tree_sha
    sha = nil
    trees = open('https://api.github.com/repos/aFarkas/html5shiv/git/trees/master').read
    trees = JSON.parse trees
    trees['tree'].find{|t| t['path'] == 'dist'}['sha']
  end

  def get_html5shiv_files
    files = open("https://api.github.com/repos/aFarkas/html5shiv/git/trees/#{get_tree_sha}").read
    files = JSON.parse files
    files['tree'].map{|f| f['path']}
  end
end

Convert.new.process
