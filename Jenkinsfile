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
                    docker.withRegistry('https://us.gcr.io', 'gcr:my-pipeline') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
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