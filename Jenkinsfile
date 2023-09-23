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
        sh 'ls -la'
      }
    }

    stage('deploy') {
      steps {
        echo 'depolying the application...'
        sh '''name = "Morgan"
echo "Good morning $name"'''
      }
    }

  }
}