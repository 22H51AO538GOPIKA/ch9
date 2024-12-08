pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'docker run --rm my-node-app yarn test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 3000:3000 --name my-node-app my-node-app'
            }
        }
    }
}
