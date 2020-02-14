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
    steps {
 sh ' kubectl version --short'
    }
  }
}
}
