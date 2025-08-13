pipeline {
    agent { label 'ansible-node' }

    environment {
        AWS_SHARED_CREDENTIALS_FILE = '/home/yaswanth/.aws/credentials'
    }

    stages {

        stage('Deploy EC2 - NewRelic Integration') {
            steps {
                sh '''
                ansible-playbook ansible-aws-ec2-newrelic-deploy.yaml
                '''
            }
        }
    }
}
