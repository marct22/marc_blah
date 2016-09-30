jdir = "/jobs"

imIn = __dir__
puts imIn
jobname = File.basename(imIn)
puts jobname
dotsDir = imIn + "/../.."
puts dotsDir
expDir = File.expand_path(dotsDir)
puts expDir
subdir = File.basename(expDir)
puts subdir
subpath = subdir + "/" + jobname
if subdir != "workspace"
  dotsDir = expDir + "/.."
  expDir = File.expand_path(dotsDir)
  subdir = File.basename(expDir)
  subpath = subdir + "/" + subpath
  
end
puts subpath

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
