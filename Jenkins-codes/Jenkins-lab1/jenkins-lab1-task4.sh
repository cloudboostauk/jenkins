pipeline {
    agent any
    parameters {
        string(name: 'FirstName', defaultValue: '', description: 'Please enter your first name')
    }
    stages {
        stage('Print Name') {
            steps {
                sh 'echo "My name is ${FirstName}" '
            }
        }
    }
}
