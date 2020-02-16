pipeline {
  environment {
    registry = "gaurav1983/gaurav"
    registryCredential = 'DOCKER_HUB'
  dockerImage = docker.build registry + "1.1.4"   
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
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}
