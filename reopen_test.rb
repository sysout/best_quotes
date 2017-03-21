a=1
puts "1.respond_to? :to_xxx :#{a.respond_to? :to_xxx}"

class Object
  def to_xxx
    "haha"
  end
end

puts "1.respond_to? :to_xxx :#{a.respond_to? :to_xxx}"