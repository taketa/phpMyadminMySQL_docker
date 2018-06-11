#/bin/bash

docker kill $( docker ps -q )
docker rm $( docker ps -a -q )
docker rmi $( docker images -q -f dangling=true )
docker rmi $( docker images -q )
docker volume rm $( docker volume ls -f dangling=true )

docker network rm exampletemp_default

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ps ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker ps
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ps -a ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker ps -a
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ images ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker images
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ volume ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker volume ls -f dangling=true
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ network ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker network ls --filter type=custom

# array_val=($(ls))
# for index in ${!array_val[*]}; do
#     printf "%4d: %s\n" $index ${array_val[$index]}
#     # echo $index
# done
# echo -n "Dell images? (N/y) "
# read item
# case "$item" in
# 	y) echo -n "Key: "
# 		while true
# 		do
# 			read key
# 			if [[ ! -z "$key" ]]; then
# 				rm -rf ./${array_val[$key]}
# 				ls -al
#     			break
# 			fi
# 		done;;
#     *) echo "Exit";;
# esac
# shift

# echo
# while [ -n "$1" ]
# do
# case "$1" in
# 	-d) full="" ;;
# 	*) full="full" ;;
# esac
# shift
# done

# fun_ps() {
# 	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ps ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	docker ps

# 	# if [ $full = 'full' ]
# 	# then
# 		docker kill $( docker ps -q )
# 		docker rm $( docker ps -a -q )
# 	# else
# 	# 	echo -n "Kill? (Y/n) "
# 	# 	read item
# 	# 	case "$item" in
# 	# 	    n) docker ps;;
# 	# 		*) ps_list=($(docker ps -q))
# 	# 			for index in ${!ps_list[*]}; do
# 	# 			    printf "%4d: %s\n" $index ${ps_list[$index]}
# 	# 			done
# 	# 			echo -n "Key: "
# 	# 			while true; do
# 	# 				read key
# 	# 				if [[ ! -z "$key" ]]; then
# 	# 					docker kill ${ps_list[$key]}
# 	# 					docker ps
# 	# 	    			break
# 	# 				fi
# 	# 			done;;
# 	# 	esac
# 	# fi
# 	docker ps
# }

# fun_psa() {
# 	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ps -a ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	docker ps -a

# 	if [ $full = 'full' ]
# 	then
# 		docker kill $( docker ps -q )
# 	else
# 		echo -n "Kill? (Y/n) "
# 		read item
# 		case "$item" in
# 		    n) docker ps;;
# 			*) ps_list=($(docker ps -q))
# 				for index in ${!ps_list[*]}; do
# 				    printf "%4d: %s\n" $index ${ps_list[$index]}
# 				done
# 				echo -n "Key: "
# 				while true; do
# 					read key
# 					if [[ ! -z "$key" ]]; then
# 						docker kill ${ps_list[$key]}
# 						docker ps
# 		    			break
# 					fi
# 				done;;
# 		esac
# 	fi
# }

# fun_images() {
# 	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ images ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	docker images

# 	if [ $full = 'full' ]
# 	then
# 		docker rmi $( docker images -q -f dangling=true )
# 		docker rmi $( docker images -q )
# 	else
# 		echo -n "Dell images? (Y/n) "
# 		read item
# 		case "$item" in
# 		    n) docker images;;
# 			*) imag_list=($(docker images -q))
# 				for index in ${!imag_list[*]}; do
# 				    printf "%4d: %s\n" $index ${imag_list[$index]}
# 				done
# 				echo -n "Key: "
# 				while true; do
# 					read key
# 					if [[ ! -z "$key" ]]; then
# 						docker rmi ${imag_list[$key]}
# 						docker images
# 		    			break
# 					fi
# 				done;;
# 		esac
# 	fi
# }

# fun_images() {
# 	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ images ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 	docker images

# 	if [ $full = 'full' ]
# 	then
# 		docker rmi $( docker images -q -f dangling=true )
# 		docker rmi $( docker images -q )
# 	else
# 		echo -n "Dell images? (Y/n) "
# 		read item
# 		case "$item" in
# 		    n) docker images;;
# 			*) docker rmi $( docker images -q -f dangling=true )
# 				docker rmi $( docker images -q )
# 				docker images;;
# 		esac
# 	fi
# }

# # if  [ $message = 'full' ]
# # then
# 	# full="full"
# # else
# 	# full=""
# # fi

# fun_ps
# fun_images

# echo "full = $full"


# if [[ ! -z "$message" ]]; then
        
# fi