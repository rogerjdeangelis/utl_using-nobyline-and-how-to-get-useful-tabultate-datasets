Using nobyline and how to get useful tabultate datasets                                                                                        
                                                                                                                                               
   Three solutons                                                                                                                              
                                                                                                                                               
       1. nobyline (best soluton - dataset and static output)                                                                                  
          "Zhu, Bin (HEALTH)" <bin.zhu@HEALTH.NY.GOV>                                                                                          
                                                                                                                                               
       2. proc report (related solution - static report and dataset)                                                                           
                                                                                                                                               
       3. Capture output (least useful. Butt has other applications for tabulate)                                                              
                                                                                                                                               
https://tinyurl.com/y6juu9zx                                                                                                                   
https://github.com/rogerjdeangelis/utl_using-nobyline-and-how-to-get-useful-tabultate-datasets                                                 
                                                                                                                                               
SOAPOX ON                                                                                                                                      
                                                                                                                                               
  I like to avoid tabulate because it does not honor ods output and                                                                            
  you can easily be painted into a corner.                                                                                                     
                                                                                                                                               
  SAS needs to fix the serious bug with tabulated ods output.                                                                                  
                                                                                                                                               
  Note you can output tabulate to excel and read it back in to create a dataset,                                                               
  Should not be that difficult to fix tabulate.                                                                                                
                                                                                                                                               
  see this post for atypical problem with tabulate                                                                                             
  https://tinyurl.com/y6juu9zx                                                                                                                 
  https://communities.sas.com/t5/SAS-Programming/Convert-proc-tabulate-to-proc-report-and-show-each-value-of/m-p/679656                        
                                                                                                                                               
SOAPBOX OFF                                                                                                                                    
                                                                                                                                               
macros                                                                                                                                         
https://tinyurl.com/y9nfugth                                                                                                                   
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                                     
                                                                                                                                               
                                                                                                                                               
Problem: Change 'sex=M' and 'sex=F' to just M and F in proc tabulate                                                                           
                                                                                                                                               
proc tabulate data=class;                                                                                                                      
class age;                                                                                                                                     
by sex;                                                                                                                                        
var height;                                                                                                                                    
tables age, height*(mean);                                                                                                                     
run;                                                                                                                                           
                                                                                                                                               
SEX=F                      SEX=M                                                                                                               
                                                                                                                                               
-----------------------    -----------------------                                                                                             
|        |   HEIGHT   |    |        |   HEIGHT   |                                                                                             
|        |------------|    |        |------------|                                                                                             
|        |    Mean    |    |        |    Mean    |                                                                                             
|--------+------------|    |--------+------------|                                                                                             
|AGE     |            |    |AGE     |            |                                                                                             
|--------|            |    |--------|            |                                                                                             
|11      |       51.30|    |11      |       57.50|                                                                                             
|--------+------------|    |--------+------------|                                                                                             
|12      |       58.05|    |12      |       60.37|                                                                                             
|--------+------------|    |--------+------------|                                                                                             
|13      |       60.90|    |13      |       62.50|                                                                                             
|--------+------------|    |--------+------------|                                                                                             
|14      |       63.55|    |14      |       66.25|                                                                                             
|--------+------------|    |--------+------------|                                                                                             
|15      |       64.50|    |15      |       66.75|                                                                                             
-----------------------    -----------------------                                                                                             
                                                                                                                                               
/*                   _                                                                                                                         
(_)_ __  _ __  _   _| |_                                                                                                                       
| | `_ \| `_ \| | | | __|                                                                                                                      
| | | | | |_) | |_| | |_                                                                                                                       
|_|_| |_| .__/ \__,_|\__|                                                                                                                      
        |_|                                                                                                                                    
*/                                                                                                                                             
                                                                                                                                               
 just sashelp.class                                                                                                                            
                                                                                                                                               
/*           _               _                                                                                                                 
  ___  _   _| |_ _ __  _   _| |_                                                                                                               
 / _ \| | | | __| `_ \| | | | __|                                                                                                              
| (_) | |_| | |_| |_) | |_| | |_                                                                                                               
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                              
             _   |_|     _ _                                                                                                                   
 _ __   ___ | |__  _   _| (_)_ __   ___                                                                                                        
| `_ \ / _ \| `_ \| | | | | | `_ \ / _ \                                                                                                       
| | | | (_) | |_) | |_| | | | | | |  __/                                                                                                       
|_| |_|\___/|_.__/ \__, |_|_|_| |_|\___|                                                                                                       
                   |___/                                                                                                                       
*/                                                                                                                                             
                                                                                                                                               
F                                                                                                                                              
                                                                                                                                               
-----------------------                                                                                                                        
|        |   HEIGHT   |                                                                                                                        
|        |------------|                                                                                                                        
|        |    Mean    |                                                                                                                        
|--------+------------|                                                                                                                        
|AGE     |            |                                                                                                                        
|--------|            |                                                                                                                        
|11      |       51.30|                                                                                                                        
|--------+------------|                                                                                                                        
|12      |       58.05|                                                                                                                        
|--------+------------|                                                                                                                        
|13      |       60.90|                                                                                                                        
|--------+------------|                                                                                                                        
|14      |       63.55|                                                                                                                        
|--------+------------|                                                                                                                        
|15      |       64.50|                                                                                                                        
-----------------------                                                                                                                        
                                                                                                                                               
M                                                                                                                                              
                                                                                                                                               
-----------------------                                                                                                                        
|        |   HEIGHT   |                                                                                                                        
|        |------------|                                                                                                                        
|        |    Mean    |                                                                                                                        
|--------+------------|                                                                                                                        
|AGE     |            |                                                                                                                        
|--------|            |                                                                                                                        
|11      |       57.50|                                                                                                                        
|--------+------------|                                                                                                                        
|12      |       60.37|                                                                                                                        
|--------+------------|                                                                                                                        
|13      |       62.50|                                                                                                                        
|--------+------------|                                                                                                                        
|14      |       66.25|                                                                                                                        
|--------+------------|                                                                                                                        
|15      |       66.75|                                                                                                                        
|--------+------------|                                                                                                                        
|16      |       72.00|                                                                                                                        
-----------------------                                                                                                                        
                                                                                                                                               
Ouput dataset from tabulate                                                                                                                    
Should _page_ have 1 and 2?                                                                                                                    
                                                                                                                                               
Up to 40 obs from WANT_TAB total obs=11                                                                                                        
                                                                                                                                               
                                               HEIGHT_                                                                                         
  SEX    AGE    _TYPE_    _PAGE_    _TABLE_      Mean                                                                                          
                                                                                                                                               
   F      11      1          1         1       51.3000                                                                                         
   F      12      1          1         1       58.0500                                                                                         
   F      13      1          1         1       60.9000                                                                                         
   F      14      1          1         1       63.5500                                                                                         
   F      15      1          1         1       64.5000                                                                                         
   M      11      1          1         1       57.5000                                                                                         
   M      12      1          1         1       60.3667                                                                                         
   M      13      1          1         1       62.5000                                                                                         
   M      14      1          1         1       66.2500                                                                                         
   M      15      1          1         1       66.7500                                                                                         
   M      16      1          1         1       72.0000                                                                                         
                                                                                                                                               
/*                         _                                                                                                                   
 _ __ ___ _ __   ___  _ __| |_                                                                                                                 
| `__/ _ \ `_ \ / _ \| `__| __|                                                                                                                
| | |  __/ |_) | (_) | |  | |_                                                                                                                 
|_|  \___| .__/ \___/|_|   \__|                                                                                                                
         |_|                                                                                                                                   
*/                                                                                                                                             
                                                                                                                                               
----------------------                                                                                                                         
|      AGE     HEIGHT|                                                                                                                         
|--------------------|                                                                                                                         
| F                  |                                                                                                                         
|--------------------|                                                                                                                         
|       11|      51.3|                                                                                                                         
|---------+----------|                                                                                                                         
|       12|     58.05|                                                                                                                         
|---------+----------|                                                                                                                         
|       13|      60.9|                                                                                                                         
|---------+----------|                                                                                                                         
|       14|     63.55|                                                                                                                         
|---------+----------|                                                                                                                         
|       15|      64.5|                                                                                                                         
|--------------------|                                                                                                                         
| M                  |                                                                                                                         
|--------------------|                                                                                                                         
|       11|      57.5|                                                                                                                         
|---------+----------|                                                                                                                         
|       12| 60.366667|                                                                                                                         
|---------+----------|                                                                                                                         
|       13|      62.5|                                                                                                                         
|---------+----------|                                                                                                                         
|       14|     66.25|                                                                                                                         
|---------+----------|                                                                                                                         
|       15|     66.75|                                                                                                                         
|---------+----------|                                                                                                                         
|       16|        72|                                                                                                                         
----------------------                                                                                                                         
                                                                                                                                               
                                                                                                                                               
Output dataset                                                                                                                                 
                                                                                                                                               
Up to 40 obs from WANT_RPT total obs=13                                                                                                        
                                                                                                                                               
Obs    SEX    AGE     HEIGHT    _BREAK_                                                                                                        
                                                                                                                                               
  1     F       .    60.5889      SEX                                                                                                          
  2     F      11    51.3000                                                                                                                   
  3     F      12    58.0500                                                                                                                   
  4     F      13    60.9000                                                                                                                   
  5     F      14    63.5500                                                                                                                   
  6     F      15    64.5000                                                                                                                   
  7     M       .    63.9100      SEX                                                                                                          
  8     M      11    57.5000                                                                                                                   
  9     M      12    60.3667                                                                                                                   
 10     M      13    62.5000                                                                                                                   
 11     M      14    66.2500                                                                                                                   
 12     M      15    66.7500                                                                                                                   
 13     M      16    72.0000                                                                                                                   
                                                                                                                                               
/*     _   _              _     _        _                                                                                                     
 _   _| |_| |    ___   __| |___| |_ __ _| |__                                                                                                  
| | | | __| |   / _ \ / _` / __| __/ _` | `_ \                                                                                                 
| |_| | |_| |  | (_) | (_| \__ \ || (_| | |_) |                                                                                                
 \__,_|\__|_|___\___/ \__,_|___/\__\__,_|_.__/                                                                                                 
           |_____|                                                                                                                             
*/                                                                                                                                             
                                                                                                                                               
Only output dataset (has applications for more complex tabulates.                                                                              
options pagesize=5000 helps;                                                                                                                   
                                                                                                                                               
                                                                                                                                               
WORK.FIXTAB total obs=12                                                                                                                       
                                                                                                                                               
  j1age    j2Height   * js are nedded because tabulate often repeats column headings                                                           
                                                                                                                                               
   11      51.30                                                                                                                               
   12      58.05                                                                                                                               
   13      60.90                                                                                                                               
   14      63.55                                                                                                                               
   15      64.50                                                                                                                               
   age     Mean                                                                                                                                
   11      57.50                                                                                                                               
   12      60.37                                                                                                                               
   13      62.50                                                                                                                               
   14      66.25                                                                                                                               
   15      66.75                                                                                                                               
   16      72.00                                                                                                                               
                                                                                                                                               
/*         _       _   _                                                                                                                       
 ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                                                       
/ __|/ _ \| | | | | __| |/ _ \| `_ \/ __|                                                                                                      
\__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                                                      
|___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                                                      
             _           _ _                                                                                                                   
 _ __   ___ | |__  _   _| (_)_ __   ___                                                                                                        
| `_ \ / _ \| `_ \| | | | | | `_ \ / _ \                                                                                                       
| | | | (_) | |_) | |_| | | | | | |  __/                                                                                                       
|_| |_|\___/|_.__/ \__, |_|_|_| |_|\___|                                                                                                       
                   |___/                                                                                                                       
*/             _                                                                                                                               
                                                                                                                                               
options nobyline;                                                                                                                              
proc tabulate data=class out=want_tab;                                                                                                         
class age;                                                                                                                                     
by sex;                                                                                                                                        
var height;                                                                                                                                    
tables age, height*(mean);                                                                                                                     
title "#byval(sex)";                                                                                                                           
run;                                                                                                                                           
                                                                                                                                               
                                                                                                                                               
/*                         _                                                                                                                   
 _ __ ___ _ __   ___  _ __| |_                                                                                                                 
| `__/ _ \ `_ \ / _ \| `__| __|                                                                                                                
| | |  __/ |_) | (_) | |  | |_                                                                                                                 
|_|  \___| .__/ \___/|_|   \__|                                                                                                                
         |_|                                                                                                                                   
*/                                                                                                                                             
                                                                                                                                               
options FORMCHAR='|----|+|---+=|-/\<>*';                                                                                                       
                                                                                                                                               
* you also get a sas dataset ;                                                                                                                 
proc report data=sashelp.class out=want_rpt nowd missing box;                                                                                  
cols sex age height;                                                                                                                           
define sex / group noprint;                                                                                                                    
define age / group ;                                                                                                                           
define height / mean;                                                                                                                          
compute before sex ;                                                                                                                           
  line @1 sex $2.;                                                                                                                             
endcomp;                                                                                                                                       
run;quit;                                                                                                                                      
                                                                                                                                               
----------------------                                                                                                                         
|      AGE     HEIGHT|                                                                                                                         
|--------------------|                                                                                                                         
| F                  |                                                                                                                         
|--------------------|                                                                                                                         
|       11|      51.3|                                                                                                                         
|---------+----------|                                                                                                                         
|       12|     58.05|                                                                                                                         
|---------+----------|                                                                                                                         
|       13|      60.9|                                                                                                                         
|---------+----------|                                                                                                                         
|       14|     63.55|                                                                                                                         
|---------+----------|                                                                                                                         
|       15|      64.5|                                                                                                                         
|--------------------|                                                                                                                         
| M                  |                                                                                                                         
|--------------------|                                                                                                                         
|       11|      57.5|                                                                                                                         
|---------+----------|                                                                                                                         
|       12| 60.366667|                                                                                                                         
|---------+----------|                                                                                                                         
|       13|      62.5|                                                                                                                         
|---------+----------|                                                                                                                         
|       14|     66.25|                                                                                                                         
|---------+----------|                                                                                                                         
|       15|     66.75|                                                                                                                         
|---------+----------|                                                                                                                         
|       16|        72|                                                                                                                         
----------------------                                                                                                                         
                                                                                                                                               
                                                                                                                                               
proc sort data=sashelp.class out=class;                                                                                                        
by sex;                                                                                                                                        
run;                                                                                                                                           
                                                                                                                                               
/*     _   _              _     _        _                                                                                                     
 _   _| |_| |    ___   __| |___| |_ __ _| |__                                                                                                  
| | | | __| |   / _ \ / _` / __| __/ _` | `_ \                                                                                                 
| |_| | |_| |  | (_) | (_| \__ \ || (_| | |_) |                                                                                                
 \__,_|\__|_|___\___/ \__,_|___/\__\__,_|_.__/                                                                                                 
           |_____|                                                                                                                             
*/                                                                                                                                             
                                                                                                                                               
%utl_odstab(setup);                                                                                                                            
options nobyline ps=500 formdlim=" ";                                                                                                          
proc tabulate data=class;                                                                                                                      
class age;                                                                                                                                     
by sex;                                                                                                                                        
var height;                                                                                                                                    
tables age="", height="Height"*(mean) / box="age" ;                                                                                            
run;                                                                                                                                           
%utl_odstab(outdsn=fixtab);                                                                                                                    
                                                                                                                                               
                                                                                                                                               
