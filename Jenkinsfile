pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Checkout the source code from the repository
                checkout scm

                // Compile the Java code
                sh 'javac GUI/*.java'
            }
        }
        stage('Test') {
            steps {
                // Run any tests if applicable
                // You can add your test commands here
            }
        }
        stage('Docker Build and Publish') {
            steps {
                // Build the Docker image
                script {
                    docker.build("lpu0docker0aditya14/yourimage:tag")
                }

                // Push the Docker image to a registry
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_credentials_id') {
                        docker.image("lpu0docker0aditya14/yourimage:tag").push()
                    }
                }
            }
        }
    }
}
