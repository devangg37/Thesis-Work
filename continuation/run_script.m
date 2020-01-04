% circle continuation example
close all
clear all
clc

global gp globalsolution

gp=5; newton('fun1',-3300)
globalsolution=[ans;gp];

gp=7.5; newton('fun1',-3300)
globalsolution=[globalsolution,[ans;gp]];

run_continuation('fun1',12000)
B = globalsolution';
 plot(globalsolution(1,:),globalsolution(2,:)); axis('image')
 
 