pipeline {
  agent any

  stages {
    stage("Checkout") {
      steps {
        //Checkout GitHub repo
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHub', url: 'https://github.com/Biswajit1693/Simple-Login-Page']])
      }
    }

    stage("Build The Docker image") {
      steps {
        sh 'sudo docker build -t applogin:latest .'
      }
    }

    stage("Push to Dockerhub") {
      steps {
          // Login to Dockerhub
            withCredentials([string(credentialsId: 'docker-passwd', variable: 'dockerpssd')]) {
            sh 'sudo docker login -u jeetlinux -p ${dockerpssd}'
                    
                }

          // Push to docker hub
            sh 'sudo docker tag applogin:latest jeetlinux/demo-docker:v8'
            sh 'sudo docker push jeetlinux/demo-docker:v8'
      }
    }

    stage("Deploy to kubernetes") {
      steps {
        // Kubernetes configuration
          withCredentials([file(credentialsId: 'kubemini', variable: 'KUBECONFIG')]) {
          sh 'export KUBECONFIG=$KUBECONFIG'

        //Deploy to k8s

          sh 'kubectl apply -f deployment.yaml'

          }
      }

    }
    

  }

} 
  
