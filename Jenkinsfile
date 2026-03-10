pipeline {
    agent any

    triggers {
        pollSCM('H/S * * * *')
    }

    environment {
        CURRENT_ENV = 'prod'
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

