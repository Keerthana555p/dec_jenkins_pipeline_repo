pipeline {
    agent none
    parameters {
        string(name: 'NAME', defaultValue: 'Keerthana', description: 'Please tell me your name?')
        booleanParam(name: 'SKIP_TEST', defaultValue: false, description: 'Skip test and deploy')
        choice(name: 'BRANCH', choices: ['staging', 'master', 'prod', 'four'], description: 'Branch to deploy')
    }

    stages {
        stage("A") {
            agent { label 'slave1' }
            steps {
                echo "NAME: ${params.NAME}"
                echo "SKIP-TEST: ${params.SKIP_TEST}"
                echo "BRANCH TO DEPLOY: ${params.BRANCH}"
                sh '''
                echo "NAME: ${NAME}"
                echo "SKIP-TEST: ${SKIP_TEST}"
                echo "BRANCH TO DEPLOY: ${BRANCH}"
                '''
            }

        }
    }
}
