jdir = "/.jenkins"

imIn = __dir__
puts imIn
dotsDir = imIn + "/../.."
puts dotsDir
expDir = File.expand_path(dotsDir)
puts "hopefully, this will change "
puts expDir

checkDir = Dir.exists?(expDir + jdir)
puts checkDir
if checkDir then
  puts "we good! we got " + expDir + jdir
end
tdir = expDir + "/.."
expDir = File.expand_path(tdir)
checkDir = Dir.exists?(expDir + jdir)
puts checkDir
if checkDir then
  puts "we good! we got " + expDir + jdir
end
