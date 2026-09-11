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

        stage('Build') {
            steps {
                bat '''
            if not exist index.html exit /b 1
            if not exist css\\style.css exit /b 1
            if not exist js\\script.js exit /b 1

            echo Build validation successful.
        '''
    }
}

        stage('Test') {
            steps {
                bat 'bash tests/test_project.sh'
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