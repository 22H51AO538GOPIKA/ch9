pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Run the Docker build command
                    bat 'docker build -t getting-started-app .'
                }
            }
        }

        stage('Run Batch Script') {
            steps {
                bat 'getting-started-app.bat'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Please check the logs for errors.'
        }
    }
}
