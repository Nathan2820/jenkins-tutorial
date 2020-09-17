pipeline {
    agent any
    stages {
        stage('get repo') {
            steps { 
                sh 'sudo ./scripts/get-repo.sh'
            }
        }
        stage('docker installs') {
            steps {
                sh 'sudo ./scripts/docker-installs.sh'
            }
        }
        stage('deploy') {
            steps {
                sh 'sudo ./scripts/deploy.sh'
            }
        }
    }
}
