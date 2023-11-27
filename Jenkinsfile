pipeline {
    agent any
    stages {
        stage('Install Docker Compose') {
            steps {
                script {
                    sh 'curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                    sh 'chmod +x /usr/local/bin/docker-compose'
                }
            }
        }
        stage('Build') {
            steps {
                echo "Estapa Build No Disponible"
            }
        }
        stage('Test') {
            steps {
                echo "Etapa Test No Disponible"
            }
        }
        stage('Deploy') {
            steps {
                echo "Ejecutando docker-compose..."
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }
    }
}