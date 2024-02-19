require 'csv'

RegionVideogame.delete_all
Region.delete_all
Videogame.delete_all
Publisher.delete_all
Genre.delete_all
Platform.delete_all



filename = Rails.root.join("db/vgsales.csv")

puts "Loading data from the CSV file: #{filename}"

csv_data = File.read(filename)
videogames = CSV.parse(csv_data, headers: true, encoding: "utf-8")

videogames.each do |v|
  publisher = Publisher.find_or_create_by(name: v["Publisher"])
  platform = Platform.find_or_create_by(name: v["Platform"])
  genre = Genre.find_or_create_by(name: v["Genre"])

  videogame = Videogame.create(
    rank: v["Rank"].to_i,
    name: v["Name"],
    year: v["Year"].to_i,
    publisher: publisher,
    platform: platform,
    genre: genre
  )

  regions = ["NA", "EU", "JP", "Other","Global"]
  regions.each do |region_name|
    if videogame && videogame.valid?
      region = Region.find_or_create_by(name: region_name)
      RegionVideogame.create(videogame:videogame, region:region, sales:v["#{region_name}_Sales"])
    end
  end

end

puts "Created #{Videogame.count} Videogames."
puts "Created #{Region.count} Regions."
puts "Created #{RegionVideogame.count} RegionVideogames."
puts "Created #{Publisher.count} Publishers."
puts "Created #{Genre.count} Genres."
puts "Created #{Platform.count} Platforms."
