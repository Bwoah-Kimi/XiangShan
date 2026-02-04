set -e
set -x

cd $NOOP_HOME

# for module in {XSTop,XSTile,XSCore,Frontend,Ctrllock,ExuBlock,ExuBlock_1,MemBlock,HuanCun,HuanCun_1}; do
#   python3 scripts/parser.py $module --config MyMinimalSmallConfig --prefix Jan15_ --no-extra-files  --xs-home $(pwd) > generate_$module.log
#   mv generate_$module.log bosc_${module}-Release*
# done

for module in {SimTop}; do
  python3 scripts/parser.py $module --config MyMinimalSmallConfig --prefix  --no-extra-files  --xs-home $(pwd) > generate_$module.log
  #mv generate_$module.log Mar02_${module}-Release*
done
