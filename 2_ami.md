### What is a amazon machine image (AMI)

A machine image serves as a blueprint for creating virtual machine instances. It’s particularly useful for automating the creation of consistent machine images that can operate across various platforms.

### Packer vs Docker

Packer is an automated tool for building machine images for both containers and virtual machines. Images created with Packer can be deployed across various platforms, including Docker, and Amazon EC2. Packer utilizes "provisioners," or configuration tools, that allow for customization and flexibility in the image creation process. Packer allows you to predefine custom images with specific configurations, primarily focusing on security controls to enhance compliance. These images ensure consistency and streamline the deployment of infrastructure that adheres to organizational security standards.

Docker, on the other hand, is designed specifically for building, shipping, and running Docker containers. Docker images are built in layers. Packer lacks this layer-caching feature, making Docker faster for iterative builds within its ecosystem.
