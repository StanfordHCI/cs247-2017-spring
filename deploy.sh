# deploy to hci servers
# needs fully configured hci host in sshconfig
# to be used as post-commit hook

ssh hci << EOF
  echo "connected to hci.stanford.edu"
  cd /afs/cs/group/hci/www/courses/cs247/2017-spring
  git pull
  echo "updated site to git repo"
  exit
EOF

open "http://cs247.stanford.edu/2017-spring"