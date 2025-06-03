variable region { default = "eu-frankfurt-1" }
variable registry { default = "fra.ocir.io" }
variable compartment_ocid { }
variable project_name { 
    default = "testimonials"
    description = "Name of the Testimonials App OCI DevOps project and it's related resources"
}
variable image_name_testimonials { 
    default = "testimonials-app"
    description = "Name of the Testimonials App image that is built by the pipelines and deployed in the target OCI Function"
}
variable image_name_authorizer { 
    default = "testimonials-authorizer"
    description = "Name of the Testimonials Authorizer image that is built by the pipelines and deployed in the target OCI Function"
}
variable docker_user { 
    description = "Your docker user to login OCIR to create the initial Function image"
}
variable docker_pwd { 
    description = "Your docker password (auth token) to login OCIR to create the initial Function image"
}
variable initial_image { 
    default = "docker.io/mikarinneoracle/hello-world-java-graalvm"
    description = "Intial native X86 Hello-world public image that is used to deploy the initial OCI Function"
}
