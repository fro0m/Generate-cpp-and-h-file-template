#!/bin/bash

# Generates .h and .cpp file from template
# usage gen.sh ClassName file_name
# creates ./file_name.h and ./file_name.cpp

CLASS_NAME=$1
FILE_NAME=$2

touch ./$FILE_NAME.h
touch ./$FILE_NAME.cpp

(
cat <<HEADER
#pragma once

class $CLASS_NAME
{
public:
    $CLASS_NAME()
    {
        
    }
    
public slots:
    
signals:
    
private:

}
HEADER
)> ./$FILE_NAME.h

(
cat <<IMPLEMENTATION
#include "$FILE_NAME.h"
IMPLEMENTATION
)> ./$FILE_NAME.cpp
