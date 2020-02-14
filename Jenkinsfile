pipeline{
agent any
stages {
  stage('Build') {
    steps {
      sh 'echo "This is my first step"'
    }
  }
  stage('Test') {
  steps{
      sh 'echo "This is my Test step"'
    }
  }
  stage('Deploy') {
    kubernetesDeploy {
      configs: "myapp-deployment.yaml"
      kubeconfigId: "kubernetes"   
    }
  }
}
}
