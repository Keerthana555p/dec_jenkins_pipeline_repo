pipeline {
  
    agent none
    
     parameters {
        string(name: 'NAME',default: '', description: 'Please tell me your name?')
        booleanparaemeter(name: 'SKIP_TEST',description: 'to skip test and deploy')
        choice[name: 'BRANCH',choices: 'master', 'stagging','prod', 'four']

    stages {
        stage("A") {
            agent {label 'slave1'}
            
            steps {
                echo "NAME:${params.Name}"
                echo "SKIP-TEST: ${params.'SKIP_TEST'}"
                echo "BRANCH TO DEPLOY: ${params.BRANCH}"
            }
        }
        
            }
        }
    }
