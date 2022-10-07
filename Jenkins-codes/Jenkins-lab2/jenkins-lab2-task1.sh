###### You're to Change the values of the following in the code:
###### 1. bucket: replace the bucket name with the name of a bucket in your account
###### 2. credentials: replace with the credential-ID you used in Lab 2-Task 1-Number 8


pipeline {
    agent any
    stages {
        stage('Hello Jenkins') {
            steps {
                sh 'echo "hello world" '
            }
        }
        stage('Upload file') {
            steps {
                withAWS(credentials: 'my-cba-aws-credential', region: 'eu-west-2') {
                    sh 'echo "hello again Cloudboosta Students">hello.txt'
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'hello.txt', bucket:'document-ak', path:'hello.txt')
                }
            }
        }
    }
}
