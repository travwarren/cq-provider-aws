-- Autogenerated by migration tool on 2022-04-04 17:13:07
-- CHANGEME: Verify or edit this file before proceeding

-- Resource: sns.subscriptions
ALTER TABLE IF EXISTS aws_sns_subscriptions DROP CONSTRAINT aws_sns_subscriptions_pk;
ALTER TABLE IF EXISTS aws_sns_subscriptions ADD CONSTRAINT aws_sns_subscriptions_pk PRIMARY KEY (cq_fetch_date,arn);

-- Resource: mq.brokers
ALTER TABLE IF EXISTS aws_mq_brokers DROP CONSTRAINT aws_mq_brokers_pk;
ALTER TABLE IF EXISTS "aws_mq_brokers" RENAME COLUMN id TO broker_id;
ALTER TABLE IF EXISTS aws_mq_brokers ADD CONSTRAINT aws_mq_brokers_pk PRIMARY KEY (account_id,broker_id);
ALTER TABLE IF EXISTS aws_mq_broker_configurations DROP CONSTRAINT aws_mq_broker_configurations_pk;
ALTER TABLE IF EXISTS aws_mq_broker_configurations ADD CONSTRAINT aws_mq_broker_configurations_pk PRIMARY KEY (broker_cq_id,id);
DROP TABLE IF EXISTS aws_mq_broker_configuration_revisions;
ALTER TABLE IF EXISTS aws_mq_broker_users DROP CONSTRAINT aws_mq_broker_users_pk;
ALTER TABLE IF EXISTS aws_mq_broker_users ADD CONSTRAINT aws_mq_broker_users_pk PRIMARY KEY (broker_cq_id,username);
