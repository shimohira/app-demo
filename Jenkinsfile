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
                sh "docker build -t 538471682716.dkr.ecr.ap-southeast-1.amazonaws.com/abdul-app-demo:${env.BUILD_NUMBER} ."
                sh "eval \$(aws ecr get-login --no-include-email --registry-ids 538471682716 --region ap-southeast-1)"
                sh "docker push 538471682716.dkr.ecr.ap-southeast-1.amazonaws.com/abdul-app-demo:${env.BUILD_NUMBER}"
                sh "docker rmi 538471682716.dkr.ecr.ap-southeast-1.amazonaws.com/abdul-app-demo:${env.BUILD_NUMBER}"
            }
        }
    }
}
