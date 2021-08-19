output "db_name" {
  description = "The name of the database."
  value       = mysql_database.this[0].name
}

output "mysql_user_id" {
  description = "The id of the user created, composed as username@host"
  value       = mysql_user.this.id
}
