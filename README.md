### Build your own EC2 AMIs with Hashicorp Packer

Packer is similar to Terraform in that executed commands search the current working directory for configuration files and it uses the command plus subcommand format to run. Here are some of the basic commands to get going:

`packer init` - intitializes packer plugins. This is similar to how Terraform intializes the configured providers
`packer validate` - validates packer configuration files. This is similar to Terraform’s validate subcommand and checks for syntax/configuration issues.
`packer build` - kicks off the packer build process. The build command is like running Terraform apply with the -auto-approve flag to bypass the user provided input.

### Components of a Packer Configuration File

The Packer configuration file consists of three main components:

1. **User Variables:** Defines parameters for the template to store secrets, environment variables, and other necessary settings.
2. **Builders:** Generates machine images.
3. **Provisioners:** Install and configure software on the instance before the image is created. Provisioners are optional and include types such as Shell, Ansible, etc.

### Let's get started with packer:

```sh
### validate and build the image
packer validate amazon-linux-ami.json
packer build amazon-linux-ami.json

### Display AMI
aws ec2 describe-images --owners self --query 'Images[*].[ImageId,Name,State]' --output table
```

Step-by-Step Guide to Creating an Amazon Image Using Packer:

1.	Create a directory for your template.
2.	Create a JSON configuration file.
3.	Validate the configuration to ensure there are no errors.
4.	Run the packer build command to start the image creation process.
5.	Verify the newly created image to confirm it meets your requirements.
