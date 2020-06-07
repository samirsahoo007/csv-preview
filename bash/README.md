- Set APP_DIR to the actual application directory.

- Set SERVER to the actual username and server name.

- If your server is on Amazon EC2, set KEYFILE to the path of your EC2 key file.

- Make this file executable:

$ chmod +x deploy/initiate.sh

- work.sh does not need to be executable because it is never executed on your local computer.

- Add these files to your Git repository, commit and test the the script:

```
$ git add deploy/work.sh deploy/initiate.sh
$ git commit -m "Add deployment automation scripts"
$ ./deploy/initiate.sh
```
