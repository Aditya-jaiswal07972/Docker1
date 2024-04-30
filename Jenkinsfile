pipeline {
    agent any
    
    stages {
        stage("Checkout") {
            steps {
                bat 'git.exe clone <https://github.com/Aditya-jaiswal07972/Docker1> .'
                // Replace <repository_url> with your actual repository URL
            }
        }
        
        stage("Test") {
            steps {
                // Add commands to run tests here if applicable
                bat 'mvn test' // Example command to run Maven tests
            }
        }
        
        stage("Build") {
            steps {
                bat 'mvn clean package' // Build the project using Maven
            }
        }
        
        stage("Build Image") {
            steps {
                script {
                    bat 'docker build -t my-java-app:1.0 .' // Build the Docker image
                }
            }
        }
        
        stage("Docker push") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cred', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
                    script {
                        bat 'docker login -u %DOCKERHUB_USERNAME% -p %DOCKERHUB_PASSWORD%' // Login to Docker Hub
                        bat 'docker tag my-java-app:1.0 atishay3012/my-java-app:1.0' // Tag the Docker image
                        bat 'docker push lpu0docker0aditya14/my-java-app:1.0' // Push the Docker image to Docker Hub
                        bat 'docker logout' // Logout from Docker Hub
                    }
                }
            }
        }
    }
}
