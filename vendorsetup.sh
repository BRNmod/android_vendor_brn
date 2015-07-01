for combo in $(curl -s https://raw.githubusercontent.com/BRNmod/jenkins_build/master/brn-build-targets | sed -e 's/#.*$//' | grep brn-12.1 | awk '{printf "cm_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done