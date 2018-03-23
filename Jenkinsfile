pipeline {
    agent any
    stages {
        stage('prepare') {
            steps {
                sh 'npm install'
            }
        }
        stage('lint') {
            steps {
                sh 'npm run lint'
            }
        }
        stage('test') {
            steps {
                sh 'npm run test:unit'
                sh 'npm run test:integration'
            }
        }
        stage('build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('package') {
            steps {
                sh "docker build -t 394595319667.dkr.ecr.ap-northeast-1.amazonaws.com/liuliang-app-demo:${env.BUILD_NUMBER} ."
                sh "eval $(aws ecr get-login --registry-ids 394595319667 --region ap-northeast-1)"
                sh "docker push 394595319667.dkr.ecr.ap-northeast-1.amazonaws.com/liuliang-app-demo:${env.BUILD_NUMBER}"
            }
        }
    }
}
