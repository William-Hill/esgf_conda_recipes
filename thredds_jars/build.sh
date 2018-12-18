if [ -d /usr/local/tomcat/webapps/ ]   # for file "if [-f /home/rama/file]"
then
    thredds_path=/usr/local/tomcat/webapps/
    cp thredds_5.0.3.war $thredds_path
    tar -xvf $thredds_path/thredds_5.0.3.war
else
    mkdir -p $PREFIX/share/esgf-jars/thredds
    thredds_path=$PREFIX/share/esgf-jars/thredds/
    cp thredds_5.0.3.war $thredds_path
fi

files=(commons-httpclient-3.1.jar commons-lang-2.6.jar jdom-legacy-1.1.3.jar)

if [ -d /usr/local/tomcat/webapps/thredds/WEB-INF/lib/ ]   # for file "if [-f /home/rama/file]"
then
    destination_path=/usr/local/tomcat/webapps/thredds/WEB-INF/lib/
else
    mkdir -p $PREFIX/share/esgf-jars/thredds
    destination_path=$PREFIX/share/esgf-jars/thredds/
fi

mkdir -p $PREFIX/share/esgf-jars/thredds
for fnm in "${files[@]}"
do
    cp $fnm $destination_path
    # curl -o $PREFIX/share/esgf-jars/$fnm https://aims1.llnl.gov/esgf/dist/2.7/1/esg-search/$fnm
done
