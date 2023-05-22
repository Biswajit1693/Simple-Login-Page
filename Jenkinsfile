pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        sh 'pip install -r requirement.txt'
      }
    }

    stage('Test') {
      steps {
        sh 'pytest'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t my-python-app:latest .'
      }
    }

    stage('Docker Push') {
      steps {
        withCredentials([
          usernamePassword(
            credentialsId: 'docker-hub',
            usernameVariable: 'jeetlinux',
            passwordVariable: 'Laltu1693@'
          )
        ]) {
          sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
          sh 'docker tag my-python-app:latest jeetlinux/demo-docker:app1'
          sh 'docker push jeetlinux/demo-docker:app1'
        }
      }
    }

    stage('Kubernetes Deployment') {
      steps {
        withKubeConfig([credentialsId: 'minikube-cluster', serverUrl: 'https://192.168.49.2:8443']) {
          sh 'kubectl config use-context minikube' // Set the Kubernetes context to Minikube
          sh 'kubectl apply -f deployment.yaml'
        }
      }
    }
  }
}
