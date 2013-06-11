<<<<<<< HEAD
#!/bin/bash

chown otherUser MyFile
#Change the owner of MyFile in otherUser

chown him:us myDir
# Change the owner in him and the owner group in us of the directory myDir

chown -R him:us myDir
# -R recursive function so the change is made in all subfolders and files in the root folder
# The owner and owner group may be different,
# Since the group owner is not necessarily the primary group of the owner
# And the owner is not necessarily a member of the group.
# By default the owner is the one who creates a file or folder
# And the group is the primary group of the user

ls -l
# check rights

find . -type f -name '*.pdf' -print0 | xargs -0 chown someuser:somegroup
# xargs treat each input
# print0 escaped newlines
# we are looking for all types and pdf files we change the owner someuser to somegroup

for i in `ls *.pdf`
do chown someuser:somegroup $i
done;
# same action with loop
=======
chown autreUtilisateur MonFichier
#Change le propriétaire de MonFichier en autreUtilisateur

chown lui:nous monRep
#Change le propriétaire en lui et le groupe propriétaire en nous du répertoire monRep 

chown -R lui:nous monRep
#- R fonction récursive donc la modification est effectuée dans tous les sous dossiers et les fichiers du dossier racine 
#Le propriétaire et le groupe propriétaire peuvent être différents,
#en effet le groupe propriétaire n’est pas forcément le groupe primaire du propriétaire 
#(groupe contenant que le propriétaire) et le propriétaire n’est pas forcément membre du groupe. 
#Lorsque l’on crée un fichier ou un répertoire le propriétaire est celui qui l’a crée
#et le groupe est le groupe primaire de l’utilisateur.

ls-l
#vérifier les droits 

find . -type f -name '*.pdf' -print0 | xargs -0 chown someuser:somegroup
#xargs traiter chaque input
#print0 échappe les sauts de lignes
>>>>>>> 397c528c2a0de1407c18f1de1cf7c466bc608039
