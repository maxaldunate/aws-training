# Certified Solutions Architect Professional

### Domain 2. Costing and Account Management

* policy.json
```javascript
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListAllMyBuckets",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetBucketLocation"
       ],
      "Resource": "arn:aws:s3:::productionapp"
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Resource": "arn:aws:s3:::productionapp/*"
    }
  ]
}
```

* role.json
```javascript
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": "sts:AssumeRole",
    "Resource": "arn:aws:iam::PRODUCTION-ACCOUNT-ID:role/MyDevelopersAccess"
  }
}
```

* Slides  
![](Screenshot%20from%202018-02-04%2012-33-05.png?raw=true)   
---  
![](Screenshot%20from%202018-02-04%2013-30-42.png?raw=true)   
--  
![](Screenshot%20from%202018-02-04%2013-30-54.png?raw=true)   
-  
![](Screenshot%20from%202018-02-04%2013-31-03.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-31-13.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-31-17.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-31-36.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-31-49.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-05.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-10.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-12.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-15.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-21.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-34.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-47.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-32-56.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-36-49.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-36-56.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-37-14.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-38-10.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-38-19.png?raw=true)
![](Screenshot%20from%202018-02-04%2013-41-32.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-28-33.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-29-36.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-31-35.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-34-00.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-34-22.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-35-20.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-36-17.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-37-21.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-38-16.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-39-19.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-39-41.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-40-11.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-41-12.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-43-47.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-43-59.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-44-49.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-45-48.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-46-05.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-46-35.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-47-53.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-48-34.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-49-58.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-51-21.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-52-28.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-53-46.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-55-59.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-57-18.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-58-49.png?raw=true)
![](Screenshot%20from%202018-02-04%2014-59-48.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-00-42.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-01-49.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-03-28.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-04-14.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-05-32.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-06-12.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-07-12.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-08-45.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-08-55.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-09-42.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-10-06.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-10-23.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-12-52.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-13-28.png?raw=true)
![](Screenshot%20from%202018-02-04%2015-15-54.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-19-54.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-20-47.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-26-38.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-28-30.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-29-00.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-29-33.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-30-38.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-31-21.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-33-02.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-34-40.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-35-24.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-35-54.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-38-19.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-41-08.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-42-38.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-44-36.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-49-38.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-51-23.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-54-29.png?raw=true)
![](Screenshot%20from%202018-02-04%2020-57-53.png?raw=true)



