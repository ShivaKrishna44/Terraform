variable "instances" {
    default = ["mysql", "backend", "frontend"] 
}

variable "zone_id" {
    default = "Z068187219K4OK9NQN2OI"
}

variable "domain_name" {
    default = "shivakrishna44.shop"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
}