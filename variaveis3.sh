#!/bin/bash

echo $1 $2 $3

SOMA=$(expr $2 + $3)
MEDIA=$(expr $SOMA / 2)

echo "O aluno é $1"
echo "A primira nota $2" 
echo "A segunda nota $3" 
echo "A média é $MEDIA"
