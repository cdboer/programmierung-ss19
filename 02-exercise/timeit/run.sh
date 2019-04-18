# aks for plot name
echo "PLEASE ENTER THE NAME OF YOUR PLOT:"
read PLOTNAME

# compile haskell files
sh -c "ghc src/append.hs"
sh -c "ghc src/prepend.hs"

# run time script and save logs
# set number of operations to be performed $MAXOPS
# set stepsize $STEPSIZE
export MAXOPS=5000
export STEPSIZE=100
sh -c ". ./src/time.sh > logs/log"

# visualize logs (plot)
echo "-- SAVING PLOT"
sh -c "python src/plot.py logs/log $PLOTNAME"

# cleanup
rm src/*.hi src/*.o src/append src/prepend
