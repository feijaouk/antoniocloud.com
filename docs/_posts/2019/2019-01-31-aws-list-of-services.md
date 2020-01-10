---
categories: [aws]
tags: [online, aws, cloud, services]
---

Simple way to get a list of  AWS Services.
As of `$ date +%Y-%B-%d, 2019-November-26` there are `206` service. Checked by using `wc -c` command at the end of the below script.


`curl --silent https://awspolicygen.s3.amazonaws.com/js/policies.js | sed '1s/[^=]*=//' | jq | grep -B1 StringPrefix | grep -v StringPrefix | sed 's/\"//g;s/\-//g;s/: {//g' | grep -v "^$" | sort`

```json
    AWS Accounts
    AWS Amplify
    AWS App Mesh
    AWS App Mesh Preview
    AWS AppSync
    AWS Artifact
    AWS Auto Scaling
    AWS Backup
    AWS Backup storage
    AWS Batch
    AWS Billing
    AWS Budget Service
    AWS Certificate Manager
    AWS Certificate Manager Private Certificate Authority
    AWS Chatbot
    AWS Cloud Map
    AWS Cloud9
    AWS CloudFormation
    AWS CloudHSM
    AWS CloudTrail
    AWS Code Signing for Amazon FreeRTOS
    AWS CodeBuild
    AWS CodeCommit
    AWS CodeDeploy
    AWS CodePipeline
    AWS CodeStar
    AWS CodeStar Notifications
    AWS Config
    AWS Cost Explorer Service
    AWS Cost and Usage Report
    AWS Data Exchange
    AWS Database Migration Service
    AWS DeepLens
    AWS DeepRacer
    AWS Device Farm
    AWS Direct Connect
    AWS Directory Service
    AWS Elastic Beanstalk
    AWS Elemental MediaConnect
    AWS Elemental MediaConvert
    AWS Elemental MediaLive
    AWS Elemental MediaPackage
    AWS Elemental MediaPackage VOD
    AWS Elemental MediaStore
    AWS Elemental MediaTailor
    AWS Firewall Manager
    AWS Global Accelerator
    AWS Glue
    AWS Ground Station
    AWS Health APIs and Notifications
    AWS IQ
    AWS IQ Permissions
    AWS Import Export Disk Service
    AWS IoT
    AWS IoT 1Click
    AWS IoT Analytics
    AWS IoT Events
    AWS IoT Greengrass
    AWS IoT SiteWise
    AWS IoT Things Graph
    AWS Key Management Service
    AWS Lake Formation
    AWS Lambda
    AWS License Manager
    AWS Marketplace
    AWS Marketplace Catalog
    AWS Marketplace Entitlement Service
    AWS Marketplace Image Building Service
    AWS Marketplace Management Portal
    AWS Marketplace Metering Service
    AWS Marketplace Procurement Systems Integration
    AWS Migration Hub
    AWS Mobile Hub
    AWS OpsWorks
    AWS OpsWorks Configuration Management
    AWS Organizations
    AWS Performance Insights
    AWS Price List
    AWS Private Marketplace
    AWS Resource Access Manager
    AWS Resource Groups
    AWS RoboMaker
    AWS SSO
    AWS SSO Directory
    AWS Savings Plans
    AWS Secrets Manager
    AWS Security Hub
    AWS Security Token Service
    AWS Server Migration Service
    AWS Serverless Application Repository
    AWS Service Catalog
    AWS Shield
    AWS Snowball
    AWS Step Functions
    AWS Support
    AWS Systems Manager
    AWS Transfer for SFTP
    AWS Trusted Advisor
    AWS WAF
    AWS WAF Regional
    AWS WellArchitected Tool
    AWS XRay
    Alexa for Business
    Amazon API Gateway
    Amazon AppStream 2.0
    Amazon Athena
    Amazon Chime
    Amazon Cloud Directory
    Amazon CloudFront
    Amazon CloudSearch
    Amazon CloudWatch
    Amazon CloudWatch Logs
    Amazon CloudWatch Synthetics
    Amazon Cognito Identity
    Amazon Cognito Sync
    Amazon Cognito User Pools
    Amazon Comprehend
    Amazon Connect
    Amazon Data Lifecycle Manager
    Amazon DynamoDB
    Amazon DynamoDB Accelerator (DAX)
    Amazon EC2
    Amazon EC2 Auto Scaling
    Amazon EC2 Instance Connect
    Amazon ElastiCache
    Amazon Elastic Container Registry
    Amazon Elastic Container Service
    Amazon Elastic Container Service for Kubernetes
    Amazon Elastic File System
    Amazon Elastic Inference
    Amazon Elastic MapReduce
    Amazon Elastic Transcoder
    Amazon Elasticsearch Service
    Amazon EventBridge
    Amazon FSx
    Amazon Forecast
    Amazon FreeRTOS
    Amazon GameLift
    Amazon Glacier
    Amazon GroundTruth Labeling
    Amazon GuardDuty
    Amazon Inspector
    Amazon Kinesis
    Amazon Kinesis Analytics
    Amazon Kinesis Analytics V2
    Amazon Kinesis Firehose
    Amazon Kinesis Video Streams
    Amazon Lex
    Amazon Lightsail
    Amazon MQ
    Amazon Machine Learning
    Amazon Macie
    Amazon Managed Blockchain
    Amazon Managed Streaming for Kafka
    Amazon Mechanical Turk
    Amazon Message Delivery Service
    Amazon Mobile Analytics
    Amazon Neptune
    Amazon Personalize
    Amazon Pinpoint
    Amazon Pinpoint Email Service
    Amazon Pinpoint SMS and Voice Service
    Amazon Polly
    Amazon QLDB
    Amazon QuickSight
    Amazon RDS
    Amazon RDS Data API
    Amazon RDS IAM Authentication
    Amazon Redshift
    Amazon Rekognition
    Amazon Resource Group Tagging API
    Amazon Route 53
    Amazon Route 53 Resolver
    Amazon Route53 Domains
    Amazon S3
    Amazon SES
    Amazon SNS
    Amazon SQS
    Amazon SageMaker
    Amazon Session Manager Message Gateway Service
    Amazon Simple Workflow Service
    Amazon SimpleDB
    Amazon Storage Gateway
    Amazon Sumerian
    Amazon Textract
    Amazon Transcribe
    Amazon Translate
    Amazon WorkDocs
    Amazon WorkLink
    Amazon WorkMail
    Amazon WorkMail Message Flow
    Amazon WorkSpaces
    Amazon WorkSpaces Application Manager
    Application Auto Scaling
    Application Discovery
    CloudWatch Application Insights
    Comprehend Medical
    Data Pipeline
    DataSync
    Database Query Metadata Service
    Elastic Load Balancing
    Elastic Load Balancing V2
    Identity And Access Management
    Launch Wizard
    Manage Amazon API Gateway
    Service Quotas
```

other command

`curl https://awspolicygen.s3.amazonaws.com/js/policies.js | sed '1s/[^=]*=//' | jq '[.serviceMap[].StringPrefix]' | grep \" | sed 's/\"//g' | sort | uniq`
