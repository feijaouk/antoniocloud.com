# S3 cp sync exclude include

`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --recursive --exclude "*" --include "{MY-log-files-name}*"`

`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --exclude "*" --include "{MY-log-files-name}*"`
