
# if [ ! -d "$1" ]; then
    git clone $1
# fi

cp GradingTests.java markdown-parse/
cd markdown-parse
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
