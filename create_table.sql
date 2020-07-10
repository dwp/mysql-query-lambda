CREATE TABLE IF NOT EXISTS `{table_name}` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `hbase_id` VARCHAR(45) NULL,
    `hbase_timestamp` DATETIME NULL,
    `write_timestamp` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `correlation_id` VARCHAR(160) NULL,
    `topic_name` VARCHAR(45) NULL,
    `kafka_partition` INT NULL,
    `kafka_offset` INT NULL,
    `reconciled_result` TINYINT(1) NOT NULL DEFAULT 0,
    `reconciled_timestamp` DATETIME NULL,
    PRIMARY KEY (`id`),
    INDEX (hbase_id,hbase_timestamp),
    INDEX (write_timestamp),
    INDEX (reconciled_result)
);