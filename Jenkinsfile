pipeline {
  agent any
    
  tools {nodejs "Nodejs"}
    
  stages {
        
    stage('Git Checkout') {
      steps {
        git 'https://github.com/18hk18/Nodejs-App.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }  
  }
}
