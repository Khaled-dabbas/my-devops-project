pipeline {
    agent any

    stages {





        stage("Building Image") {
            steps {
                echo 'Building the application...'
                sh 'git pull'
                script {
                    app = docker.build('gcp-study-345608/test-gcr')
                }
            }
        }

        stage("Pushing image to registry") {
            steps {
                echo 'Pushing the application...'
                script {
                    docker.withRegistry('https://eu.gcr.io', 'gcr:my-pipeline') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}