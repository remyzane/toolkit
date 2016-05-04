#!/bin/bash

if [ "$1" = "ssh" ]
then
	command="ssh"
	param_suffix="-p 22"
else
	command="sftp -P 22"
	param_suffix=""
fi

if [ ! $2 ]
then
	echo "ip number or remy"
	exit
fi

if [ "$2" = "remy" ]
then
	echo $command "root@10.10.11.11" $param_suffix
	$command root@10.10.11.11 $param_suffix
	exit
fi

echo $command "root@8.9.10."$2 $param_suffix
$command root@8.9.10.$2 $param_suffix
