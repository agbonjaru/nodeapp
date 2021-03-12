node {
   def commit_id
   stage('Preparation') {
     checkout scm
     sh "git rev-parse --short HEAD > .git/commit-id"                        
     commit_id = readFile('.git/commit-id').trim()
   }
   
   stage('Install dependencies') {
     
       sh 'npm install'
       
   }

   stage('docker build/push') {
     docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
       def app = docker.build("jstryngs/ren-nodejs:${commit_id}", '.').push()
     }
   }
}
