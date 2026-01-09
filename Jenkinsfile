pipeline{
    agent {
        node {
            label 'AGENT-1'
        }
    }
    environment {
        COURSE = "Jenkins"
    }
    options {
        timeout(time : 10, unit : 'SECONDS')
        disableConcurrentBuilds()
    }
    stages {
        stage('Build')
        {
            steps {
                script {
                  sh """ echo "Building" """
                  }
            }
        }
        stage('Test')
        {
            steps {
                script {
                  sh  """ echo "Building" """
                  }
            }
        }
        stage('Deploy')
        {
            steps {
               script {
                  sh  """ echo "Building" """
                  }
            }
        }
    }
    post {
        always {
            echo 'I will always say hello again!'
            cleanWs()
        }
 
        success {
            echo "I will run if success"
        }
        failure {
            echo "I will run failure"
        }
    }
}
