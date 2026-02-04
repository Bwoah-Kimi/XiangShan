set -e
set -x

cd $NOOP_HOME

# for module in {XSTop,XSTile,XSCore,Frontend,Ctrllock,ExuBlock,ExuBlock_1,MemBlock,HuanCun,HuanCun_1}; do
#   python3 scripts/parser.py $module --config MyMinimalSmallConfig --prefix Jan15_ --no-extra-files  --xs-home $(pwd) > generate_$module.log
#   mv generate_$module.log bosc_${module}-Release*
# done

for module in {CoupledL2,XSTop,XSTile,XSCore,Frontend,CtrlBlock,ExuBlock,ExuBlock_1,MemBlock,HuanCun,HuanCun_1}; do
  python3 scripts/parser.py $module --config MyMinimalSmallConfig --prefix Mar02_ --no-extra-files  --xs-home $(pwd) > Mar02_sep_rtl/generate_$module.log
  mv Mar02_sep_rtl/generate_$module.log Mar02_sep_rtl/Mar02_${module}-Release*
done
