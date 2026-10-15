/**
* Name: NewModel
* Based on the internal empty template. 
* Author: Lenovo
* Tags: 
*/


model NewModel

/* Insert your model definition here */
global{
int my_variable <- 1;
init{
create my_agents number:5 {
speed <- 3.0 ;
}
}
}
species my_agents skills:[moving]{
reflex move{
do wander;
}
aspect default{
draw triangle(2) color: #blue ;
}
}
grid my_CA {
}
experiment main_experiment type:gui{
parameter "my Variable" var: my_variable;
output {
display map {
species my_agents aspect:default;
}
}
}