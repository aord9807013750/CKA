pipeline {
  environment {
    registry = "gaurav1983/gaurav"
    registryCredential = 'DOCKER_HUB'
  dockerImage = " "   
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
          docker.build registry + ":1.1.6"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        sh 'docker login -u gaurav1983 -p Netgenius12345'
        sh 'docker push gaurav1983/gaurav:1.1.6'
        }
    }
    stage('Deploy on kubernetes') {
            steps {
                kubernetesDeploy(
                    kubeconfigId: 'KUBE_CONFIG',
                    configs: 'deployment-definition.yml',
                    )
            }
        }
  }
}
