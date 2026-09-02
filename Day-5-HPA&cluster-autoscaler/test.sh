for j in {1..10}; do  
    for i in {1..1000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" http://a58a45b202bcf45bfb1f83f07dfc8008-1202968466.us-east-1.elb.amazonaws.com/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done
