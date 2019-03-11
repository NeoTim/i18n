clear
reset

echo " ===========  Publish source code to Website, docs ============= "

# Cleanup folder
echo " == Remove & Cleanup folder:  <docs> "
rm -rf docs/
# Recreate folder
mkdir -p docs/
cp -r src/ docs/

for i in `find  docs/ -name "*.js"`
do
        echo "---Compress "$i
        uglifyjs $i --compress 'unsafe=true,unsafe_math=true' --mangle --output $i
done
