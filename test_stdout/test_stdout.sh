# /bin/sh -x
# https://qiita.com/laikuaut/items/e1cc312ffc7ec2c872fc

# bash stdout_and_stderr.sh 1> stdout.log 2> stderr.log
# cat stdout.log
# cat stderr.log

# { bash stdout_and_stderr.sh 3>&1 1>&2 2>&3; } 1> stdout.log 2> stderr.log
# cat stdout.log
# cat stderr.log
# { bash stdout_and_stderr.sh 3>&2 2>&1 1>&3; } 1> stdout.log 2> stderr.log
# cat stdout.log
# cat stderr.log

# { bash stdout_and_stderr.sh 3>&2 2>&1 1>&3 | tee stderr.log; } 3>&2 2>&1 1>&3

{ { bash stdout_and_stderr.sh | tee stdout.log; } 3>&2 2>&1 1>&3 | tee stderr.log; } 3>&2 2>&1 1>&3
