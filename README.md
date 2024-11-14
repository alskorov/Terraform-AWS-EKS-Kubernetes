# AWS-EKS-Kubernetes

## Changes from EKS 1.29 to 1.30

- AWS Load Balancer controller now requires `vpcId`.
- There is no longer a default storage class in EKS, so you need to explicitly set `storageClassName: gp2`.
- Updated all EKS add-ons and Helm chart versions used in this tutorial.

## Clean Up

- Manually delete IAM user secret keys from the AWS Console.
- `terraform destroy --target helm_release.external_nginx`
- `terraform destroy`

