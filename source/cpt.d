module source.cpt;

//Nan0MK's Cool Print Tools Dlang edition
import std.stdio;

/*Reverse printer: Prints the given string in reverse*/
string revPrint(string stringIn){
    string stringOut;
    char inserter;
    long i = stringIn.length;
    while(i>0){
        inserter = stringIn[i-1];
        stringOut = stringOut ~ inserter;
        i--;
    }
    return stringOut;
}

/*Vertical printer: prints the given text vertically*/
void vertPrint(string stringIn){
    long i = 0;
    while(i<stringIn.length){
        writeln(stringIn[i]);
        i++;
    }
}

/*Reverse vertical printer: prints the gien text vertically in reverse*/
void revVertPrint(string stringIn){
    long i = stringIn.length;
    while(i>0){
        writeln(stringIn[i-1]);
        i--;
    }
}

/*Diagonal printer: prints the given text diagonally*/
void diagPrint(string stringIn){
    string space = " ";
    long i = 0;
    while(i<stringIn.length){
        if(i>0){
            write(space);
            space = space ~ " ";
        }
        writeln(stringIn[i]);
        i++;
    }
}

/*Reverse diagonal printer: prints the given text diagonally in reverse*/
void revDiagPrint(string stringIn){
    string space = " ";
    long i = stringIn.length;
    while(i>0){
        if(i-1<stringIn.length){
            write(space);
            space = space ~ " ";
        }
        writeln(stringIn[i-1]);
        i--;
    }
}

/*Stagger printer: prints the given text staggered top and bottom*/
void staggerPrint(string stringIn){
    stringIn = stringIn ~ " ";
    bool UP = true;
    string topString;
    string botString;
    char inserter;
    long i = 0;
    long j = 0;

    while(i<stringIn.length){
        if(UP){
            if(j<stringIn.length){
                inserter = stringIn[j]; 
            }
            topString = topString ~ inserter;
            botString = botString ~ " ";
            i++;
            j++;
            UP = false;
        }
        if(!UP){
            if(j<stringIn.length){
                inserter = stringIn[j]; 
            }
            botString = botString ~ inserter;
            topString = topString ~ " ";
            i++;
            j++;
            UP = true;
        }
    }
    writeln(topString);
    writeln(botString);
}

/*Reverse stagger printer: prints the given text staggered top and bottom
in reverse*/
void revStaggerPrint(string stringIn){
    bool UP = true;
    string topString;
    string botString;
    char inserter;
    long i = stringIn.length;
    long j = stringIn.length;

    while(i>0){
        if(UP){
            if(j>0){
                inserter = stringIn[j-1];
                topString = topString ~ inserter;
            }
            botString = botString ~ " ";
            i--;
            j--;
            UP = false;
        }
        if(!UP){
            if(j>0){
                inserter = stringIn[j-1];
                botString = botString ~ inserter;
            }
            topString = topString ~ " ";
            i--;
            j--;
            UP = true;
        }
    }
    writeln(topString);
    writeln(botString);
}