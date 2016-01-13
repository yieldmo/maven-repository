md5 -q maven-metadata.xml > maven-metadata.xml.md5
shasum -a 1 maven-metadata.xml | awk '{ print $1 }' > maven-metadata.xml.sha1
echo 'Generated metadata'

echo 'Generating for ' $1'/ymsdk-'$1'.aar'
md5 -q $1/ymsdk-$1.aar > $1/ymsdk-$1.aar.md5
shasum -a 1 $1/ymsdk-$1.aar | awk '{ print $1 }' > $1/ymsdk-$1.aar.sha1

echo 'Generating for ' $1'/ymsdk-'$1'.pom'
md5 -q $1/ymsdk-$1.pom > $1/ymsdk-$1.pom.md5
shasum -a 1 $1/ymsdk-$1.pom | awk '{ print $1 }' > $1/ymsdk-$1.pom.sha1
