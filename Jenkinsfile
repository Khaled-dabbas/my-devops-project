pipeline {
    agent any

    environment {
        registry = "gcp-study-345608"
        registryCredential = 'gcr:my-pipeline'
        dockerImage = ''
    }

    stages {

        stage("Building Image") {
            steps {
                echo 'Building the application...'
                sh 'git pull'
                script {
                    dockerImage = docker.build(registry + "/$BUILD_NUMBER")
                }
            }
        }

        stage("Pushing image to registry") {
            steps {
                echo 'Pushing the application...'
                script {
                    docker.withRegistry('https://gcr.io', registryCredential) {
                        app.push()
                    }
                }
            }
        }

        stage('Remove Unused docker image') {
            steps{
                sh "docker rmi $registry/$BUILD_NUMBER"
            }
        }
    }
}