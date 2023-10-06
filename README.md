# To Run the Docker images & Docker componse. Please use the below commands in terminal 

1. docker build --pull --rm -f "ngts-scm\Dockerfile" -t ngtsscm-api-img "ngts-scm"

2. docker build --pull --rm -f "ngts-scm-client\scm\Dockerfile" -t ngtsscm-client-img "ngts-scm-client\scm" 

3. docker-compose -f docker-compose.yml up
 

