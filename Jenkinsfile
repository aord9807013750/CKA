node{
    stage("Git Clone"){
    git credentialsId: 'PASS_GITHUB', url: 'https://github.com/aord9807013750/CKA.git'
    }
  stage("wow"){
  sh "docker build -t gaurav1983/gaurav:1.1.5 .
  }
}
