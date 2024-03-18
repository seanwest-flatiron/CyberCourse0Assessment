## Windows
- If possible, set the powershell subfolder to hidden in Windows (github doesn't track metadata like that)
- Simply zip up the entire windows folder. Then edit the link on the Canvas page to point to where you are hosting that zip

## Linux
- You must have Vagrant installed and be able to run shell scripts. So Mac, Linux, or Windows with either git bash or WSL
- Download [udesktop22-student.box](https://drive.google.com/file/d/1mTejImox7SlIsxm17srlCN5Qk-XI1HIe/view?usp=sharing) and [userver22-student.box](https://drive.google.com/file/d/1sXkkrjC5949KtomCX1JreRNUsQRMgtOp/view?usp=sharing) into the linux directory. These are Vagrant base box's made from the .ova's created for the students in [cy-virtual-machines](https://github.com/learn-co-curriculum/cy-virtual-machines). The only modification that these base box's needed was allowing password-less sudo access for the student user
- Run `create-ova.sh` and the resulting .ova's should be placed in the linux directory. Then host and update links on the Canvas page
