resource "azurerm_resource_group" "res-0" {
  location = "canadacentral"
  name     = "rg-univesp-pij2"
}
resource "azurerm_mysql_flexible_server" "res-1" {
  delegated_subnet_id = azurerm_subnet.res-482.id
  location            = "canadacentral"
  name                = "mysqlunivespsrv"
  private_dns_zone_id = azurerm_private_dns_zone.res-473.id
  resource_group_name = "rg-univesp-pij2"
}
resource "azurerm_mysql_flexible_server_configuration" "res-17" {
  name                = "aad_auth_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-18" {
  name                = "activate_all_roles_on_login"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-19" {
  name                = "archive"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-20" {
  name                = "audit_log_enabled"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-21" {
  name                = "audit_log_events"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "CONNECTION"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-22" {
  name                = "audit_log_exclude_users"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "azure_superuser"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-23" {
  name                = "audit_log_include_users"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-24" {
  name                = "audit_slow_log_enabled"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-25" {
  name                = "auto_generate_certs"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-26" {
  name                = "auto_increment_increment"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-27" {
  name                = "auto_increment_offset"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-28" {
  name                = "autocommit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-29" {
  name                = "automatic_sp_privileges"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-30" {
  name                = "avoid_temporal_upgrade"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-31" {
  name                = "azure_replication_repair_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "60"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-32" {
  name                = "back_log"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "271"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-33" {
  name                = "big_tables"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-34" {
  name                = "binlog_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "131072"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-35" {
  name                = "binlog_checksum"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "CRC32"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-36" {
  name                = "binlog_direct_non_transactional_updates"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-37" {
  name                = "binlog_encryption"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-38" {
  name                = "binlog_error_action"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ABORT_SERVER"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-39" {
  name                = "binlog_expire_logs_seconds"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-40" {
  name                = "binlog_format"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ROW"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-41" {
  name                = "binlog_group_commit_sync_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-42" {
  name                = "binlog_group_commit_sync_no_delay_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-43" {
  name                = "binlog_gtid_simple_recovery"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-44" {
  name                = "binlog_order_commits"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-45" {
  name                = "binlog_rotate_encryption_master_key_at_startup"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-46" {
  name                = "binlog_row_event_max_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1048576"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-47" {
  name                = "binlog_row_image"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "minimal"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-48" {
  name                = "binlog_row_metadata"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "MINIMAL"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-49" {
  name                = "binlog_row_value_options"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-50" {
  name                = "binlog_rows_query_log_events"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-51" {
  name                = "binlog_stmt_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "32768"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-52" {
  name                = "binlog_transaction_dependency_history_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-53" {
  name                = "binlog_transaction_dependency_tracking"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "WRITESET"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-54" {
  name                = "blackhole"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-55" {
  name                = "block_encryption_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "aes-128-ecb"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-56" {
  name                = "bulk_insert_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8388608"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-57" {
  name                = "caching_sha2_password_auto_generate_rsa_keys"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-58" {
  name                = "caching_sha2_password_private_key_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "private_key.pem"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-59" {
  name                = "caching_sha2_password_public_key_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "public_key.pem"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-60" {
  name                = "character_set_filesystem"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "binary"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-61" {
  name                = "character_set_server"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "UTF8MB4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-62" {
  name                = "check_proxy_users"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-63" {
  name                = "collation_server"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "UTF8MB4_0900_AI_CI"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-64" {
  name                = "completion_type"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "NO_CHAIN"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-65" {
  name                = "concurrent_insert"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "AUTO"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-66" {
  name                = "connect_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-67" {
  name                = "create_admin_listener_thread"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-68" {
  name                = "cte_max_recursion_depth"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-69" {
  name                = "default_authentication_plugin"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "mysql_native_password"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-70" {
  name                = "default_password_lifetime"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-71" {
  name                = "default_storage_engine"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "InnoDB"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-72" {
  name                = "default_table_encryption"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-73" {
  name                = "default_tmp_storage_engine"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "InnoDB"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-74" {
  name                = "default_week_format"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-75" {
  name                = "delay_key_write"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-76" {
  name                = "delayed_insert_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-77" {
  name                = "delayed_insert_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "300"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-78" {
  name                = "delayed_queue_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-79" {
  name                = "disabled_storage_engines"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "MyISAM,MRG_MyISAM,BLACKHOLE,FEDEATED,ARCHIVE"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-80" {
  name                = "disconnect_on_expired_password"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-81" {
  name                = "div_precision_increment"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-82" {
  name                = "end_markers_in_json"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-83" {
  name                = "enforce_gtid_consistency"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-84" {
  name                = "eq_range_index_dive_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "200"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-85" {
  name                = "error_log_enabled"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-86" {
  name                = "error_server_log_file"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-87" {
  name                = "event_scheduler"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-88" {
  name                = "expire_logs_days"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-89" {
  name                = "explicit_defaults_for_timestamp"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-90" {
  name                = "flush"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-91" {
  name                = "flush_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-92" {
  name                = "ft_boolean_syntax"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "+ -><()~*:\"\"&|"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-93" {
  name                = "ft_query_expansion_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "20"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-94" {
  name                = "general_log"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-95" {
  name                = "general_log_file"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work2/serverlogs/mysql-general-mysqlunivespsrv-2025100214.log"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-96" {
  name                = "generated_random_password_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "20"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-97" {
  name                = "group_concat_max_len"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-98" {
  name                = "group_replication_consistency"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "EVENTUAL"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-99" {
  name                = "gtid_executed_compression_period"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-100" {
  name                = "gtid_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-101" {
  name                = "histogram_generation_max_mem_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "20000000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-102" {
  name                = "host_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "279"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-103" {
  name                = "information_schema_stats_expiry"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "86400"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-104" {
  name                = "init_connect"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-105" {
  name                = "innodb_adaptive_flushing"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-106" {
  name                = "innodb_adaptive_flushing_lwm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-107" {
  name                = "innodb_adaptive_hash_index"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-108" {
  name                = "innodb_adaptive_hash_index_parts"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-109" {
  name                = "innodb_adaptive_max_sleep_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "150000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-110" {
  name                = "innodb_autoextend_increment"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "64"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-111" {
  name                = "innodb_autoinc_lock_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-112" {
  name                = "innodb_buffer_pool_chunk_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "134217728"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-113" {
  name                = "innodb_buffer_pool_dump_at_shutdown"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-114" {
  name                = "innodb_buffer_pool_dump_now"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-115" {
  name                = "innodb_buffer_pool_dump_pct"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-116" {
  name                = "innodb_buffer_pool_filename"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ib_buffer_pool"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-117" {
  name                = "innodb_buffer_pool_in_core_file"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-118" {
  name                = "innodb_buffer_pool_instances"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-119" {
  name                = "innodb_buffer_pool_load_abort"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-120" {
  name                = "innodb_buffer_pool_load_at_startup"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-121" {
  name                = "innodb_buffer_pool_load_now"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-122" {
  name                = "innodb_buffer_pool_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "536870912"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-123" {
  name                = "innodb_change_buffer_max_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "25"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-124" {
  name                = "innodb_change_buffering"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "all"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-125" {
  name                = "innodb_checksum_algorithm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "crc32"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-126" {
  name                = "innodb_cmp_per_index_enabled"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-127" {
  name                = "innodb_commit_concurrency"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-128" {
  name                = "innodb_compression_failure_threshold_pct"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "5"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-129" {
  name                = "innodb_compression_level"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "6"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-130" {
  name                = "innodb_compression_pad_pct_max"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "50"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-131" {
  name                = "innodb_concurrency_tickets"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "5000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-132" {
  name                = "innodb_data_file_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ibdata1:12M:autoextend"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-133" {
  name                = "innodb_data_home_dir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-134" {
  name                = "innodb_ddl_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1048576"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-135" {
  name                = "innodb_ddl_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-136" {
  name                = "innodb_deadlock_detect"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-137" {
  name                = "innodb_dedicated_server"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-138" {
  name                = "innodb_default_row_format"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "DYNAMIC"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-139" {
  name                = "innodb_directories"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-140" {
  name                = "innodb_disable_sort_file_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-141" {
  name                = "innodb_doublewrite"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-142" {
  name                = "innodb_doublewrite_batch_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-143" {
  name                = "innodb_doublewrite_dir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-144" {
  name                = "innodb_doublewrite_files"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-145" {
  name                = "innodb_doublewrite_pages"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-146" {
  name                = "innodb_fast_shutdown"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-147" {
  name                = "innodb_fatal_semaphore_wait_threshold"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "7201"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-148" {
  name                = "innodb_file_per_table"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-149" {
  name                = "innodb_fill_factor"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-150" {
  name                = "innodb_flush_log_at_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-151" {
  name                = "innodb_flush_log_at_trx_commit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-152" {
  name                = "innodb_flush_method"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "fsync"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-153" {
  name                = "innodb_flush_neighbors"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-154" {
  name                = "innodb_flush_sync"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-155" {
  name                = "innodb_flushing_avg_loops"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "30"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-156" {
  name                = "innodb_force_load_corrupted"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-157" {
  name                = "innodb_force_recovery"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-158" {
  name                = "innodb_fsync_threshold"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-159" {
  name                = "innodb_ft_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8000000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-160" {
  name                = "innodb_ft_enable_diag_print"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-161" {
  name                = "innodb_ft_enable_stopword"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-162" {
  name                = "innodb_ft_max_token_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "84"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-163" {
  name                = "innodb_ft_min_token_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "3"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-164" {
  name                = "innodb_ft_num_word_optimize"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-165" {
  name                = "innodb_ft_result_cache_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2000000000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-166" {
  name                = "innodb_ft_server_stopword_table"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-167" {
  name                = "innodb_ft_sort_pll_degree"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-168" {
  name                = "innodb_ft_total_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "640000000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-169" {
  name                = "innodb_ft_user_stopword_table"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-170" {
  name                = "innodb_idle_flush_pct"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-171" {
  name                = "innodb_io_capacity"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "200"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-172" {
  name                = "innodb_io_capacity_max"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-173" {
  name                = "innodb_lock_wait_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "50"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-174" {
  name                = "innodb_log_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4194304"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-175" {
  name                = "innodb_log_checksums"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-176" {
  name                = "innodb_log_compressed_pages"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-177" {
  name                = "innodb_log_spin_cpu_abs_lwm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "80"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-178" {
  name                = "innodb_log_spin_cpu_pct_hwm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "50"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-179" {
  name                = "innodb_log_wait_for_flush_spin_hwm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "400"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-180" {
  name                = "innodb_log_write_ahead_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16384"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-181" {
  name                = "innodb_lru_scan_depth"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-182" {
  name                = "innodb_max_dirty_pages_pct"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "90"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-183" {
  name                = "innodb_max_dirty_pages_pct_lwm"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-184" {
  name                = "innodb_max_purge_lag"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-185" {
  name                = "innodb_max_purge_lag_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-186" {
  name                = "innodb_max_undo_log_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1073741824"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-187" {
  name                = "innodb_monitor_disable"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-188" {
  name                = "innodb_monitor_enable"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-189" {
  name                = "innodb_monitor_reset"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-190" {
  name                = "innodb_monitor_reset_all"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-191" {
  name                = "innodb_numa_interleave"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-192" {
  name                = "innodb_old_blocks_pct"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "37"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-193" {
  name                = "innodb_old_blocks_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-194" {
  name                = "innodb_online_alter_log_max_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "134217728"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-195" {
  name                = "innodb_open_files"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "-1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-196" {
  name                = "innodb_optimize_fulltext_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-197" {
  name                = "innodb_page_cleaners"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-198" {
  name                = "innodb_page_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16384"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-199" {
  name                = "innodb_parallel_read_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-200" {
  name                = "innodb_print_all_deadlocks"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-201" {
  name                = "innodb_print_ddl_logs"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-202" {
  name                = "innodb_purge_batch_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "300"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-203" {
  name                = "innodb_purge_rseg_truncate_frequency"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "128"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-204" {
  name                = "innodb_purge_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-205" {
  name                = "innodb_random_read_ahead"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-206" {
  name                = "innodb_read_ahead_threshold"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "56"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-207" {
  name                = "innodb_read_io_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-208" {
  name                = "innodb_read_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-209" {
  name                = "innodb_redo_log_archive_dirs"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-210" {
  name                = "innodb_redo_log_capacity"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "536870912"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-211" {
  name                = "innodb_redo_log_encrypt"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-212" {
  name                = "innodb_replication_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-213" {
  name                = "innodb_rollback_on_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-214" {
  name                = "innodb_rollback_segments"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "128"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-215" {
  name                = "innodb_sort_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1048576"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-216" {
  name                = "innodb_spin_wait_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "6"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-217" {
  name                = "innodb_spin_wait_pause_multiplier"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "50"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-218" {
  name                = "innodb_stats_auto_recalc"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-219" {
  name                = "innodb_stats_include_delete_marked"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-220" {
  name                = "innodb_stats_method"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "nulls_equal"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-221" {
  name                = "innodb_stats_on_metadata"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-222" {
  name                = "innodb_stats_persistent"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-223" {
  name                = "innodb_stats_persistent_sample_pages"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "20"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-224" {
  name                = "innodb_stats_transient_sample_pages"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-225" {
  name                = "innodb_status_output"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-226" {
  name                = "innodb_status_output_locks"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-227" {
  name                = "innodb_strict_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-228" {
  name                = "innodb_sync_array_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-229" {
  name                = "innodb_sync_spin_loops"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "30"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-230" {
  name                = "innodb_table_locks"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-231" {
  name                = "innodb_temp_data_file_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ibtmp1:12M:autoextend"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-232" {
  name                = "innodb_temp_tablespaces_dir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/temp"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-233" {
  name                = "innodb_thread_concurrency"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-234" {
  name                = "innodb_thread_sleep_delay"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-235" {
  name                = "innodb_tmpdir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/temp"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-236" {
  name                = "innodb_undo_directory"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-237" {
  name                = "innodb_undo_log_encrypt"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-238" {
  name                = "innodb_undo_log_truncate"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-239" {
  name                = "innodb_use_native_aio"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-240" {
  name                = "innodb_validate_tablespace_paths"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-241" {
  name                = "innodb_write_io_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-242" {
  name                = "interactive_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "28800"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-243" {
  name                = "internal_tmp_mem_storage_engine"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TempTable"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-244" {
  name                = "join_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "262144"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-245" {
  name                = "keep_files_on_create"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-246" {
  name                = "key_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8388608"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-247" {
  name                = "key_cache_age_threshold"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "300"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-248" {
  name                = "key_cache_block_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-249" {
  name                = "key_cache_division_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-250" {
  name                = "large_pages"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-251" {
  name                = "lc_time_names"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "en_US"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-252" {
  name                = "local_infile"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-253" {
  name                = "lock_wait_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "31536000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-254" {
  name                = "log_bin"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-255" {
  name                = "log_bin_trust_function_creators"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-256" {
  name                = "log_bin_use_v1_row_events"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-257" {
  name                = "log_error_services"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "log_filter_internal; log_sink_internal"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-258" {
  name                = "log_error_suppression_list"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-259" {
  name                = "log_error_verbosity"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "3"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-260" {
  name                = "log_output"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "NONE"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-261" {
  name                = "log_queries_not_using_indexes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-262" {
  name                = "log_raw"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-263" {
  name                = "log_slave_updates"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-264" {
  name                = "log_slow_admin_statements"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-265" {
  name                = "log_slow_extra"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-266" {
  name                = "log_slow_slave_statements"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-267" {
  name                = "log_statements_unsafe_for_binlog"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-268" {
  name                = "log_throttle_queries_not_using_indexes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-269" {
  name                = "log_timestamps"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "UTC"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-270" {
  name                = "long_query_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-271" {
  name                = "low_priority_updates"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-272" {
  name                = "lower_case_table_names"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-273" {
  name                = "mandatory_roles"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-274" {
  name                = "master_info_repository"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TABLE"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-275" {
  name                = "master_verify_checksum"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-276" {
  name                = "max_allowed_packet"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16777216"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-277" {
  name                = "max_binlog_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709547520"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-278" {
  name                = "max_binlog_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "104857600"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-279" {
  name                = "max_binlog_stmt_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709547520"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-280" {
  name                = "max_connect_errors"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-281" {
  name                = "max_connections"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "171"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-282" {
  name                = "max_delayed_threads"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "20"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-283" {
  name                = "max_digest_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-284" {
  name                = "max_error_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-285" {
  name                = "max_execution_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-286" {
  name                = "max_heap_table_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16777216"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-287" {
  name                = "max_join_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709551615"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-288" {
  name                = "max_length_for_sort_data"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4096"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-289" {
  name                = "max_points_in_geometry"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "65536"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-290" {
  name                = "max_prepared_stmt_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16382"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-291" {
  name                = "max_relay_log_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "104857600"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-292" {
  name                = "max_seeks_for_key"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709551615"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-293" {
  name                = "max_sort_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-294" {
  name                = "max_sp_recursion_depth"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-295" {
  name                = "max_user_connections"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-296" {
  name                = "max_write_lock_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709551615"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-297" {
  name                = "min_examined_row_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-298" {
  name                = "myisam_sort_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8388608"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-299" {
  name                = "mysql_native_password_proxy_users"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-300" {
  name                = "mysqlx"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-301" {
  name                = "net_buffer_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16384"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-302" {
  name                = "net_read_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "120"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-303" {
  name                = "net_retry_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-304" {
  name                = "net_write_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "240"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-305" {
  name                = "ngram_token_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-306" {
  name                = "offline_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-307" {
  name                = "old_alter_table"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-308" {
  name                = "open_files_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "5000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-309" {
  name                = "optimizer_prune_level"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-310" {
  name                = "optimizer_search_depth"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "62"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-311" {
  name                = "optimizer_switch"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "default"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-312" {
  name                = "optimizer_trace"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "enabled=off,one_line=off"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-313" {
  name                = "optimizer_trace_features"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "greedy_search=on,range_optimizer=on,dynamic_range=on,repeated_subselect=on"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-314" {
  name                = "optimizer_trace_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-315" {
  name                = "optimizer_trace_max_mem_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1048576"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-316" {
  name                = "optimizer_trace_offset"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "-1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-317" {
  name                = "parser_max_mem_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "18446744073709551615"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-318" {
  name                = "partial_revokes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-319" {
  name                = "password_history"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-320" {
  name                = "password_require_current"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-321" {
  name                = "password_reuse_interval"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-322" {
  name                = "performance_schema"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-323" {
  name                = "performance_schema_consumer_events_stages_current"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-324" {
  name                = "performance_schema_consumer_events_stages_history"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-325" {
  name                = "performance_schema_consumer_events_stages_history_long"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-326" {
  name                = "performance_schema_consumer_events_statements_cpu"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-327" {
  name                = "performance_schema_consumer_events_statements_current"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-328" {
  name                = "performance_schema_consumer_events_statements_history"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-329" {
  name                = "performance_schema_consumer_events_statements_history_long"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-330" {
  name                = "performance_schema_consumer_events_transactions_current"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-331" {
  name                = "performance_schema_consumer_events_transactions_history"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-332" {
  name                = "performance_schema_consumer_events_transactions_history_long"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-333" {
  name                = "performance_schema_consumer_events_waits_current"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-334" {
  name                = "performance_schema_consumer_events_waits_history"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-335" {
  name                = "performance_schema_consumer_events_waits_history_long"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-336" {
  name                = "performance_schema_consumer_global_instrumentation"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-337" {
  name                = "performance_schema_consumer_statements_digest"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-338" {
  name                = "performance_schema_consumer_thread_instrumentation"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-339" {
  name                = "performance_schema_events_statements_history_long_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "-1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-340" {
  name                = "performance_schema_events_statements_history_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "-1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-341" {
  name                = "performance_schema_instrument"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-342" {
  name                = "performance_schema_max_cond_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-343" {
  name                = "performance_schema_max_digest_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-344" {
  name                = "performance_schema_max_file_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "80"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-345" {
  name                = "performance_schema_max_file_handles"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "32768"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-346" {
  name                = "performance_schema_max_memory_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "450"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-347" {
  name                = "performance_schema_max_mutex_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "300"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-348" {
  name                = "performance_schema_max_rwlock_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "60"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-349" {
  name                = "performance_schema_max_socket_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-350" {
  name                = "performance_schema_max_sql_text_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1024"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-351" {
  name                = "performance_schema_max_stage_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "175"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-352" {
  name                = "performance_schema_max_statement_stack"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-353" {
  name                = "performance_schema_max_thread_classes"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "100"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-354" {
  name                = "persist_only_admin_x509_subject"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-355" {
  name                = "persisted_globals_load"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-356" {
  name                = "plugin_load"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-357" {
  name                = "preload_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "32768"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-358" {
  name                = "print_identified_with_as_hex"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-359" {
  name                = "profiling_history_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "15"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-360" {
  name                = "protocol_compression_algorithms"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "zlib,zstd,uncompressed"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-361" {
  name                = "query_alloc_block_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8192"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-362" {
  name                = "query_prealloc_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8192"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-363" {
  name                = "range_alloc_block_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4096"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-364" {
  name                = "range_optimizer_max_mem_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8388608"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-365" {
  name                = "read_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "131072"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-366" {
  name                = "read_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-367" {
  name                = "read_rnd_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "262144"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-368" {
  name                = "regexp_stack_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8000000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-369" {
  name                = "regexp_time_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "32"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-370" {
  name                = "relay_log"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/relaylogs/relay_bin"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-371" {
  name                = "relay_log_index"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/relaylogs/relay_bin.index"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-372" {
  name                = "relay_log_info_repository"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TABLE"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-373" {
  name                = "relay_log_purge"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-374" {
  name                = "relay_log_recovery"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-375" {
  name                = "relay_log_space_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1073741824"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-376" {
  name                = "replicate_wild_ignore_table"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "mysql.%,information_schema.%,performance_schema.%,sys.%"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-377" {
  name                = "require_secure_transport"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-378" {
  name                = "rpl_read_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8388608"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-379" {
  name                = "rpl_stop_slave_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "31536000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-380" {
  name                = "schema_definition_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "256"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-381" {
  name                = "secure_file_priv"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "NULL"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-382" {
  name                = "server_id"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "3094015716"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-383" {
  name                = "session_track_gtids"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-384" {
  name                = "session_track_schema"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-385" {
  name                = "session_track_state_change"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-386" {
  name                = "session_track_system_variables"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "time_zone, autocommit, character_set_client, character_set_results, character_set_connection"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-387" {
  name                = "session_track_transaction_info"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-388" {
  name                = "sha256_password_auto_generate_rsa_keys"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-389" {
  name                = "sha256_password_private_key_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "private_key.pem"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-390" {
  name                = "sha256_password_proxy_users"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-391" {
  name                = "sha256_password_public_key_path"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "public_key.pem"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-392" {
  name                = "show_old_temporals"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-393" {
  name                = "skip-slave-start"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "FALSE"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-394" {
  name                = "skip_external_locking"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-395" {
  name                = "skip_name_resolve"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-396" {
  name                = "skip_show_database"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-397" {
  name                = "slave_checkpoint_group"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "512"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-398" {
  name                = "slave_checkpoint_period"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "300"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-399" {
  name                = "slave_compressed_protocol"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-400" {
  name                = "slave_exec_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "STRICT"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-401" {
  name                = "slave_load_tmpdir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/temp"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-402" {
  name                = "slave_max_allowed_packet"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1073741824"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-403" {
  name                = "slave_net_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "60"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-404" {
  name                = "slave_parallel_type"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "LOGICAL_CLOCK"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-405" {
  name                = "slave_parallel_workers"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-406" {
  name                = "slave_pending_jobs_size_max"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16777216"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-407" {
  name                = "slave_preserve_commit_order"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-408" {
  name                = "slave_rows_search_algorithms"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TABLE_SCAN,INDEX_SCAN"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-409" {
  name                = "slave_skip_errors"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-410" {
  name                = "slave_sql_verify_checksum"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-411" {
  name                = "slave_transaction_retries"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-412" {
  name                = "slave_type_conversions"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-413" {
  name                = "slow_launch_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "2"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-414" {
  name                = "slow_query_log"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-415" {
  name                = "slow_query_log_file"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/serverlogs/slowlogs/mysql-slow-mysqlunivespsrv-2025100214.log"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-416" {
  name                = "sort_buffer_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "262144"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-417" {
  name                = "sql_generate_invisible_primary_key"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-418" {
  name                = "sql_mode"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-419" {
  name                = "sql_require_primary_key"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-420" {
  name                = "ssl_cipher"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-CCM:ECDHE-ECDSA-AES128-CCM:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-CCM:DHE-RSA-AES128-CCM"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-421" {
  name                = "stored_program_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "256"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-422" {
  name                = "stored_program_definition_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "256"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-423" {
  name                = "super_read_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-424" {
  name                = "sync_binlog"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-425" {
  name                = "sync_master_info"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-426" {
  name                = "sync_relay_log"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "0"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-427" {
  name                = "sync_relay_log_info"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-428" {
  name                = "table_definition_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "600"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-429" {
  name                = "table_encryption_privilege_check"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-430" {
  name                = "table_open_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "600"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-431" {
  name                = "table_open_cache_instances"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-432" {
  name                = "tablespace_definition_cache"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "256"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-433" {
  name                = "temptable_max_ram"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1073741824"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-434" {
  name                = "temptable_use_mmap"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-435" {
  name                = "thread_cache_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "9"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-436" {
  name                = "thread_handling"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "one-thread-per-connection"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-437" {
  name                = "thread_pool_batch_max_time"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "30000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-438" {
  name                = "thread_pool_batch_wait_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "10000"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-439" {
  name                = "thread_pool_idle_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "60"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-440" {
  name                = "thread_pool_new_conn_high_prio"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-441" {
  name                = "thread_pool_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-442" {
  name                = "thread_pool_stall_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "500"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-443" {
  name                = "thread_stack"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "286720"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-444" {
  name                = "time_zone"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "+00:00"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-445" {
  name                = "tls_ciphersuites"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TLS_AES_256_GCM_SHA384:TLS_AES_128_GCM_SHA256:TLS_AES_128_CCM_SHA256"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-446" {
  name                = "tls_version"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "TLSv1.2,TLSv1.3"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-447" {
  name                = "tmp_table_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "16777216"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-448" {
  name                = "tmpdir"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "/app/work/temp"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-449" {
  name                = "transaction_alloc_block_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8192"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-450" {
  name                = "transaction_isolation"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "REPEATABLE-READ"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-451" {
  name                = "transaction_prealloc_size"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "4096"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-452" {
  name                = "transaction_read_only"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-453" {
  name                = "transaction_write_set_extraction"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "XXHASH64"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-454" {
  name                = "updatable_views_with_limit"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "YES"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-455" {
  name                = "validate_password_check_user_name"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "OFF"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-456" {
  name                = "validate_password_dictionary_file"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = ""
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-457" {
  name                = "validate_password_length"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "8"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-458" {
  name                = "validate_password_mixed_case_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-459" {
  name                = "validate_password_number_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-460" {
  name                = "validate_password_policy"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "MEDIUM"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-461" {
  name                = "validate_password_special_char_count"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "1"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-462" {
  name                = "validate_user_plugins"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-463" {
  name                = "wait_timeout"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "28800"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_server_configuration" "res-464" {
  name                = "windowing_use_high_precision"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  value               = "ON"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_database" "res-465" {
  charset             = "utf8mb3"
  collation           = "utf8mb3_general_ci"
  name                = "condominio"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_database" "res-466" {
  charset             = "utf8mb3"
  collation           = "utf8mb3_general_ci"
  name                = "information_schema"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_database" "res-467" {
  charset             = "utf8mb4"
  collation           = "utf8mb4_0900_ai_ci"
  name                = "mysql"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_database" "res-468" {
  charset             = "utf8mb4"
  collation           = "utf8mb4_0900_ai_ci"
  name                = "performance_schema"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_mysql_flexible_database" "res-469" {
  charset             = "utf8mb4"
  collation           = "utf8mb4_0900_ai_ci"
  name                = "sys"
  resource_group_name = "rg-univesp-pij2"
  server_name         = "mysqlunivespsrv"
  depends_on = [
    azurerm_mysql_flexible_server.res-1
  ]
}
resource "azurerm_user_assigned_identity" "res-470" {
  location            = "canadacentral"
  name                = "<Nome Identity com Github>" 
  resource_group_name = "rg-univesp-pij2"
  depends_on = [
    azurerm_resource_group.res-0
  ]
}
resource "azurerm_federated_identity_credential" "res-471" {
  audience            = ["api://AzureADTokenExchange"]
  issuer              = "https://token.actions.githubusercontent.com"
  name                = "<Nome Identity com Github-credential-1>"
  parent_id           = azurerm_user_assigned_identity.res-470.id
  resource_group_name = "rg-univesp-pij2"
  subject             = "repo:flavio-univesp/projeto_integrador2:ref:refs/heads/full_branch"
}
resource "azurerm_federated_identity_credential" "res-472" {
  audience            = ["api://AzureADTokenExchange"]
  issuer              = "https://token.actions.githubusercontent.com"
  name                = "<Nome Identity com Github-credential-2>"
  parent_id           = azurerm_user_assigned_identity.res-470.id
  resource_group_name = "rg-univesp-pij2"
  subject             = "repo:flavio-univesp/projeto_integrador2:ref:refs/heads/main"
}
resource "azurerm_private_dns_zone" "res-473" {
  name                = "privatelink.mysql.database.azure.com"
  resource_group_name = "rg-univesp-pij2"
  depends_on = [
    azurerm_resource_group.res-0
  ]
}
resource "azurerm_private_dns_a_record" "res-474" {
  name                = "mysqlunivespsrv"
  records             = ["10.0.2.4"]
  resource_group_name = "rg-univesp-pij2"
  ttl                 = 30
  zone_name           = "privatelink.mysql.database.azure.com"
  depends_on = [
    azurerm_private_dns_zone.res-473
  ]
}
resource "azurerm_private_dns_zone_virtual_network_link" "res-476" {
  name                  = "privatelink.mysql.database.azure.com-dblink"
  private_dns_zone_name = "privatelink.mysql.database.azure.com"
  resource_group_name   = "rg-univesp-pij2"
  virtual_network_id    = azurerm_virtual_network.res-480.id
  depends_on = [
    azurerm_private_dns_zone.res-473
  ]
}
resource "azurerm_private_dns_zone" "res-477" {
  name                = "privatelink.redis.cache.windows.net"
  resource_group_name = "rg-univesp-pij2"
  depends_on = [
    azurerm_resource_group.res-0
  ]
}
resource "azurerm_private_dns_zone_virtual_network_link" "res-479" {
  name                  = "privatelink.redis.cache.windows.net-applink"
  private_dns_zone_name = "privatelink.redis.cache.windows.net"
  resource_group_name   = "rg-univesp-pij2"
  virtual_network_id    = azurerm_virtual_network.res-480.id
  depends_on = [
    azurerm_private_dns_zone.res-477
  ]
}
resource "azurerm_virtual_network" "res-480" {
  address_space       = ["10.0.0.0/16"]
  location            = "canadacentral"
  name                = "condoservicosVnet"
  resource_group_name = "rg-univesp-pij2"
  depends_on = [
    azurerm_resource_group.res-0
  ]
}
resource "azurerm_subnet" "res-481" {
  address_prefixes     = ["10.0.1.0/24"]
  name                 = "condoservicosAppSubnet"
  resource_group_name  = "rg-univesp-pij2"
  virtual_network_name = "condoservicosVnet"
  delegation {
    name = "dlg-appServices"
    service_delegation {
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
      name    = "Microsoft.Web/serverFarms"
    }
  }
  depends_on = [
    azurerm_virtual_network.res-480
  ]
}
resource "azurerm_subnet" "res-482" {
  address_prefixes     = ["10.0.2.0/24"]
  name                 = "condoservicosDbSubnet"
  resource_group_name  = "rg-univesp-pij2"
  virtual_network_name = "condoservicosVnet"
  delegation {
    name = "dlg-database"
    service_delegation {
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
      name    = "Microsoft.DBforMySQL/flexibleServers"
    }
  }
  depends_on = [
    azurerm_virtual_network.res-480
  ]
}
resource "azurerm_subnet" "res-483" {
  address_prefixes     = ["10.0.0.0/24"]
  name                 = "condoservicosSubnet"
  resource_group_name  = "rg-univesp-pij2"
  virtual_network_name = "condoservicosVnet"
  depends_on = [
    azurerm_virtual_network.res-480
  ]
}
resource "azurerm_service_plan" "res-484" {
  location            = "canadacentral"
  name                = "ASP-rgunivesppij2-b531"
  os_type             = "Linux"
  resource_group_name = "rg-univesp-pij2"
  sku_name            = "B1"
  depends_on = [
    azurerm_resource_group.res-0
  ]
}
resource "azurerm_linux_web_app" "res-485" {
  app_settings = {
    AZURE_MYSQL_DATABASE           = "condominio"
    AZURE_MYSQL_HOST               = "mysqlunivespsrv.mysql.database.azure.com"
    AZURE_MYSQL_PASSWORD           = "<senha do MySQL>>"
    AZURE_MYSQL_PORT               = "3306"
    AZURE_MYSQL_SSL                = "true"
    AZURE_MYSQL_USER               = "<User do MySQL>"
    SCM_DO_BUILD_DURING_DEPLOYMENT = "true"
    WEBSITES_PORT                  = "3000"
    WEBSITE_NODE_DEFAULT_VERSION   = "22"
  }
  location                  = "canadacentral"
  name                      = "condoservicos"
  resource_group_name       = "rg-univesp-pij2"
  service_plan_id           = azurerm_service_plan.res-484.id
  virtual_network_subnet_id = azurerm_subnet.res-481.id
  site_config {
    always_on                         = false
    app_command_line                  = "node server.js"
    ftps_state                        = "FtpsOnly"
    health_check_eviction_time_in_min = 10
    health_check_path                 = "/home"
    ip_restriction_default_action     = ""
    scm_ip_restriction_default_action = ""
    vnet_route_all_enabled            = true
  }
  sticky_settings {
    app_setting_names = ["AZURE_MYSQL_DATABASE", "AZURE_MYSQL_HOST", "AZURE_MYSQL_PASSWORD", "AZURE_MYSQL_PORT", "AZURE_MYSQL_SSL", "AZURE_MYSQL_USER", "SCM_DO_BUILD_DURING_DEPLOYMENT", "WEBSITE_NODE_DEFAULT_VERSION", "WEBSITES_PORT"]
  }
}
resource "azurerm_app_service_custom_hostname_binding" "res-499" {
  app_service_name    = "condoservicos"
  hostname            = "condoservicos-b4dabdgwd3gscbe9.canadacentral-01.azurewebsites.net"
  resource_group_name = "rg-univesp-pij2"
  depends_on = [
    azurerm_linux_web_app.res-485
  ]
}
