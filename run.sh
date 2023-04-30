for var in $(echo $1 | sed -e 's/,/ /g'); do
  var_name=$(echo $var | awk -F : '{print $1}')
  parameter_name=$(echo $var | awk -F : '{print $2}')
  aws ssm get-parameter --name $parameter_name
done