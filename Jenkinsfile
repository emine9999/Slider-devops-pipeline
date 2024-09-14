pipeline {
    agent any

    environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub')
	}
    stages {
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Build & push Dockerfile') {
            steps {
                sh """
                cd Slider-devops-pipeline/
                ansible-playbook ansible-playbook.yml
                """
            }
        }
    } 
}
