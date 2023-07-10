pipeline {
    agent any
    stages {
        stage("Code Clone") {
            steps {
                echo "Cloning the code"
                git url: "https://github.com/ashubambal/django-notes-app.git", branch: "main" 
            }
        }
        stage("Build Code") {
            steps {
                echo "Building the code"
                sh "docker build -t my-notes-app2 ."
            }
        }
        stage("Push image to Docker Hub") {
            steps {
                echo "Pushing image to docker hub"
                withCredentials([usernamePassword(credentialsId:"DockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag my-notes-app2 ${env.dockerHubUser}/my-notes-app2:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/my-notes-app2:latest"
                }
            }
        }
        stage("Deploy container") {
            steps {
                echo "Deploying the container"
                sh "docker-compose down && docker-compose up -d"
            }
        }
    }
}
