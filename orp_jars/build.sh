pwd
ls
files=(esgf-security-2.7.18.jar esgf-security-test-2.7.18.jar)

if [ -d /usr/local/tomcat/webapps/esg-orp/WEB-INF/lib ]   # for file "if [-f /home/rama/file]"
then
    destination_path=/usr/local/tomcat/webapps/esg-orp/WEB-INF/lib
else
    mkdir -p $PREFIX/share/esgf-jars/orp
    destination_path=$PREFIX/share/esgf-jars/orp/
fi

mkdir -p $PREFIX/share/esgf-jars/orp
for fnm in "${files[@]}"
do
    cp $fnm $destination_path
    # curl -o $PREFIX/share/esgf-jars/$fnm https://aims1.llnl.gov/esgf/dist/2.7/1/esg-search/$fnm
done
