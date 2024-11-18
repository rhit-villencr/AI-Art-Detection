cd Datasets/Art-Dataset || exit 1

rm -rf Action_painting
rm -rf Analytical_Cubism
rm -rf Color_Field_Painting
rm -rf Cubism
rm -rf Fauvism
rm -rf Minimalism
rm -rf Pointillism
rm -rf Rococo
rm -rf Synthetic_Cubism
rm -rf Pop_Art
rm -rf Naive_Art_Primitivism

rm -rf classes.csv
rm -rf wclasses.csv

mkdir Renaissance
cp -r Early_Renaissance/* Renaissance
cp -r High_Renaissance/* Renaissance
cp -r Mannerism_Late_Renaissance/* Renaissance
cp -r Northern_Renaissance/* Renaissance
rm -rf Early_Renaissance
rm -rf High_Renaissance
rm -rf Mannerism_Late_Renaissance
rm -rf Northern_Renaissance

cp -r Abstract_Expressionism/* Expressionism
rm -rf Abstract_Expressionism

cp -r Contemporary_Realism/* Realism
cp -r New_Realism/* Realism
rm -rf Contemporary_Realism
rm -rf New_Realism

cd ../..
