# encoding: utf-8
subs = "input.srt"

@regex = /\d\d:\d\d,\d\d\d -->/
lines = Array.new

IO.readlines(subs).each_with_index do |line, idx|
  if idx > 1
	lines = lines.push(line) 
  	if line.match(@regex)
  	  3.times { lines.pop }
    end
  end
end

text = File.open("learning.txt", "w") do |f|
  lines.each do |l|
    f.puts l
  end
end
