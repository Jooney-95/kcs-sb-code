pipeline {
  agent any
  // any, none, label, node, docker, dockerfile, kubernetes
  tools {
    maven 'my_maven'
  }
  environment {
    gitName = 'lango'
    gitEmail = 'xmun777@naver.com'
    githubCredential = 'git_cre'
  }
  stages {
    stage('Checkout Github') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: githubCredential, url: 'https://github.com/Jooney-95/kcs-sb-code.git']]])
      }
      post {
        failure {
          echo 'Repository clone failure'
        }
        success {
          echo 'Repository clone success'
        }
      }
    }
    stage('Maven Build') {
      steps {
        sh 'mvn clean install'
      }
      post {
        failure {
          echo 'Maven jar build failure'
        }
        success {
          echo 'Maven jar build success'
        }
      }
    }
  }
}

