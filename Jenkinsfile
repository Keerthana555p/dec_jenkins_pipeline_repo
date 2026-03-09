pipeline {
    agent any

    parameters {
          booleanParam(name: 'SKIP_TEST', defaultValue: false, description: 'Skip test and deploy')
    }

    environment {
        CURRENT_ENV = 'prod'
    }

    stages {
        stage("when branch is main") {
            when {
                branch 'main'
            }
            steps {
                 {
                        sh '''
                            sleep 5
                            exit 1
                        '''
                    } catch (err) {
                        echo "This is the error: ${err}"
                    }
                }
            }
        }

      

        stage("when enviornment ") {
            when { 
                environment name: 'CURRENT_ENV', value: 'prod'
            }
            steps {
                echo "This is last stage"
                sh 'sleep 5'
            }

        stage("when parameter") {
            when { 
                allof {
                 branch 'main'
                 expression {params.SKIP_TEST= true}
            }
            
            steps {
                echo "This is last stage"
                sh 'sleep 5'
            }
        }
    }
}
