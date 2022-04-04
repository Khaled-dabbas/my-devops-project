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
                sh "gcloud docker -- push us.gcr.io/[my-project-id]/[my-artifact-id]"
            }
        }

        stage('Remove Unused docker image') {
            steps{
                sh "docker rmi $registry/$BUILD_NUMBER"
            }
        }
    }
}