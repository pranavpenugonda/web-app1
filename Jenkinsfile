pipeline {
    agent any 
    stages {
        stage('Clone the repo') {
            steps {
                echo 'clone the repo'
                sh 'rm -fr web-app1'
                sh 'git clone https://github.com/pranavpenugonda/web-app1.git'
            }
        }
        stage('push repo to remote host') {
            steps {
                echo 'connect to remote host and pull down the latest version'
                sh 'ssh -i ~/jenkins-todoapp.pem ubuntu@ec2-13-201-28-164.ap-south-1.compute.amazonaws.com sudo git -C /var/www/html pull'
            }
        }
        stage('Check website is up') {
            steps {
                echo 'Check website is up'
                sh 'curl -Is 13.201.28.164 | head -n 1'
            }
        }
    }
}
