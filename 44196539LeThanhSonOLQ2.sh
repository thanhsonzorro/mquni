#!/bin/bash
sudo mkdir -p ../../new
for i in $(sed -n '1,$p' current_list);do
        sudo mv $i $(echo $i | sed "s/.*/..\/..\/new\/ACST890_s1_2018_&.txt/");
done