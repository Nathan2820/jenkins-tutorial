pipeline{
        agent any
        stages{
            stage('Clone Git Repo'){
                steps{
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client"
                }
            }
            stage('Install Docker and Docker-Compose'){
                steps{
                    sh "curl https://get.docker.com | sudo bash"
                    sh "sudo usermod -aG docker ${USER}"
                    sh "sudo chown jenkins /var/run/docker.sock"
                    sh "sudo apt update"
                    sh "sudo apt install -y curl jq"
                    sh "version=${curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name'}"
                    sh "sudo curl -L "https://github.com/docker/compose/releases/download/$(version)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"
                    sh "sudo chmod +x /usr/local/bin/docker-compose"
                }
            }
            stage('Deploy the App'){
                 steps{
                     sh "sudo docker-compose up -d"
                 }
            }
        }    
}
