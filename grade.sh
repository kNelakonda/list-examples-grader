#Total student score out of 35
TOTAL_SCORE=0

CP=".:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar" # relative junit
TESTNAME="TestListExamples"
STUDENT_DIR="student-dir"

rm -rf $STUDENT_DIR

git clone $1 $STUDENT_DIR # names the repo $STUDENT_DIR

cp $TESTNAME.java $STUDENT_DIR/ # the name of the test

INNARDS=$(ls ./$STUDENT_DIR)
# very bad case of a repo with just one subdirectory
if [[ -d ./$STUDENT_DIR/$INNARDS ]]; then
	STUDENT_DIR=./$STUDENT_DIR/$INNARDS
fi


## wrong name fix, one file expected though
if [[ -f $(ls) ]]; then
	mv $(ls) ListExamples.java
fi



cd ./$STUDENT_DIR/

# remove any previoiusly student compiled
rm *.class 2> /dev/null


printf "<<-- Starting Compilation -->>\n"

javac -cp $CP *.java

# check if their code compiled without errors
if [[ $? -eq 0 ]]; then
	
	# awarding them points
	TOTAL_SCORE=$((TOTAL_SCORE + 5))

fi



printf "<<-- Running Java -->>\n"

java -cp $CP org.junit.runner.JUnitCore $TESTNAME


# check if their code runs tests
if [[ $? -eq 0 ]]; then
	
	# awarding them points
	TOTAL_SCORE=$((TOTAL_SCORE + 35))

fi



# view tests




# Give a final score for the students
printf "Student is given a score of $TOTAL_SCORE/35 \n"
