pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'building the application...'
        sh 'mvn clean install -DskipTests=false'
      }
    }

    stage('test') {
      steps {
        echo 'testing the application...'
        sh 'ls -la'
        jacoco(runAlways: true)
      }
    }

    stage('docker') {
      environment {
        DOCKERHUB_USER = 'mrkaczorrro'
        DOCKERHUB_PASSWORD = 'dckr_pat_p8hOY6zQVJyQKE80QtHBIRezrwA'
      }
      steps {
        echo 'Build Docker image'
        sh '''docker build -t multi-module-app:latest ./multi-module-core

echo \'Login to Dockerhub\'
docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD

echo \'Tag docker image\'
docker tag multi-module-app:latest mrkaczorrro/multi-module-app:latest

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