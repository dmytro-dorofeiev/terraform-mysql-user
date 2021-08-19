resource "mysql_database" "this" {
  count                 = var.create_db == true ? 1 : 0
  name                  = var.db_name
  default_character_set = var.default_character_set
  default_collation     = var.default_collation
}

resource "mysql_user" "this" {
  user               = var.db_username
  host               = var.db_host
  plaintext_password = var.db_user_password
}

resource "mysql_grant" "this" {
  user       = mysql_user.this.user
  host       = mysql_user.this.host
  database   = mysql_database.this[0].name
  privileges = var.db_user_privileges
  table      = var.db_table
}
