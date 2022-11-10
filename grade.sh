
CP=".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
TESTNAME="TEST"
STUDENT_DIR="student-dir"

rm -rf $STUDENT_DIR

git clone $1 $STUDENT_DIR # names the repo $STUDENT_DIR

cp $TESTNAME.java $STUDENT_DIR/ # the name of the test

cd ./$STUDENT_DIR/


javac -cp $CP *.java

java -cp $CP org.junit.runner.JUnitCore $TESTNAME
