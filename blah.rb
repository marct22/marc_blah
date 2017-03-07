
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
getPathInfo = findJenkinsWorkspace(imIn, jobname)  
# puts "partial path is #{subpath}"
  
# splitting subpath, as it has the path to jobs
(jenkRoot, subpath) = getPathInfo.split(":")
puts "Jenkins root is #{jenkRoot}"
puts "subpath is #{subpath}"
jobPath = jenkRoot + "/jobs/" + subpath  
puts "job path is #{jobPath}"

