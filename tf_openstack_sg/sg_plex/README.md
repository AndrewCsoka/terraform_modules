# sg_plex terraform module

A terraform module which contains all rules for plex. You may not require all of them. See [here](https://support.plex.tv/hc/en-us/articles/201543147-What-network-ports-do-I-need-to-allow-through-my-firewall) for an explanation.

## Ports

- TCP 3005
- TCP 8324
- UDP 1900
- UDP 32410
- TCP 32400
- UDP 32412-32414
- TCP 32469

## Input Variables

- `security_group_name` - The name for your security group, e.g. `my_plex_sg`
- `region` - The region this security group will exist in.
- `access_cidr` - The source CIDR block to allow traffic from.

## Usage

You can use these in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "sg_plex" {
  source = "github.com/AndrewCsoka/terraform_modules/tf_openstack_sg/sg_plex"
  security_group_name = "${var.security_group_name}-plex"
  region = "${var.region}"
  access_cidr= "${var.access_cidr}"
}
```

2. Setting values for the following variables, either through `terraform.tfvars` or `-var` arguments on the CLI

 * `security_group_name`
 * `region`
 * `access_cidr`

## Author

* [AndrewCsoka](https://github.com/AndrewCsoka)

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE](LICENSE) file for details
