node ('linux'){
  stage 'clean build and teset'
  env.PATH = "{tool 'gradle'}/bin:${env.PATH}"
  checkout scm
  sh 'gradle clean build test'
}
