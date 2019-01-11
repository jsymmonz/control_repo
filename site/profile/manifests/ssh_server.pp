class profile::ssh_server {
        package {'openssh-server':
          ensure => present,
        
      }
      service { 'sshd':
          ensure => 'running',
          enable => 'true'
          
       }
       ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user    => 'root',
          type    => 'ssh-rsa',
          key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7Vlj144D3EBlYjPQbaOK1bwBlOtTbeSTpzs7w1Xm+NLI1LG/n0FRICmTvQ61lXLkTdSi6NGwcmzyJ2XY4IcEWlV1raivh0Bt21x4833oq3hqmr3NPupApJJd34osJM/lB7f0QkaVJMCpbh4ipYtYQSjsqlpGOIBe5Hau634SX5qWVuUlDNiiX7PpkGTXhchrlm5Sr2BhBA2QxhQWYkjvARaxKVFGjszmMEBRZU+TM9WCVQX3OajTlHdvvf06HajovComG/7/IipGYE18B2xtBGf/MCLaec+AlHDkPoYnQ3Dkl03M/3pdwKyVosNL7+VcDu5NJW/IAlmoPGMubzyPT',
          
        }
 }
         
