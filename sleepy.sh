function sleepy {
    time_now=`date +%s`;
    time_factor=`echo 5400`;
    time_first=`echo 840`;

    echo "If you head to bed now, you should try to wake up at:"

    for i in `seq 1 6`; do
        if [ $i == '1' ]; then 
            let time_out=$time_now+$time_factor+$time_first
            printf "%s" $(date -r $time_out +%H:%M\ HRS\ )
        else
            let time_out=$time_now+$i*$time_factor+$time_first
            printf "%s" $(date -r $time_out +%H:%M\ HRS\ );
        fi

        if [ $i == '6' ]; then
            printf "\n"
        else
            printf ", "
        fi
    done
}

sleepy;