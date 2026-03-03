pipeline {
    agent any

    stages {

        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Uday-63/meraki-with-soul.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh '''
                mkdir -p build
                cd src
                jar -cvf ../build/meraki-with-soul.war *
                '''
            }
        }

    }

    post {
        success {
            archiveArtifacts artifacts: 'build/*.war', fingerprint: true
        }
    }
}
