pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'building the application...'
        timestamps() {
          sleep 2
        }

      }
    }

    stage('test') {
      steps {
        echo 'testing the application...'
      }
    }

    stage('deploy') {
      steps {
        echo 'depolying the application...'
      }
    }

  }
}