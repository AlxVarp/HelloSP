pipeline {
    agent any
    stages {
        stage('Verificando Herramientas') {
            steps {
                sh '''
                docker version
                docker info
                docker compose version
                curl --version
                jq --version
                '''
            }
        }    
    }   
}