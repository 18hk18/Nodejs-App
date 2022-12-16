pipeline {
  agent any
    
  tools {nodejs "Nodejs"}
    
  stages {
        
    stage('Git Checkout') {
      steps {
        git 'https://github.com/18hk18/Nodejs-App.git'
      }
    }
    stage('Build image') {
       dockerImage = docker.build("harikrishna121/demo")
    }
    
    stage('Push Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'git') {            
       dockerImage.push("${env.BUILD_NUMBER}")            
       dockerImage.push("latest")
       }
     }
  }
}
