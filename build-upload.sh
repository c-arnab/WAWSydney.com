#!/bin/sh

jekyll --no-server --no-auto
s3cmd put --recursive _site/* s3://wawsydney.com
s3cmd setacl --acl-public --recursive s3://wawsydney.com

