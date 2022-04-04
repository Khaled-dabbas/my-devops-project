pipeline {
    agent any

    stages {
        stage("Building Image") {
            steps {
                echo 'Building the application...'
                sh 'git pull'
                app = docker.build('gcp-study-345608/test-gcr')
            }
        }

        stage("Pushing image to registry") {
            steps {
                echo 'Pushing the application...'
                docker.withRegistry('https://eu.gcr.io', 'gcr:google-container-registry') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                }
            }
        }

        stage("deploy") {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}