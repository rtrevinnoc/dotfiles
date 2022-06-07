ps aux | grep -ie golden | awk '{print $2}' | xargs kill -9
