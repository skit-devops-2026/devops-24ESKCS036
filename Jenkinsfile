pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install') {
            steps {
                echo 'No external dependencies required for the static frontend.'
            }
        }

        stage('Test') {
            steps {
                bat 'bash tests/test_project.sh'
            }
        }

        stage('Build') {
            steps {
                powershell '''
                    if (!(Test-Path "index.html")) { exit 1 }
                    if (!(Test-Path "css/style.css")) { exit 1 }
                    if (!(Test-Path "js/script.js")) { exit 1 }
                    Write-Host "Build validation successful."
                '''
            }
        }
    }

    post {
        success {
            echo 'Jenkins pipeline completed successfully.'
        }

        failure {
            echo 'Jenkins pipeline failed.'
        }
    }
}