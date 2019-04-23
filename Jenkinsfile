pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                sh 'sudo docker image build -t invisitr/node-demo-app -f Dockerfile .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                sh '''
                    sudo docker push invisitr/node-demo-app:latest
                '''
            }
        }
    }
}
