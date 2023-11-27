pipeline {
    agent any
    stages {
        stage('Verificando Herramientas') {
            steps {
                sh "docker-compose down"
                sh "docker-compose up -d"
            }
        }    
    }   
}