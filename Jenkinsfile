pipeline {
  agent any
    
  tools {nodejs "Nodejs"}
    
  stages {
        
    stage('Git Checkout') {
      steps {
        git 'https://github.com/18hk18/Nodejs-App.git'
      }
    }
     stage('Build docker Image'){
      app = docker.build("harikrishna121/demo)
    }
     stage('Push Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'git') {            
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")   
   	}
     }
  }
}
