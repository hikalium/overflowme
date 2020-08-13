MAX=64
for ((i=1;i<=${MAX};i++))
do
	make overflowme${i}.bin
done
for ((i=1;i<=${MAX};i++))
do
	./overflowme${i}.bin
done
