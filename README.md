# Terraform module mysql

## About

This module allows to manage database and user.

## Example

```txt
provider "mysql" {
  alias = "mydb"
  endpoint = var.mysql_server_endpoint
  username = var.mysql_root_username
  password = var.mysql_root_password
}

module "mysql_user" {
  source = "git::https://github.com/dmytro-dorofeiev/modules/terraform-mysql-user"

  providers = {
    mysql = mysql.mydb
  }

  create_db = true
  db_name = var.db_name
  db_username = var.db_username
  db_host  = var.db_host
  db_user_password = var.db_user_password
  db_user_privileges = var.db_user_privileges
  db_table = var.db_table
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_mysql"></a> [mysql](#requirement\_mysql) | 1.10.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mysql"></a> [mysql](#provider\_mysql) | 1.10.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mysql_database.this](https://registry.terraform.io/providers/winebarrel/mysql/1.10.5/docs/resources/database) | resource |
| [mysql_grant.this](https://registry.terraform.io/providers/winebarrel/mysql/1.10.5/docs/resources/grant) | resource |
| [mysql_user.this](https://registry.terraform.io/providers/winebarrel/mysql/1.10.5/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_db"></a> [create\_db](#input\_create\_db) | Should database be created? | `bool` | `true` | no |
| <a name="input_db_host"></a> [db\_host](#input\_db\_host) | The source host of the user. | `string` | `"%"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name of the database. | `string` | n/a | yes |
| <a name="input_db_table"></a> [db\_table](#input\_db\_table) | Which table to grant privileges on. | `string` | `"*"` | no |
| <a name="input_db_user_password"></a> [db\_user\_password](#input\_db\_user\_password) | The user password for the database | `string` | n/a | yes |
| <a name="input_db_user_privileges"></a> [db\_user\_privileges](#input\_db\_user\_privileges) | A list of privileges to grant to the user. Refer to a list of privileges (such as here) for applicable privileges | `list(string)` | <pre>[<br>  "ALL PRIVILEGES"<br>]</pre> | no |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | The name of the user. | `string` | n/a | yes |
| <a name="input_default_character_set"></a> [default\_character\_set](#input\_default\_character\_set) | The default character set to use when a table is created without specifying an explicit character set. | `string` | `"utf8"` | no |
| <a name="input_default_collation"></a> [default\_collation](#input\_default\_collation) | The default collation to use when a table is created without specifying an explicit collation. | `string` | `"utf8_general_ci"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_name"></a> [db\_name](#output\_db\_name) | The name of the database. |
| <a name="output_mysql_user_id"></a> [mysql\_user\_id](#output\_mysql\_user\_id) | The id of the user created, composed as username@host |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
