require 'sqlite3'
require 'rulers/sqlite_model'

class MyTable < Rulers::Model::SQLite; end
STDERR.puts MyTable.schema.inspect

# mt = MyTable.create "title" => "I saw it again!"
# mt["id"] = nil
# mt["title"] = "I really did!"
# mt.save!
#
puts "Count: #{MyTable.count}"

# top_id = mt["id"].to_i
(1..MyTable.count).each do |id|
  mt_id = MyTable.find(id)
  puts "Found title #{mt_id.title}."
end

# mt2 = MyTable.find mt["id"]
# puts "Title: #{mt2["title"]}"