SOME COMMANDS


sudo docker cp darkeden/ ${CONTAINER}:/home/
sudo docker cp sql/ ${CONTAINER}:/home/darkeden/

`cd /home/darkeden/vs/data/ && for f in ${HName}.*.bin; do mv -v "$f" "${f/${HName}/${NEWNAME}}"; done;`

for f in *; do cmp --silent Santa1.slayer.bin $f && echo $f || echo 'WARNING: $f'; done;
for f in *; do cmp --silent Santa1.slayer.bin $f && echo $f; done;

cmp --silent Santa1.slayer.bin Class1.slayer.bin && echo 'SUCCESS' || echo 'WARNING'

EName='Bathory' && \
HName=`mysql -uroot -N -e "select distinct HName from DARKEDEN.MonsterInfo where EName = '${EName}'"` && \
NEWNAME=`echo ${EName} | sed -e 's/ //g'` && \
mysql -uroot -N -e "update DARKEDEN.MonsterInfo set HName = '${NEWNAME}' where EName = '${EName}'" && \
cp /home/darkeden/vs/data/${HName}.*.bin /home/

EName='Bathory' && \
HName=`mysql -uroot -N -e "select distinct HName from DARKEDEN.MonsterInfo where EName = '${EName}'"` && \
echo ${HName}

EName='AAAAAAAAA' && \
NEWNAME=`echo ${EName} | sed -e 's/ //g'` && \
HName=`mysql -uroot -N -e "select distinct HName from DARKEDEN.MonsterInfo where EName = '${EName}'"` && \ 
cp /home/darkeden/vs/data/${HName}.*.bin /root/
yes | cp "${HName}.ousters.bin" "${NEWNAME}.ousters.bin" 
yes | cp "${HName}.vampire.bin" "${NEWNAME}.vampire.bin"
yes | cp "${HName}.slayer.bin" "${NEWNAME}.slayer.bin"
yes | rm /root/${HName}.ousters.bin
yes | rm /root/${HName}.vampire.bin
yes | rm /root/${HName}.slayer.bin
ls




yes | rm /root/${NEWNAME}.ousters.bin
yes | rm /root/${NEWNAME}.vampire.bin
yes | rm /root/${NEWNAME}.slayer.bin
ls
