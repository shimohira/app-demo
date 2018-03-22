pipeline {
    agent any
    stages {
        stage('prepare') {
            steps {
                sh 'echo prepare'
            }
        }
        stage('build') {
            steps {
                sh 'echo build'
            }
        }
        stage('test') {
            steps {
                sh 'echo testing...'
            }
        }
        stage('package') {
            steps {
                sh 'echo building docker image...'
                sh 'echo pushing to ECR'
            }
        }
    }
}