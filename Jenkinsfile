pipeline {
  agent {
    node {
      label 'build'
    }
  }
  stages {
    stage('build') {
      agent any
      steps {
        sh 'make build'
      }
    }

    stage('staging') {
      steps {
        sh 'ENV=staging make deploy'
      }
    }

    stage('prod') {
      steps {
        sh 'ENV=prod make deploy'
      }
    }
  }
}