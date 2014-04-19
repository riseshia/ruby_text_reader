class TextReader
  def self.request(file)
    f = File.new(file)
    f.each do |line|
      yield(line.chomp)
    end
  end
end
