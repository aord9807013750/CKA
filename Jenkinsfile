pipeline {
  environment {
    registry = "gaurav1983/gaurav"
    registryCredential = ‘DOCKER_HUB’
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/aord9807013750/CKA.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":1.1.4"
        }
      }
    }
  }
}
