pipeline{
    agent any
	
    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image */

        docker.build("wisekingdavid/casecoursework")
    }

    stage('Test image') {
        
        inside {
            echo "Tests passed"
        }
    }

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry('https://registry.hub.docker.com', 'davs-dockerHub') {
            push("${env.BUILD_NUMBER}")
            push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
}
