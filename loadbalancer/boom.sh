for i in  `seq 1 10`
do
   con=$((100*$i))
   req=$((1000*$i))
   echo "bin/boom -cpus 4 -n $req -c $con http://perf-nginx.iassist.ndslabs.org/"
   bin/boom -cpus 4 -n $req -c $con http://perf-nginx.iassist.ndslabs.org/
   sleep 1
done
