# Hesperides on AWS

## Usage

    terraform init
    terraform plan
    terraform apply
    
## Push docker image

Pull Hesperides image:

    docker pull hesperides/hesperides:feature_springboot

Get repository id:

    aws ecr describe-repositories

Tag docker image using "repositoryUrl":

    docker tag hesperides/hesperides:feature_springboot [repositoryUrl]

Log on aws

    aws ecr get-login
    docker login...

Push docker image:

    docker push [repositoryUrl]