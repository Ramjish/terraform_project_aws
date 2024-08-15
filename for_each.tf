provider "aws" {
}
 resource "aws_iam_user" "iam" {

    for_each = toset( ["user-0","user-01","user-02","user-03" ])
    name = each.key
}


  
