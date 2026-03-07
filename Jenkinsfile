pipeline {
    agent {label 'slave2'}
    environment {
           DOCKER_USER= 'Keerthana'
           AWS_ACCESS_KEY = '12890dh'
       
    }

    stages {
        stage("A") {
           
            steps {
                echo "DOCKER_USER: ${DOCKER_USER}"
                echo "AWS_ACCESS_KEY: ${AWS_ACCESS_KEY}"
                
                sh '''
                    env

                '''
            }

        }
    }
}
