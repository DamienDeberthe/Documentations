#/bin/sh

#Use "ncdu" command or this program
echo -e "\n**************************************\n************** TREESIZE **************\n**************************************\n"

read -p "Quel dossier analyser? (ex: '/home') : " dir

echo -e "\n--------------------------------------"
du $dir -k --max-depth=1 --time | sort -nr | awk '
     BEGIN {
        split("KB,MB,GB,TB", Units, ",");
     }
     {
        u = 1;
        while ($1 >= 1024) {
           $1 = $1 / 1024;
           u += 1
        }
        $1 = sprintf("%.1f %s", $1, Units[u]);
        print $0;
     }
    '
echo -e "--------------------------------------\n"
