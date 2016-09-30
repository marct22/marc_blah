jdir = "/jobs"

def findJenkinsWorkspace (myPath, spath)
  ddDir = myPath + "/.."
  puts ddDir
  expDir = File.expand_path(ddDir)
  baseDir = File.basename(expDir)
  ppath = baseDir + "/" + spath
  if baseDir == "workspace" then
    ddDir = expDir + "/.."
    expDir = File.expand_path(ddDir)
    retVal = expDir + ":" + spath
    return retVal
  else 
    findJenkinsWorkspace(expDir, ppath)
  end
end

imIn = __dir__
puts imIn
jobname = File.basename(imIn)
puts "jenkins jobname = " + jobname
subpath = findJenkinsWorkspace(imIn, jobname)  
puts "partial path is #{subpath}"
  



