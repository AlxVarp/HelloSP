pipeline {
    agent any
    stages {
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