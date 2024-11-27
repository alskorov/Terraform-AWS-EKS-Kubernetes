locals {
    env         = "staging"
    region      = "us-east-2"
    zone1       = "us-east-2a"
    zone2       = "us-east-2b"
    eks_name    = "demo"
    eks_version = "1.31"
    
    //EC2 Jenkins 
    key-name        = "Aleksey"
    instance-name   = "Jenkins-server"
    sg-name         = "Jenkins-sg"
    iam-role        = "Jenkins-iam-role"
    
}