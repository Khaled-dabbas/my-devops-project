pipeline {
    agent any

    stages {
        stage("build") {
            steps {
                echo 'Building the application...'
                sh 'npm install'
                sh 'npm build'
            }
        }

        stage("test") {
            steps {
                echo 'Testing the application...'
            }
        }

        stage("deploy") {
            steps {
                echo 'Deploying the application...'
                sh 'npm start'
            }
        }
    }
}