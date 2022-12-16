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
       dockerImage = docker.build("monishavasu/my-react-app:latest")
    }
    
    stage('Push image') {
        withDockerRegistry([ credentialsId: "Dockerhub", url: "https://hub.docker.com/repository/docker/harikrishna121/" ]) {
        dockerImage.push()
        }
    } 
  }
}
