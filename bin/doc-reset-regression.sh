#!/bin/sh
. bin/env.sh

if $BUILDI
then
  echo "Build ok"
else
  echo "Build error"
  exit 1
fi

echo RESETTING REGRESSION--ARE YOU SURE\?
read

for f in $FILES
do
  echo "=== ${f} ==="
  $IDOC -input=${TESTDIR}/${f}.i > ${TESTDIR}/${f}-out.html
  $ITEXTDOC -input=${TESTDIR}/${f}.i > ${TESTDIR}/${f}-out.txt
done
