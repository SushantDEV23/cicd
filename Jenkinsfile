pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'pip3 install -r requirements.txt' 
            }
        }
        stage('Test') { 
            steps {
                sh 'python3 manage.py test' 
            }
        }
        stage('Deploy') { 
            steps {
                sh 'ssh deployment-user@192.168.56.4 "cd polling; \
                pip install -r requirements.txt"'
            }
        }
    }
}