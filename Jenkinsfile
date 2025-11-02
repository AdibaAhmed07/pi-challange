pipeline {
    agent any
    stages {
        stage('Requirements') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }
        stage('Build') {
            steps {
                bat 'python app.py'
            }
        }
    }
}
