#!/bin/bash

echo "Thanks for using this GH action!"
input_file=$1
output_format=$2
dependencies=$3

ln -s /render.R .

if ! [ -z $dependencies ]
then
    packages=\'${dependencies//,/\',\'}\'
    Rscript -e "install.packages(c($packages))"
fi

Rscript render.R $input_file $output_format