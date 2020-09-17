pipeline {
    agent any
    stages {
        stage('get repo') {
            steps { 
                sh 'chmod +x ./scripts/get-repo.sh'
                sh 'sudo ./scripts/get-repo.sh'
            }
        }
        stage('docker installs') {
            steps {
                sh 'chmod +x ./scripts/docker-installs.sh'
                sh 'sudo ./scripts/docker-installs.sh'
            }
        }
        stage('deploy') {
            steps {
                sh 'chmod +x ./scripts/deploy.sh'
                sh 'sudo ./scripts/deploy.sh'
            }
        }
    }
}
