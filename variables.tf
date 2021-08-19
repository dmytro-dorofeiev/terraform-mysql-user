variable "db_host" {
  description = "The source host of the user."
  type        = string
  default     = "%"
}

variable "db_name" {
  description = "The name of the database."
  type        = string
}

variable "db_user_password" {
  description = "The user password for the database"
  type        = string
}

variable "db_user_privileges" {
  description = "A list of privileges to grant to the user. Refer to a list of privileges (such as here) for applicable privileges"
  type        = list(string)
  default     = ["ALL PRIVILEGES"]
}

variable "db_username" {
  description = "The name of the user."
  type        = string
}

variable "db_table" {
  description = "Which table to grant privileges on."
  type        = string
  default     = "*"
}

variable "create_db" {
  description = "Should database be created?"
  type        = bool
  default     = true
}

variable "default_character_set" {
  description = "The default character set to use when a table is created without specifying an explicit character set."
  type        = string
  default     = "utf8"
}

variable "default_collation" {
  description = "The default collation to use when a table is created without specifying an explicit collation."
  type        = string
  default     = "utf8_general_ci"
}
