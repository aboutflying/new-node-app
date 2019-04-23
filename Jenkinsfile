pipeline {
    agent any
    environment {
        dockerhubpw = credentials('dockerhubpw')
    }
    stages {
        stage('Build image') {
            steps {
                sh 'sudo docker image build -t invisitr/node-demo-app -f Dockerfile .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                sh '''
                    sudo docker login --username=invisitr --password=${dockerhubpw}
                    sudo docker push invisitr/node-demo-app:v002
                '''
            }
        }
    }
}
