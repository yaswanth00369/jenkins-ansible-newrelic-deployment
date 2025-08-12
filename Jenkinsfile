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
                # ansible-playbook ansible-aws-ec2-deploy.yaml --extra-vars "instance_name=EC2-NewRelic-${BUILD_NUMBER}"
                '''
            }
        }
    }
}
