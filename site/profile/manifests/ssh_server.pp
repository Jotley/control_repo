class profile::ssh_server {
        package {'openssh=server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
                }
                ssh_authorized_key { 'root@master.puppet.vm':
                      ensure => present,
                      user   => 'root',
                      type   => 'ssh-rsa',
                      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtPkXnhpvIEar7hj4L24m9VpfoazbHL1oqdpspNyQLCvVqpSM7pUsIdZrWt0r6N8LwWdmfeDYjI6PNo8kx9VF/ClsPx+le9z+cEU9wqu+xBp6mwZkzdUOvcoCnGL5kZiK6vGJefcrGZI99vu7PO+1TUK9wCTNUy3OJbc1smyPUAh19lLa9crNyFJUAOJsb0QPGpQ0H93QXjfmnmOLJVNiQ/uyqb0TKEGlocYv7/+V2WFEkNzpFUHcCMergULmdN2EAvkTgq5wSzz4FxvuLdOIJuGX49ANIK1VcnbqFdMmYaH9LPVCoozNz+EQCaKUR0s9WH511J7VGB0Cv6Ktkla4x',
                      }
                      }
