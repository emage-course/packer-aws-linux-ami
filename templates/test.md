```sh


  "variables": {
    "ssh_username": "ec2-user",
    "base_ami": "ami-0ba8711e0e1da2a52",
    "instance_type": "t2.micro"
  },

  "builders": [
    {
      "type": "amazon-ebs",
      "source_ami": "{{user `base_ami`}}",
      "instance_type": "{{user `instance_type` }}",
      "ssh_username": "{{user `ssh_username`}}",
      "ami_name": "packer-amazon-base-{{timestamp}}"
    }
  ],

  "provisioners": [
    {
      "type": "file",
      "source": "./files",
      "destination": "/tmp"
    },
    {
      "type": "shell",
      "script": "./scripts/install.sh"
    },
    {
      "type": "shell",
      "script": "./scripts/setup.py"
    }
  ]

    {
      "type": "windows-shell",
      "script": "./scripts/setup.ps1"
    }
    
    },
    {
      "type": "ansible-local",
      "playbook_file": "./playbooks/setup.yml"
    }
    {
      "type": "shell",
      "script": "./scripts/hardening.sh"
    }
  ]
}
```