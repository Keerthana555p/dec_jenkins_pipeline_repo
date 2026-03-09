pipeline {
    agent any

    parameters {
        booleanParam(name: 'SKIP_TEST', defaultValue: false, description: 'Skip test and deploy')
    }

    environment {
        CURRENT_ENV = 'prod'
    }

    stages {
        stage("when environment") {
            when {
                environment name: 'CURRENT_ENV', value: 'prod'
            }
            steps {
                echo "This is environment stage"
                sh 'sleep 5'
            }
        }

        stage("when parameter") {
            when {
                allOf {
                    branch 'main'
                    expression { params.SKIP_TEST == true }
                }
            }
            steps {
                echo "This is parameter stage"
                sh 'sleep 5'
            }
        }
    }
}

