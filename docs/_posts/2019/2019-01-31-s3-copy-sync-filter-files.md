---

---

S3 cp sync exclude include


`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --recursive --exclude "*" --include "{MY-log-files-name}*"`

`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --exclude "*" --include "{MY-log-files-name}*"`




to work on another blog post

`aws s3 presign s3://path-to-file`

`aws s3 help presign`
