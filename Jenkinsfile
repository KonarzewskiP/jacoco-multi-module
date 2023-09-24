pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'building the application...'
        sh 'sh \'mvn clean install\''
      }
    }

    stage('test') {
      steps {
        echo 'testing the application...'
        sh 'ls -la'
      }
    }

    stage('docker') {
      environment {
        DOCKERHUB_USER = 'mrkaczorrro'
        DOCKERHUB_PASSWORD = 'dckr_pat_p8hOY6zQVJyQKE80QtHBIRezrwA'
      }
      steps {
        echo 'Build Docker image'
        sh '''docker build -t multi-module-app:latest .

echo \'Login to Dockerhub\'
docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD

echo \'Push docker image to docker hub\'
docker push mrkaczorrro/multi-module-app:latest'''
      }
    }

    stage('deploy') {
      steps {
        echo 'Deploying the application... '
      }
    }

  }
}