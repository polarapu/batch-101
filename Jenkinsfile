pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                build quietPeriod: 5, job: 'Job1'
            }
        }
        stage('Job') {
            steps {
                echo 'Hello Job'
                build quietPeriod: 5, job: 'Test1'
            }
        }
    }
}
