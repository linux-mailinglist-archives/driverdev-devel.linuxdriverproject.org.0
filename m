Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE752E6D4E
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Dec 2020 03:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B55787239;
	Tue, 29 Dec 2020 02:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSGH0rIy7gFH; Tue, 29 Dec 2020 02:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8BBA8722D;
	Tue, 29 Dec 2020 02:30:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 114711BF311
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 02:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF37723100
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 02:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRbhwOqryCQt for <devel@linuxdriverproject.org>;
 Tue, 29 Dec 2020 02:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C6C62045E
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 02:30:12 +0000 (UTC)
IronPort-SDR: KAKR8eKLMMxsPUsJd17WtxyzOHY3VDrMj1JC2kDZWOZ4PFsVa35cVmwGP0SdVEtmAl3GFgsDCL
 cBRsreLqdprw==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="164159539"
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; 
 d="gz'50?scan'50,208,50";a="164159539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 18:30:11 -0800
IronPort-SDR: 7H1PHxvicPoLUPmj9gdlbmhuORRoc47kj7AZUo2hGJirGwwLKOJNPnezNYtK7v0izmUkjRVpxt
 o+22/tRXuTFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; 
 d="gz'50?scan'50,208,50";a="347211223"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 28 Dec 2020 18:30:07 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ku4lz-0003GH-55; Tue, 29 Dec 2020 02:30:07 +0000
Date: Tue, 29 Dec 2020 10:29:38 +0800
From: kernel test robot <lkp@intel.com>
To: Angshuman Sengupta <senguptaangshuman17@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Fixed warning for structure
 declaration
Message-ID: <202012291019.1dp69N7a-lkp@intel.com>
References: <20201227112645.256943-1-senguptaangshuman17@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201227112645.256943-1-senguptaangshuman17@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Hridya Valsaraju <hridya@google.com>,
 kbuild-all@lists.01.org, Suren Baghdasaryan <surenb@google.com>,
 senguptaangshuman17@gmail.com
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Angshuman,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Angshuman-Sengupta/staging-android-ashmem-Fixed-warning-for-structure-declaration/20201227-192757
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 5e60366d56c630e32befce7ef05c569e04391ca3
config: mips-randconfig-r004-20201227 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/f29b5812159ea6f79fe84fe78780012627211da1
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Angshuman-Sengupta/staging-android-ashmem-Fixed-warning-for-structure-declaration/20201227-192757
        git checkout f29b5812159ea6f79fe84fe78780012627211da1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/android/ashmem.c:430:16: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops = *vmfile->f_op;
                           ~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:38: note: variable 'vmfile_fops' declared const here
           static const struct file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   drivers/staging/android/ashmem.c:431:21: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops.mmap = ashmem_vmfile_mmap;
                           ~~~~~~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:38: note: variable 'vmfile_fops' declared const here
           static const struct file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   drivers/staging/android/ashmem.c:432:34: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops.get_unmapped_area =
                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:38: note: variable 'vmfile_fops' declared const here
           static const struct file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   3 errors generated.


vim +430 drivers/staging/android/ashmem.c

6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  376  
11980c2ac4ccfad Robert Love        2011-12-20  377  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfad Robert Love        2011-12-20  378  {
f29b5812159ea6f Angshuman Sengupta 2020-12-27  379  	static const struct file_operations vmfile_fops;
11980c2ac4ccfad Robert Love        2011-12-20  380  	struct ashmem_area *asma = file->private_data;
11980c2ac4ccfad Robert Love        2011-12-20  381  	int ret = 0;
11980c2ac4ccfad Robert Love        2011-12-20  382  
11980c2ac4ccfad Robert Love        2011-12-20  383  	mutex_lock(&ashmem_mutex);
11980c2ac4ccfad Robert Love        2011-12-20  384  
11980c2ac4ccfad Robert Love        2011-12-20  385  	/* user needs to SET_SIZE before mapping */
59848d6aded59a6 Alistair Strachan  2018-06-19  386  	if (!asma->size) {
11980c2ac4ccfad Robert Love        2011-12-20  387  		ret = -EINVAL;
11980c2ac4ccfad Robert Love        2011-12-20  388  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  389  	}
11980c2ac4ccfad Robert Love        2011-12-20  390  
8632c614565d0c5 Alistair Strachan  2018-06-19  391  	/* requested mapping size larger than object size */
8632c614565d0c5 Alistair Strachan  2018-06-19  392  	if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfad Robert Love        2011-12-20  393  		ret = -EINVAL;
11980c2ac4ccfad Robert Love        2011-12-20  394  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  395  	}
11980c2ac4ccfad Robert Love        2011-12-20  396  
11980c2ac4ccfad Robert Love        2011-12-20  397  	/* requested protection bits must match our allowed protection mask */
59848d6aded59a6 Alistair Strachan  2018-06-19  398  	if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a6 Alistair Strachan  2018-06-19  399  	    calc_vm_prot_bits(PROT_MASK, 0)) {
11980c2ac4ccfad Robert Love        2011-12-20  400  		ret = -EPERM;
11980c2ac4ccfad Robert Love        2011-12-20  401  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  402  	}
56f76fc68492af7 Arve Hjønnevåg     2011-12-20  403  	vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfad Robert Love        2011-12-20  404  
11980c2ac4ccfad Robert Love        2011-12-20  405  	if (!asma->file) {
11980c2ac4ccfad Robert Love        2011-12-20  406  		char *name = ASHMEM_NAME_DEF;
11980c2ac4ccfad Robert Love        2011-12-20  407  		struct file *vmfile;
3e338d3c95c735d Suren Baghdasaryan 2020-07-30  408  		struct inode *inode;
11980c2ac4ccfad Robert Love        2011-12-20  409  
11980c2ac4ccfad Robert Love        2011-12-20  410  		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
11980c2ac4ccfad Robert Love        2011-12-20  411  			name = asma->name;
11980c2ac4ccfad Robert Love        2011-12-20  412  
11980c2ac4ccfad Robert Love        2011-12-20  413  		/* ... and allocate the backing shmem file */
11980c2ac4ccfad Robert Love        2011-12-20  414  		vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40c Viresh Kumar       2015-07-31  415  		if (IS_ERR(vmfile)) {
11980c2ac4ccfad Robert Love        2011-12-20  416  			ret = PTR_ERR(vmfile);
11980c2ac4ccfad Robert Love        2011-12-20  417  			goto out;
11980c2ac4ccfad Robert Love        2011-12-20  418  		}
97fbfef6bd59788 Shuxiao Zhang      2017-04-06  419  		vmfile->f_mode |= FMODE_LSEEK;
3e338d3c95c735d Suren Baghdasaryan 2020-07-30  420  		inode = file_inode(vmfile);
3e338d3c95c735d Suren Baghdasaryan 2020-07-30  421  		lockdep_set_class(&inode->i_rwsem, &backing_shmem_inode_class);
11980c2ac4ccfad Robert Love        2011-12-20  422  		asma->file = vmfile;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  423  		/*
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  424  		 * override mmap operation of the vmfile so that it can't be
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  425  		 * remapped which would lead to creation of a new vma with no
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  426  		 * asma permission checks. Have to override get_unmapped_area
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  427  		 * as well to prevent VM_BUG_ON check for f_ops modification.
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  428  		 */
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  429  		if (!vmfile_fops.mmap) {
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27 @430  			vmfile_fops = *vmfile->f_op;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  431  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  432  			vmfile_fops.get_unmapped_area =
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  433  					ashmem_vmfile_get_unmapped_area;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  434  		}
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  435  		vmfile->f_op = &vmfile_fops;
11980c2ac4ccfad Robert Love        2011-12-20  436  	}
11980c2ac4ccfad Robert Love        2011-12-20  437  	get_file(asma->file);
11980c2ac4ccfad Robert Love        2011-12-20  438  
11980c2ac4ccfad Robert Love        2011-12-20  439  	/*
11980c2ac4ccfad Robert Love        2011-12-20  440  	 * XXX - Reworked to use shmem_zero_setup() instead of
11980c2ac4ccfad Robert Love        2011-12-20  441  	 * shmem_set_file while we're in staging. -jstultz
11980c2ac4ccfad Robert Love        2011-12-20  442  	 */
11980c2ac4ccfad Robert Love        2011-12-20  443  	if (vma->vm_flags & VM_SHARED) {
11980c2ac4ccfad Robert Love        2011-12-20  444  		ret = shmem_zero_setup(vma);
11980c2ac4ccfad Robert Love        2011-12-20  445  		if (ret) {
11980c2ac4ccfad Robert Love        2011-12-20  446  			fput(asma->file);
11980c2ac4ccfad Robert Love        2011-12-20  447  			goto out;
11980c2ac4ccfad Robert Love        2011-12-20  448  		}
44960f2a7b63e22 John Stultz        2018-07-31  449  	} else {
44960f2a7b63e22 John Stultz        2018-07-31  450  		vma_set_anonymous(vma);
11980c2ac4ccfad Robert Love        2011-12-20  451  	}
11980c2ac4ccfad Robert Love        2011-12-20  452  
11980c2ac4ccfad Robert Love        2011-12-20  453  	if (vma->vm_file)
11980c2ac4ccfad Robert Love        2011-12-20  454  		fput(vma->vm_file);
11980c2ac4ccfad Robert Love        2011-12-20  455  	vma->vm_file = asma->file;
11980c2ac4ccfad Robert Love        2011-12-20  456  
11980c2ac4ccfad Robert Love        2011-12-20  457  out:
11980c2ac4ccfad Robert Love        2011-12-20  458  	mutex_unlock(&ashmem_mutex);
11980c2ac4ccfad Robert Love        2011-12-20  459  	return ret;
11980c2ac4ccfad Robert Love        2011-12-20  460  }
11980c2ac4ccfad Robert Love        2011-12-20  461  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMSM6l8AAy5jb25maWcAjDzbcuM2su/5CtXkJVuVTWzZ1kz2lB9AEJQw4m0AUJb9wtLY
8sQnvkzJ8mRzvv50gxQJgE3N7MNm1N1o3PqOpn/+6ecJe9u/PG32D7ebx8d/Jl+2z9vdZr+9
m9w/PG7/ZxIXk7wwExFL8xsQpw/Pb//9/enh6+vk4rfTk99OJsvt7nn7OOEvz/cPX95g6MPL
808//8SLPJHzmvN6JZSWRV4bsTaX724fN89fJt+2u1egm5xOf0Mev3x52P/n99/h/58edruX
3e+Pj9+e6q+7l//d3u4nt9vt6fb93en5/fls+uFudvr+/PPZ2ez85O7iZPr5/v7s88X5Znt+
8a93h1nn/bSXJwdgGg9hQCd1zVOWzy//cQgBmKZxD7IU3fDT6Qn8ryN3GPsY4L5gumY6q+eF
KRx2PqIuKlNWhsTLPJW5cFBFro2quCmU7qFSfaqvCrXsIVEl09jITNSGRamodaFwAriZnydz
e8ePk9ft/u1rf1eRKpYir+GqdFY6vHNpapGvaqZgszKT5vJsCly6BWWlhAmM0Gby8Dp5ftkj
4+50Cs7Sw/G8e9ePcxE1q0xBDLabqDVLDQ5tgQu2EvVSqFyk9fxGOit1MRFgpjQqvckYjVnf
jI0oxhDnNOJGG0d8/NV2R+Au1d19SIALPoZf3xwfXRxHnx9D40aIm4lFwqrUWOFw7uYAXhTa
5CwTl+9+eX553vaaqa+YdwT6Wq9kyckVlIWW6zr7VIlKkARXzPBFPcAfBFMVWteZyAp1XTNj
GF+4M1dapDIixrEKbN1BVUCxJq9vn1//ed1vn3pVmYtcKMmt3pWqiBwFdVF6UVzRGJEkghsJ
AsOSpM6YXtJ0Mv+IdKA7JJovXPlHSFxkTOauUOYxaGcDRgqfPCkUF3FtFkqwWLpW0J0mFlE1
T7Q9vu3z3eTlPjiYcJA1PCu4XNDxdMiTg/IvxUrkRhPIrNB1VcbMiMMtmIcncBjURRjJl2Cx
BJy0Yz8XN3UJvIpYcvfK8wIxEs6DEpciRw9VG8X4sjkJx8b5uObYCCZ2Bmcdcr6oldD2PJR3
foMtHcaUSoisNMDKmv1eG1r4qkir3DB1TetMQ+Xi7AnysvrdbF7/muxh3skG1vC63+xfJ5vb
25e35/3D85f+TFdSmRoG1IzzAuYKDsMeuY8mToJggjfsS58VE2+Wg+HXMeoVF6DBgDfu/CGu
Xp2RR2FAqbRhRhOrK7X0zlbLznTFUqPDjH2e7a39wDHa41a8mmhKWvPrGnDu3PCzFmsQV8p7
6obYHa4P49sl+VP5njOS+ZQ7R75s/jGE2AN1wQswB8KNMNICmSZg0mRiLk/f9+Iqc7MEH52I
kOYs1GzNF2BrrPIfNFvf/rm9e3vc7ib3283+bbd9teB2bwTWUcq5KqqSul30PLpkICGewTe6
zjUpKuAL1BiulPEYKhdmDAU75cuygLNB/YdgjfZgzYlg9GM3Q9Nc60SDeIJqc7CJlDdWImXX
no6kSxixsu5ZxSTbqChM3fyb3gGvixIUVN4INHdoUOE/GctJwxdSa/hHEBmBPMYgVTBnDP6I
GVYLjCZz5rs3dBomDX+DinBRGptHgBF2eEdl4u58VJUyUG6JF+2wnguDrrceOKrmzAfgpPGm
PaAJUTrr7ulE+LvOM+nG544aijSBY1HurpiGg6y8ySvwQcFPkE6HS1l4e5DznKVJ7NoPWKcL
sC7YBegFxEv9TyaduFcWdaU8K83ilYRltsfkHAAwiZhS0j3sJZJcZ3oIaTaLMowBkSfGZXLg
TtwoXmZmhUnBOGcqRFhj7m5NafHJE5QsEnFMqpMVV5T3OoxRLBDY16sM1mRNprVXbRJcbnf3
L7unzfPtdiK+bZ/BMzCwZBx9A3j7xhM7nBr2pKf5QY6du80aZrX1pZ406rSKmgjOzSKzkhnI
+JZeMJ4yKiBGBi47FsEFq7k4uMwAl0AIkkoNhg+UpcjCCXr8gqkYPANtnvSiShIIXEsGE9mz
ZmBFqdVdayOyxqCAFMhE8sCigG9LZHqIYtrz9XPgTnBlqQ93mm1u/3x43gLF4/a2rWp0y0PC
zq81qRK5DUvHUjDzGR2wMfWehpvF9ILKTszi/R+ejrhLoS09z87fr9djuNnZCM4y5kUE6TeN
h4wKZIBjkAUHPk7zkd3QGarFwsWIHKODgl5+yiA4/DQ+Pi2KfK6L/IzOoT2aqUi+TzSjE2JL
U4Lgwn8lnVLbEwPLYOh0veXAj610pc5PR+5DMRDiJa0tc1nLckrzbZG0nLXID0eQZyfHkCNz
yujaCMjBFzIfCX1aCqayEd3peRTHeXyXQF/BLMcIUmlMKnSljnIB+1po+mpbkkjOR5nksh5Z
hL14sz77Y0wRG/z5KF4uVWHkslbRxch9cLaSVVYX3Ais742oWp5m9TpVEBuykaixoSgpitaw
Ds1mmAYsrgTkxY7b6DJ/EPBIQYwLVqUJaL0wucikAe8BwX1tI2vX5dtoVjGn2sLFCiDnThjG
IXXyIY2Fw3yEKFYwBaeuq7IslMGCBJZ5HLcaZwxzdF4shALB8GJHW70VTKXXg1gQU+IIw488
lswPe/vJKAK7Vl3C9gNYegoHBwfUpl0XXcLveS5nehx1Nq3VdGT2GzzMY7i6YpDcw4Fkw12H
E7ipMyETPbl/RAhzF2gYBBymhtwcAsXV5ZRc3Nk0AglpvLHP7jskGImAiRBNRdEKlw5Cu/0/
X7f9MVo2XikXArB5RZfAbQiDCVF9voy8skOHOJ0tI1LfepLZ+ZIKzmwlCizEur4BI1hARKUu
T0/dveOtQO6YCGMLoA7moHdxlZW1SaNAsJLycG7+MFAhwFVDYCOGHiNE5ULEGktjOgO5sawh
Q8wkBwFq4q1gtZlmQ2AshRxClVwTUH2d82AzTEMe32jIyRABt6kvP5ASgzU8LynyRA5ZnM5G
hM3bhzUnCeQ4wAyUG2tMriwsbuopHXcA5px2z4A5PaGdM6JGnDrOdHFCiJJFzIJFwQTjM5z4
S6YOiClUOK8oenMJ0/imfaGwqug+mKyFV7rliumFFVQqtbciBRYnKWfnQ5nFfK3wigR2AAgk
K0swszB/bCjdsmSYm7t0Az7gdUYZBbF0FuNjHviwIvsxSiCqxdoA77HleTzROKcFVu5cy+ta
sL6cx5exIBQcw9ulLbEMceW8eUtMIdWEdH/aGMjo7XXy8hWt+uvkl5LLXyclz7hkv04EmOtf
J/b/DP9Xbz2BqM3ZwXuJOeOOq8+yKtCZLGNlrfJGSWHTea+oFJ6tL08vaIJD1vsdPh5Zw647
yx/ebOe4FIvbUkznUsqXv7e7CST1my/bJ8jpDxz7E7ILWsgI/JTNrbDQBCGmW3pqwxONguei
+4CzwVGK3jLG6DtNI7hwxwg7s3qmwFmMzlmJDy5YYqT8XQZSBGsCYy9N++zroFIhvCdAgGEB
1MJpH5iBX14KFFmylp8F3Gytg14XT72Cx9UnOLkrofA5TnKJ9ZO2pkGGtqP31kVcDUXWUQCi
w8m7x61bQkBXEb5FedFSM8CFDNhbfsnD7unvzW47iXcP34Iy07wo5qCxiVQZBjiDdyGz/bLb
TO4PHO4sB7cEP0JwQA/m9mpoEBW5x41vQhXE+DeDeoEXz4IGsrzGXLdexbq4DLoWNjtIMPYQ
R77ttv++236FlZA61LgMv6xq/UoA0xBXJo4CFE29KCxfO+BuQx8xcEpZJKjypFVQ9D34FmNk
Xkft47fLVcJS0O4AcxOglmHG0UCVMCTCqy5biF2ANeWLolgGSExf4LeR86qoiFdYDTtD6Wyf
hgO7g0EWRJ5GJteQTFaKh4bJRmwwBR5uldvAMOTRhOJFktThzrHvJSvitjkk3KgScwgrwOhZ
V4VPgPYlsAy33xZ8ByfSX1qwoCsG+i9LjpYLS7xt0wrBQguOTuIICjQu9RLUwZAxQsvKbg1l
QmCjT+CdvwuHn6pwC/WWJx8+cLtouEsIiRZhB8x333EbMT72mGsp4D7bAyoFxyItwUGsUSDy
pnUCd0QIFYZjTWF5+MI0DAcCAjsBKdD+qA9DuTg8D5uijIurvBmQsuvC69tKIQer0aGCsY3d
zKYJKRqRx4OiVt52UqnaSdNsbcKp7Ic70o2stsWLOledteTF6t+fN6/bu8lfTfz3dfdy//Do
vfQjUZ8M97XxI2O92bHPrkyrucy93oYftNQHViBgGT5muSbNPglpfGSBdK2PjYu4SgUVBETt
o3L3cwmZhZZgLD5hVu5j8GU00nMSmEovwu8fUo2YK2muybkbGkzAY5/pITq3t6RCxlcRXVhv
GEIQA35plEBjRaxklOdBdNM3CIkmV9el/x5CouukDQW7IHWz2z/gRU0MJA7+29UhssMXQHwQ
JrMTHRfaCQL7R8dEeuA+vApmdNebfbKWyH2PbMEqdrv5EGgDwqZ7q+hbCJzIAEbJokk88UW6
bbDspaxHL68h6iWv4EARJZ/IAM6furMnOj/tF9tegi4hOKhyq+p+g1aDR3PV4o/hyLFXILNi
bLCL9Ed3sYttrovtEm38PU6irgICfOe7EZ1BEv/d3r7tN58ft7azeGKfNfeeXEUyTzKDJn4s
nOop0EEY98G8wWiuZGkG4Exqx+Fg/IelBFf4xpbXPAVun152/ziB9zDabCs7zvYBAA41Fvga
DnlkGC0kTJt6XrkRQZmCdyiNvQ5wufry3PMfPMzJbHFQCUzS6SasTM5V8Bhq/bkpICj1mmOW
OiPGH5yedXaQMYO+x+ry/OSPrnyDtT18y7YhwtLZPk8Fa+I+VyIgBAk7QLnf29pCb/xY2f60
p6Ag2IMIp+vWEnjOnvqO0o41wo4O+HBOP6YcmYEu4R0bsKCfYkaHjDTkjtFfvrvb3j9u9tt3
Ie+bsijSnm1UjbMNSM+SwjbHH2eomxaJH2N6+e7/zu5fHu/e+TQHZq4E23HOT1i48+uwto5N
16gRQKwBcUxifGg2GMbHzZvT6hBzuz0ctt470mQIym274l0zM25Jeo1yVoUdZrAUvFLHTizb
ouAhO7I2Kt/u/37Z/QUxmmOcHFPBl4KONqpcronVG7ehB35giCO5p2kINQXVDrZOlGML8Bcm
eliaDKAsnRcuSwvE/p0RpjYQUwnzF2Ixuorqskglp2I0S9GYQxEswbYvaCO5DhBCl/5NLIXX
ZNeCDmzHZhXoPA13DX3GvR91LJnblNmIQB9qlE3zGmeavkEgOARitYKEhDw9ICrzMuALkDpe
cLru1uKxqHyUQDFF4630lpIq2TcoEGwQq6xaBxIPelPl3gtdR+8cExyL3S1avcz3jPo6B2ix
lGSy0DBbGenzr2J63qSowmsHUL9KOkbHW6zZgroJxDTC5VMD7KAmR4YdhMkfK0u0/WPDum35
g1Du6N5pjr4knx8L8DsaXkVuOt9lyi3+8t3t2+eH23fuuCy+0F4fcrma+aK5mrWibN8uSXkG
kqbnFJW3jlkc7m82fv4zX7s70NBMdSjy3GdHDh4XmMly5m+zlikLuYdSZ+ka+fSPREvqgdmi
SB6BwgCkEWZviWhbyrT9UEwHWLCqBgL5ENxo3mB9rUIGLMeWXMpMZ/VqGk4p5rM6vSI3ZHGL
jHEKHrQCN0JUph0v2hQEpcCsDK7ZAiyzMSOHX95hPS9jajlibkpT4keEWsvk2rMudmy5uLZV
IXBFWemFHkDRFQjdKRsgqZ6N23/ZbTEkgFxmv92NfZ3ZMxoEGT0Kj0jmSwqVsEym13WkZDwX
RwjAQRzhjN8NOGhshc5zG4V5UPy6oLP0PhgYQXRC87CfNiResuOh7fWP9Pe7dIkh/ZhLIhUf
WUOkwKag/x7BwwYiWeD3CSME2v3OCzHGuRdCMA5HO08r8I+U0QAmOfPXA78He0BYODnCIIOW
SvAhg4zpT5VQLBYeKjQuHegQ7gzg3aU69wG7rrK5oHtNET2yVfDYaXE1NO52SNMx7QMbkfRY
209fR7jjpn0G9nx8UHDclFdGaBF9pD0eIj9VhWHhTB+DezjABkdr2kJ0OOWCacpR2nPz66EI
wqh2hFrjd30D9vhgtaaicrjsGJKkofqaUXhyFZPwdseU0DR337Qu4InQC+mJKFO17uTXmte1
rRS9Tm5fnj4/PG/vJk8vWOl7pUzrGsVDLcOh+83uy3Y/NqLtdwvF0CUBcaKdzYBLjp+5kBbY
oUl8K0yQECpPUJH6T9CBU8304ECfNvvbP/1qc3CS+MkvlqHMdUl+gTmkptzJkKpJHY+SHEqO
/Zv8MS/r5Ul6JPkG1EoPvLcs//MDzjvBUFsxG+icexa0UcMhvFFEAt5a4gDe25EG4Sk1KijC
x+3G6DxNODCmoQFPl4ya08VjLBAkoz5ysKKRDcK1AFKWw/i1L/AfuaP2Er/Nfuwa++uajVzX
bOS6ZmPXNRta0zDHcm5p9j2TOFyDw5E6TR/eHn2Q4s1+4IyPHSGpCORJDQLUxLSwOhOhP20R
nVsNBazBfy8W7KbsXzcavkAlotG8CFKYQbgPwhhzTqeYtebGrSzBrzqO5hhE8NxbfYNqc/Om
NmITKczFqSbOMXK9YKc/xDcf/SgDR/zgCoiZW3Tzvt5/HBNr+xRIMEJUkNMhaNAm1lc/gr9I
0YKZ8bqZ4CekdJIufSEyZTklJoiK1HT2wbFEPQzuNOwISafGWzz+PvxJBnJyS+B/FX84U1dY
MjcrC1WklVY5z0DG8qIog78C0OJXsMm2hSV4ggopM9Iut0ieOOXipp0Jy1O2f9orvMWaumG7
ig8n01PvC88eWs9X5OwORbbynVIsOB0qpqmTIMGPqS8TLKVKAOvphTOIlf5nAPj5Eh0ezMAC
l4xqlZNCCFz5hSNFPazO0/Yf9ntomYkcVuYZlZ62cT/U8yHj3RTeLdinb+q9kDut/3Gu8dv3
IvW+zY1A1JltHPCkqYMe/kk1lrpUbhHNgcdujuXAcz4yXTZaVXe5jnSUFqXIV/pKel9WOEC/
/uYiVuuUeRVrb5TIxYoyHavmqjzDd4ANirkhPgUlbhs8vI5MWXQ01HCfgqi1H0oNI/NnZeqX
lSyknmunlcNCsHTo1b4sFOIDoiSfa+fAFzqsjtXNQdLtyYhPzzBPweDeSyQ/KaP8X7XO4gAC
6wkWw7X7koBtR4XIsPenbhIi7tOrNb6+X9f+5/rRp/TSf8qb7Lev7V9m8TZXLs2gBNIGTIOR
AcJ9HezNbQbZmuz6bMvN7V/b/URt7h5esPFr/3L78uhlZGxNfprM3c/VsIXX/x4PABH3PCiC
5lc0p/rj6R9nf/jDpS6s/2rWAmYx3n57uHX7nh3iFfcVzMLWnDSmiNPpYP1BJQFBnKUcewTx
2YFsuUCiJBXrAbO5IhaE3zzSxSyL5e/f0x/f2NNIJP43oQwx4rOamNAC6zJlBv+Yx7GREDKx
/Hx9sfa3oT8y/CSIBOLneTTiMGG4HF0kYetKd7m6lJMH/CsH95tbvyKAIxfy7PSU/hzWboGX
04vv45ORP/MznL5bVqUjf1kO1w/YBggE/iGITBNAHSNwGggJQblcMfzzNA082ETEarse8hpL
wZbUsGogc862g+356oAtiU0bgNfvSaii40apyIJBrrhWpWMYD5BBntgj7J9CAzem6ai3IxwP
7NV6yejvmmHwklP6oM3/c/Zsy23jSv6KnrbmVJ1sdLEs6WEfIJCUEPMWgpLovLAUxzNxjWO7
bGfPzN8vGgBJNNhQpvYhF3U3cUcD3ehLFbNsMOC0YBCcq0OKIwydRBUrEN28KrkRKe3oDkx9
Q91POROJuxhEMgrkATBfH6qBeB3F5b71TFs7GDyw1vVt6I7Tk4GtH32nyxP0ZgD2DDth7psO
MOdiBADDwjEQ3Iux4M3bPRcjLpHfn18nycP9IwRE+fHj59PDndYMTH5TX/xr8k0vSVfDqsqp
q2S1WU2ZX74UtE6bt2BeN3M5HgCTqBwBWjH3xqHMl4sFAcKTM4BNAahdWXVM/T1OEDAy5pHu
WD0eeQMbt9fCx5PSlMT0GSBRyiI5VfmSBFJ1bpb7xGUn/3BaHQFKMnVXpJUN2jYioS7T4xfm
DmIfkjs5Ro2KZ8i4qwq1L1DII6mDCLBUQNzCtsmEZ8Wl8ZnEKnZgpvhtNWEiLY5Y/xPX+xpM
5exFm+iK8e+AaEmfhtCVoctRyTmrkK2EcWEcba+Sf7g7v36bfH19+PaH3keDH9bDnS14UviW
sAfjrrCP0xIFZXLBip/WexQOVo1EnZUBhYasWR6xNKRQUgxMl915uZnod6P+9L5qj8/nb9rL
rRv0U9t7zfogbRMYQVi7ARk3dcX62hz3xuErHVGuH4K+pSRBb3pPzOzwQWfa6RWnVyZ5mvvd
7Yq07ixH1wy6OwVT0PjSOBrah+4AD6FDXXjBUKt4h16ezG/MBCwMMZ0elo2BWeZ6AXQlutbr
3dfcVUcM1bTsmDnqJu2mtlcTqWc5cVcBoJI453EfdA77uIx3Qe8RPRw+jiKMZ7Letjsht+AX
TwnLRVPj91Pj5B1lofA1wPjAs1VJlCRFthdjnOPM3HPT7rgvFAccGbpWBSeClXVrIHcNRzId
+NhzIXk5v755nqmKDoJfaVeQQNMVheNAQ9YNNEVi0KgN8FqpY5VcQJnnTAgPbNyHPsyCBbSH
3AYhc118xmTgj1Hk6a27VMbDoMfh8Aa+vObdWAd1q1/PT2+P5qhLz39jlxVV0za9UZsQMQAD
LjgdFarHthUVXTup0Q3N/9VWjvQuML5KIvv5sBRlElFac5n5lHrOijI86WD6HZjr3nFI7Vaj
wekWW8Wyj1WRfUwez2/fJ3ffH16ss7I3ijwRfmM+xVHMNecK1Kq4nB/m2Ral1YOF9qAaTQyg
88LvzIhkq84rG6Qq1GsgSx0yqqZdXGRxXVFmFkACvG/L8hslpET1vp3hnnjY+UXs1XgUxIyA
eaUUNdluMOhO1Yl6oessi1A49Q6urgVsDD3UIvW2KIqZBIDCA7CtjHNkqH9hOdnogC8voE2z
QPAXMlTnO8VO/TVXAJtuYCDhHWW0Usr9rczCaz5ltemCE2Trcu0mtu794+8f7p6f3s/aREUV
Zbm9szFQMyCGYpLStkB6HfB9OV/cmCAx7n6V9XzpjblMR6Ne7rteuGXWkYJeZl/zrB7f5qKH
tz8/FE8fOHR7dNfF/Sr4bkGegL8eIiNoqusnnlGAeHEE9BrPY8CMuJ0Bm/iUt8bvLtjljvhS
SEeXriANE12KeQPcazeaEI2MuZLBTqAFzrD2nSbAzgtmd51a2+nAp1v9PGK49Pk/H9UpeH58
vH/Uwzr53WwwNQevz4+PxOzpkiLVk1S0USASZUcGVyxd6kWqT1+uVmtasdrTZM2FoTfzUwrq
VO3xlM5zWDrqTk9HUu5JWMWkVuAafvPwdkeODPzlKS+I4RPypsghW0CgRrgW20k03pqcqz3y
hw7k9/Pl5fn1nVj/ishlStQ3vUwPO0iXnJZRVE3+y/w7h/A5kx/GKYo8rjUZXlqf1WWk6M/j
vopfF+zdMqDLBe3dC/jDVgQGa3+rpLatGzUjqp1NgWNNqdvpIRd1ID1KkWhHUTCxdwuwwQNJ
1E2x/YQA0W3OMoEaoC3kkD23giEZqUiwp1kB1jtKJj3Cxcr1YzUI0PghGCgpvKDj6m4GujLq
4dZ4yLvEndN8fkhT+EFpHqMKhw/+4p0UXlHwwDm00YVq31Vt5/s/63ETtAt8AXQXCo+qLWLr
8LvtcqDYHB30M3LX0S31UNNhEW92gLbVs2sKp4Osa2/cQakLYwYvhDw6BjTdNdOTB2ql8Hvv
Nr0h2rONCGAegrZ6OfUX9PyYxRPpMxOAegepBhkXEtASYfj+hB0AAJawbWXc9wa1H8AD9kDm
G+4VYsxSSaBa2eqKs68ONBavOxeDYxO4mED1Cm5Lwz0ZbGbpZ193aPvjYqwAV5dcWUDQNSEX
6XE6d6OgRMv5smmj0o1D5ACxzsZFGMXNsDEOWXYLvIYyWuFys5jLq6kjLqhjMC3koYr1crFP
S101ZSQ36+mcuZpWIdP5Zjpd+JC5o6LvOlorzHJJILb72WpFwHWNm6nz6LnP+PVi6cgykZxd
r53fwKNVs9VpWC5sQgWnXLSxGwhD3rQySmJnMMtjyXKcqWYvpFB/gXdpSPfP5z6zNQd3DHFZ
x4e2gavdP0fWPAOYetG3WD9GnwVnrLler5Yj+GbBm2sC2jRXY7CSKNv1Zl/GsiHaFcez6fSK
XPNeR200s7/ObxPx9Pb++vOHDpb/9v38qi7276BaAbrJI1xPvqnd8fAC/3Vzs7TYVfv/URi1
z7BiE2HwlgIbOgYybemIUjHfI/9oCGTRVrVsxuuiEw3dnd8vYh1iyTXJNz+Mmu7x/vwGAZuV
APV8p/uqlVAfH77dw5//fn171xLm9/vHl48PT78/T56fJqoAc7Fy+IuCwfnidrgPoKNQkrm2
tgDZRf7v1tAMdmo9tKSuY07xnDiGNBjErm0h1Q6tKpQ1z6FSxcd+tZBAqBUFr+lXWyDRitGE
MOBXgwPyuAJ0K/Tj159//P7wlz9cVsobN8oRH4w0z6XohNPR7taxjrLCTXfBBIxajTJBIEMl
/Q06oDSEcCvT8FBXdbtsg3SM0clvakf8+e/J+/nl/t8THn1Q29QJ/tn1T6LrFN9XBnopIpJC
U57t/bc7skS+J4vUneoPnzAJh4SLjNZ8a4K02O2Q5KyhEiwmmA1EPAxU3fEOJOaaL+BlAiYs
VFHCqQlVpx/8TWEk5JC0cK8uBixoq/4JVSar0vm2U5d4XfBKTYuTDg0bKjPajxoS7dUliZF6
Y4vel608+at238YohoIFsvTARu319kzPb11eBJxJJy10G2gzigysgzTmZiYEN+oZQEvsFG69
cnstx+Q/D+/fFfbpg0ySyZNiuP97PxjeoMUBpbE9F5fMtjSex0fEOzXwc1EJ6i4Gpaqq+9Wp
WnHnN+/u59v784+JvkZTTYMytpl3yzZniig+PD89/u2X6z8i/35+fPx6vvtz8nHyeP/H+Y7S
AiBG0XGCLJDVavQe6stxWRePc8xyI/Qq6Jva6C8TgY7jjso+s2QsZzslWsEP2jwQChGgvBDS
FWMUuIRwk7LWMWi9M1BhD5D1VZS01XVmRFhUXBejFwHrvdAPGUcBoWMQ04JCsJFDB2ll9hlB
tfqyI3YbGW8pdgKIiuFy0yLHNWUCNhgCga8NvJLrTG5eTXC60VV9iasClzwWJF1o+zkNIGQd
QOwxm9BrIGXUwwugDl45OmOqCzCGEV6JScrU5Z9c4goLemQyFCFMvGeObkdST5r0arkU1RDG
0gY07D+xYij30tl1kqo2Q8MSXCa8ICtemrMix1lHtfToVgk2dbuDl2ykuxx/1tGEkSkaSMmx
K3N1kFanCqMc8RFBVRzyqCq2wrdxd2l0/NGAaflAxnSCVzDsOJSh6sC4Y8tSCOKArvmMg28K
fe8sfZRFdD4F9qfxInDGmlXxwTVb2yFnIMZljA3V4eZTeO7QFjbWOSoctmfXluoKouPOVuo/
7jQZG/phXR3y9qhXh87ZS+ZnPcbuFrZqKuzfnnqeCeBVZePMB4wrO/RQiIbW9a0H2bs3Zw3p
w1F2r1Hvrw9ff0LidKnOzrvvE+ZEP0UvbvZy8k8/6Vd7vYdIrbW/LhX3iIpK3X0Y14yZ0upZ
4bKWeDb7bzP2pchplNpjeS0Yjaw4DYemFojbsN3Ky2tFfHZQZwC+wWhIm2/X60AaCudzs7eD
G9NS2ZcXtPK3+Jc2dd2fdDSWwGibfEq/qEnHZWTujswU9ycnMso2XqKNDjGKB2dLj7/g5M/m
d5vrDGRwDQGfLyXgBD43geEDvdsf2CkWvxpv/XJ/eQgyVil5wH0aPmaRa77l0ipClhdIDZSl
jTyNzhsXnVD+I26pglc4xsaNXHuBHR3E0tFMmt+qkjQwTDqFjf+oFiSUavYvtzVnNRAFalP/
rYq8yAJHb0/mHriibcD1crQeqPLXiw21ANVqLehdXsa5hJOQRMLRDL5iA/IzZyvkOWIBWEH2
mYPaD/lMVVloEVeqO0qGpXHgsFaRKMkyeUASe7Pbxi06YFzy2A0k7yKKlFXqplaF9pHMZCDR
mlsIB3OmhlZ8uIS1XkaXZ1/e5kUpb92nyRNvm3Q38kKzHxxd1q5+KLiSXkQ9inRo6U/iSyCE
ykBj1NxDsVbtDbOaChR/0SBYI7wptwh1e6gxotzfYoNpDXDTk54UZPiZQnL7SuxAKkOIRDRx
ZEGDqJ2MZXZ1g50osgumMyzTBdGvbRFIXHvqgt2drH4jWLNerzbX28Bn3SmHu7Pl2fJqdjX1
C1PwVdM0obJ4tr5ar2ejstYr8w0CmitdN96Dok2oI5UFarBnoN+sSB2ftg/kM1GZHiSuP21q
DNCnT9uc2K1HCGq9ejadzThG2LOIBs6mOw+hz40xTPP7ELie+R3tOX+gqyajDvMqAteK+hOb
zfxZYPV6umj8Sj5TFfTYKobb302gAZaF4mqAd477CdxstGPqeDZtqIdzuHCqBSO4V3ZUrhfr
+Xy0IhS45uvZLNBO/dnVmijrekUBNxh4BOlX3eoQ0HKZndri82pnRFU0c2oBqEvAZrMk35Hh
JjNExXWByDakSFp85+m+q5CgrL8T9ZYhIywN5aD/EYYPDu0DVMgGCXD6DTGJqc+yI+01aJCS
c5DbM68Zovx8NZ1tRoUp+HqKc+YaxqmQk+zn4/vDy+P9X55KzwxSa0K/4vIs/GLfOpou0GSD
3SwwTQZJdsY+piWXY6benSpq1TYlR8pvgr4nL52LuPrRbmVks70M1jFl2UUrJ3oFWD/uB8Cy
Er9LaRh0OuAJpPCFiVPiALwSSHtBoLOBRpyqGM6kCCCAYAFZpq4cItM9WnCA7Z1XQsm+gUZn
hwyjtboE/keH4VQL2nhUjeX9QZcUUqmcQqqWIUhGWI9g1F5SeDonypNLyCgQuvCYjdaneHr5
+R588RN56Wae0T/htiN9WJKAPVeKjMEMxuSOuUEOOgaTMXVnaiymd1Z4PKuNQHtk288KJTjT
QRcMwafiFjmqGmh8JIFG+e4MRdjI13xyE9+O0hKP2+dwNfjZlnJOgFqWuplJB/j2NqLAabET
6l+XDwxItWVYiQOME0i1AdC5MZDw2xIb8w0oHWxKJ6xF/K/Hx5A9ndYJOU2I4S7lavOcCooD
39+4KusBlxQcrhauttkplOqNjCuB49AYOCsVE9dVBRsKN9zN6sovkd+ykvlA6LXvTIsx8IdW
KWAy3YsLhEepbteMvB1oPBxio0HoZ5xs4oCmD+l+K0mbM7X/voO1St5XC5L4dqBYOMt4gEac
hAoCyost1tX1mF0yp/2RBoqKNERG+NZ1MxwwB5Gmcea+a/U4nRqAcQolRRSfRI5cPHtknZHd
Ft27Lo3wIyv46HkgE3tPd2JVJQL2xz1RxnZaLXaZSj+RFRVtKIaptiyldHYDEcTjoIfpJCL1
g8B82cf5/sCopSOXShAjEHASHMgZbkpGLU0At0lCjrjGwdl3qWOl1GRI2UQgTR0jfFNRSySR
gl07ygezNXVwP8SPDUTfUdQU8EAMCpdKlEpko6SqgWbP8hPDQdkc7A3EGLxcQBnvmHR5tMUZ
Jq3Wp7q14aiYpnvApqUSjmIyLpk5aVG+JQNbr8tsfT1t2iL3EmkYPItWsys6YoslqDMlkHHF
HAMHhSHbZmzmmnza+8SimSqRoK7dd47uttOsVtfLad8wH6skwJUabmDK42ZnfLZYrRdteapM
8eFBydj6SrfMKwIOiXYbx2Uo19hAFcVc3YPJ/B4D0VFsK+b3g5cc8ox2rfTRrIZkeYqxxnMf
pQZFsY7cosfNv2nqT5tgi3SC3QylXTGI25hhVZ5tZzabbnwgvAEryQmeJrpp8PD14ULfmnKu
1l0ZjyqrT+n19GpKj9iBvGOXLM1AX+JU5o1HyZP1ckUHqbUUp+zX8w1Eul0XaKqb9XQJbfGM
BcZroipqVt2CwVsReUKJJorYar6e2uElMzZYss10Oad3CuCuFzQOFt9oWqImXVw1AbB/OcJI
SVqDGhqRqenhB79c8VnOrzfjfZGxBXqWQGBso2v7WR3nwMf2/qXeQV8vHbQ/1JpgRY31oLTL
xNXo3UuLPPvz6zcd1kF8LCadJaH9Cjg3sk/SAPg74Jhj8KnYIinIQE30Nq8o+5CsyGlJXRMp
bObl0MaFVLwlKmSlbYZXnF6/Xo2W4ND12P7esSzGOes7SJvL5XLtFt5jUtrAnBroPjAxJZsb
ifT7+fV8B8GKR94XSGlydNPGWqMKJczlMmU1Tnp8rDsCCtbnU7eY/cmh7vuq6AcEJEWMaPM0
yAW2Wbdl7b4gGfP/INC6KM2XjhtSGoGdOgQE8ZMZWc/k14fz41jtZm8e2vmNu3zcItZz7MvR
A9W5qERkHZ3B8cYn6GbXy+WUtUemQCibrkuUgCRx4y/EDmtHMbC6+wYhw2oHkVc6WpOT3NHF
VpA8OYsvkejUbxE2zHLxGctvddAq0rbXIWSyhOyNRz/clkujA6P43jwkZRTXOvb3PyCtJH2m
oeJOvy6mnq/X9IXRJQN5Jhe0tG/pIIIIYVtr3Naenz5AOQqiF622cx8b4JuC1GVxgWKFIXgz
gsPQ2ydRv00d6tfrrafsl9bMo/AT3vfAMWexSCkScaSaZRC/bpTkPG/KcbkaHK6Wz66FXDUN
VXOHC+puRoTeLcEn3PLsekEaJVkCe9p9qtkusEk8il+Pi/3AFhfEwYrRe3jEA1yiLTtEOqPh
bLacT6cXKEMDLpLmurmeEj2zj2OlDAWX62qpNosFNV8G8Q9GxND1i3c+wnOydP5PiuZQrhnI
2aiMRKZtWl7unqYROYR0JefMw1OHb7/f8rjRsbfETnB1MFJSXLeEy4ri7wCmeu3Es0AHq8+F
eF2lnUrSLzs3fi4RrUCH0KTIF1v7bdek5bCOlWWz9znKBQ2VSOLbH7l9WCEapBOyHy7EpB6t
aVFmAtQiEbI11VBg751dPYKD52XbWWCPMWB1n+88lHnzRalIXbRrKmoA0g3jqUEnSCgT4ew+
ploQl4uEzniYbS/UrS54xjCZAOnscuqmjDz7B+yWXS1mFMLPuT5guFpL7sAMmEaU+xirhlWj
Vc20NXt8vPFwnQjETsPisDDFFQ0c4mDBjbNbXFz9Kemel2jdakpBC10WFxAuOyw8C2hVlLO2
HZTiBSKPsV7AxeeHY0FriYCKKPioetDqTDDjCmW9WHwpsUuvj/OPyxAZ0owq7p/eejnCO5i6
LpHMZyz6OPKsnYzqIGudUdZENRw/eqq2jt86kQyuxlA/80EUELR95tymN6P2DiDVXRa/NCqg
sUAwBguDrYJuh44sRDUGgvcZqVQVmaZx7ibOsIV6Lz8DFGW77cBpza8W0+sxouRss7yahRB/
EQiRA5v3RwZQnhWEg9VJeJ1PvQ+ztOGlTfnduRlfGixctY1yCdJgoPrurbBfAuzxj+fXh/fv
P968gU93xdZ9jOyAJU8oIPIG9AruK+sFfYiHOMz3sB7/fnu//zH5CtESbbyt3348v70//j25
//H1/tu3+2+Tj5bqg5IWwPH3X7jdHLbNeEVEsRS7XIcsxVd0DylTdgxjHU9hhyDO4uPcXwUB
mxrNt7IdLsBESfJLKKChpH5QIdWAk2GPAFfdLKibtp5+kdWxt8V7G1IT1eAvxVae1M1GoT6q
1aKm4vzt/KJ5DWEOAOMjCnjDPZC8TxOk+RxXWRXbok4OX760hTmwUYE1K6S6KFAnlUaL/BaH
dQboUUCkoMLE29VNLN6/mx1ju+GsKrxkEin8xUsuVDSQdp2ghmugDagQmgBNAiGKDrm/u4x/
o12eeIg1BjZakKto18iD9DsyavvCmX0OQcYVZIjv2F0VTiQYx1coBUVgQxoZ5ZM63bPzm80n
Zh1Tx2GStTu2lqBwSSCuuEpr47a9X208UGM8utXhIFxfR4CNzPwAOPJLAeCwyz34yVMwGRgO
jauBaJXr902JzBx1FCwlkYMAQ997gAKzLoAodqH+TYRfeNpic2wL9ILEALgwmyZQY2eC+n+k
XVl347aS/it6mpucuTkhQIIEH+4DRVIy26TEFqil+0VHcSuJzzhWj+3OTf/7wcIFS4HOmfvQ
bru+wkKsVUChysxqt4yss4FWPLVHtGJxAB0QS9w9yxAjwufgTYAn8XTBk51t3S5onz9tPjbt
ef0R+M6sAQ5AxRjUdlD3PEnUcBJNBH/bh2LpB6/pQKCVow22vRJgV5cxPgVmra1tZSRJbQGi
s098ZjXDiz5rpNkvAnvnzWMd7xg0utrWkDH5n95oS5uu7dmV/WbLFg9Pj8ozi91+Ip+8rsST
l3up+9iF9KA8qIarNbD0Y38s8zfxdP3ydntxhAVhWfnwdHv4H6A+vO6IUCqePuuBSIWxcjya
7YPMImat2UYWXHQUtyEU7s3lzA03om6Fx5S2KDg4+u4B4QJ/r1vIcboh2Wr8QoJc7Te5dSwv
cuK/wUUoYPrkvtSMhQmG5vnIIK56U7MQQZd3k9ilizgwIQuoqWM4qLHH2KiLsGpjPa4bkRMi
ASQHjQxdszq5OapbZyjHuePtgUdeE88Uus3LejsGDtjxAf56eV18fXx+eHt5gt6u+ljsjPmw
u9tk62wHtJ7Q/zKXnrMoqRHxAKEPSAMfoPW6mMrG9tQTzisuMsi3/TLI978IGg8htytr8xuS
VLuP/f403SgKlZCvkSvQS7rUFy0viCPxfEC+NI6HIEkVRithMOmuytPlH5evX7k2IsV8R6qU
6RK+gVpygqSPoo5ZNynZeL/GFlmUicpRxTfUaatO/BegwKKPU95RYRS8c9v+fFcfC6eewv42
P0AruWqtJY1ZcnI7K2syUmA+YrbLvS8x79HcPM+RZCUHgPNONV1TnFe286FBe/Z316h2Sur1
r6+X5y9uN2ZFS/jC7vaXonv87/Usm9Zu5+NZqffuCLN7TFKx25I9fa5geWQRukl7+rtJE7su
ytDmZFG7tsoxRYGtdFjtqabNqvgb7YztgrNd9XlrvOyWFlxFgiim9nSQFjM20RDL1QhuwzQK
HSJNQvsDBZHExOmYAprAg3Gbf5yqrcU7+LumtWd4l4eEpm5Hdi3jJVEomvSEp84i0JOxm9/H
5jSTm7LdsjI7NjQkRt8DfTzK1LN9z5dKFEfu+A9Riuw+UZMF2dQ8DCl1hm3FtmxnEU+7DEWB
3f9aPJDhhsettXqgwZbzX2McRYzZAcnsFWW93pVrYXvnH0LNVvg4ATrqqLXIEZ3VMirri376
92N/kjHpMxPnEJ2T4Sg1zqBMjMJmSDoTOsIXDxOP51BsYmBr4ygGqLr+Sezp8qf5Oobn1OtV
dyXovWtkYOqcwk0pPtYU4Tw89H0eBKkKZi6x0W0TgEMY4OKlJ0UY+ADkAzxlcOCc62bYJkh9
7QbL2zpHQj2VTKinkrQMIh+CEmCw9INCE83FPZ90uQ1dVyiU7du21vVCjTp6J7Ny7FHpJhnK
WLzUFoyu2pUVuYh5zAe86YBJLqgqEXSNVLLOzrHPZbT4nhBxBSOe4ottNYiRmyQ3DUVH8hEH
uk4w0EUfxQFMN8+uDQSBk8RggZTMgaFXudxi2ZK532oQBw9xiugUvfyIxXP9mbJHcWJMO5TD
EUQgDx5aUmSanw+G0XbfGgxcmlztS67xZ/s16Fmvz55vgSgxNmQLwdAXSwwj6JOHD/MPo4q1
ImMXkEb7+m46AEJ2wgnUfJ5dYMpRdhyUsu7CmMBDSqsPikiSzDIpC7ptzx0TSPLRMpRinfuF
fAhFiACNJYHUkwITsFEElIRgsOeJg6jioMRcTPQEMNZ4Uk8sjnECNcswSmbqoOTOFBh5csyK
21WcyktUZ/jtOhKAR2dD3rsujQhxG22fMxQE4ERcFmmakgjIdLchXYyovV5aPu3ln1xeK2xS
fxWjTh2UcaLyGwoY0vbuzIskRNr80OiRl27spBPSoABDhxQmB/EnhsazyZFCNeKALivoAEoS
EEhxFEBAl5yQBwh9QOQHwFpxIMYeAPQ4LwECACwE+VmexBiBzXyqzisRN1ydz881tzT9BfPo
Tu1cL+f8R1btziJemlu5AW3Z3gWlMU9X6q/+RojFOICqI5ztz466/kGKernqJF9xjTwgkDGV
zkHxag2nJmFCYDNqxbHWn7kNxOFFmPGadkxRE0RZAwI4AAEu4WRQ9TgAXnkNsDx4yzZujnfV
XYxCYGxVyyYrgSpwelueALo4jjtaXhdHsKPQoj3AH/IIQ8n42rhDGEOCzOQ8f1Nm6xJKPR44
zyWX2wEw4xSQgPkqyGNLZXPZt4A6DDpZMznAdhEmQojMTQXBgRG4AEsI+97saDwRtNcbHLax
sA7N1U4INQiB65aAMCwb6SxxEM/VTrKY/mkMKKbvJE6BzUQe9yQYWNAVAs0iERdDrdAQEPpq
GMegV0KDAwplIoEUHLWqjrMjrsnbMIAq2+UxASSEptysMFo2uS21jAy7hC9kISwG5B5r+34Q
NXEIzMoG2gY5FeaF5nWTwJO6SebGRN1QsGAKfhynw+czGsP8GK8bj7CsMcyNEA6DTZISHAI9
KYEInJAKmv+cNqdJGM9XWPBEeG4X2HS5OhWrmBVzeOTIOz51IRFd50igfudAQgNwNd200jHe
O7VfUZJCa1pr+jYZE8BkIaniOPYACbhgL4XvuZUnLMW0K5/z1aqdE1CqDWv3XFFuWQvUrNqF
BMOyJIdsr14OR8uICuXkpmZ1TLkUNDtaMQlkq8D7ZAKfZGo8IUXv7gdBHHkWRr4hBO/sVzjw
re8cIb6tjK+49J16hVEUgduoOLeI6exG1fKmAYdM28RJHHVzkk97KvkWCXzSRxKxDyigGThZ
uH4dBRFod6GxkDBOwL1tnxce58Y6Bw7AFjkVbYlmi/5cx9aTu/5jjw0s/rJlx4CQTOyuQ8Ai
wsnwDOFA+NdMvTiegwmLpuSCw9zcKLkKYVwGaQBGHiAWZ6RgRRuWR0kzN9gHlhQQdBS2DCHx
iHUdSwggPbCmiWNIqS1yhGlBEYUwlhj3pwaQwCov/246qyBWm8ywCNLpJ0in2WQhhgWiBFxL
ursm99yvjixNi2DzRJ0B6FZJB1qE040gejodrHvTEgTkf+gQho4xjjRMkhBUigVEkcePn8aT
IugdmcGBwRMICYXv5z+3xnKGmq/CHbDnKSg2zG8nKMbJ3cqHlHcrsMLyhmR2CApXtQ0Kzrrc
POYj5Z8MDjI2vBODchcufLaMVUvruSHoNWyZN5nOrpHNv2QYJOGV2jguFYB6jHVuqhZ+PiWZ
mC+AuJ6F8EZ9zpuNVfKAWg8UFWYbhU5Pdn799vwg4tV5vXk2q8IxYBe0LO9oGhHQe5uAWZjo
k2Og6dpg28ibM8tIRHJmHaZJABcsPRkJk2srXAHAdVfnBXTmIDikT7zAtIiW9CIlCWqOkDWw
zFne+1j1VXdBhh2koNt2ehPNcV83IbAluewH27xvJIbEzkySQVlqRNMAyMk8QJFdJI4Jwfcn
I2peqom8+qNF/7f0DEAzSMRXcdsWdaSFDs1wZCVphuGQoKyzrjxud/fWYaTsjByFp9MJJJom
rToA9WqLYwyZAQrwror5niMbcsqQyz4iam6VhyaNZ25YmokMqo8sxs4Yvi8bzumdHPJSEBQq
J9QaZe49ohqx6mrOHcnihg08h5xgu3sUlcZwZp5dbWSgEaTm9jBNA6iONAUjt45oCidKIR1D
ol0cxvZXcZou/UnacA40kcvPJ8vPk5yRLskwRdLowouXXVuuhHM1Ebyik0nk/Z2daJeTjoBn
BhK9p7pMJUnqYs4ksjIHV29WRUl8molKInhqTHNr/OpwQ0xZfSR63V4LhvtPlI9VbQHIlicS
BNbjwWwpfJA4Ve/JW9D9s8y+N/VT1nFd8/jwcrs+XR/eXm7Pjw+vC4kvqsEBMOSIV7L4Dskl
NhyND+Zsf78Yo6qDSa5G68RTmzAkp3PHcuPuRaCjeaXR5MIcAFS3+wzrZm9mM9rhD7Jby7j2
qV+3q8toZCizipZA+48sqLebtL5nutU26izpGEH641Bry2pUIyu7USg/+LhlZKDxbO0Nq06N
6myqA90zSAwWZ4viCF/zQ2PmdMeaq8qBLyjd4OEPmsjHGuEknJ/IdRMS7+ozGcLqRGm1ao0+
9x2ElLlsO2KN6EpiA+A0ixR6cGQSjw1BAXZpdkdx7QXYJCTVNzE4GAXOuBRqEPI759FY/BLV
aL3r0CCxRFYSOqKUS/r2rlEm2a58PGBcevN945QcUzs564SwAx069MvoyhoShgKoL3+z+suQ
w+j8csp08odpBSmdABXg5rCtu0x3TzAxCN8ee+WXhu2bEsx9jL85y8UFqzVfH/RmMkAhdcFX
HxOb0MUoeL+n8RQkTClcTK9uvVeK3APnC7G0PhPRdT8NsfSpCdE0NBez3wtY0MnTolKimv0G
+82BicR+JPQgyDwCNTCM3mt1yQQbyGnjNduQkIBKk8VkWNRPmPlUSPMYK/UTP3IgYQB/XMXq
NAQfzhk8MU5QBufAd48YVDs1Fndr0EAutSSeppcYdKios9AEg2PPFhFMhBBfkVKCmC9TbYpg
1hyKkxjOGzKRBJkI9efgf+pisNE4grRZiycGhxmgilkgge0sLK70vRVx0CXfq2jS33F6MByD
WK/sm5qDiScUXA4ERFO4xLxFvANgrCURguvSUkpST4NyDJQ8dZaPSYo9U1iorgjaqU0WHPqT
E1gyNpni+U3F1qAnxFYoNCTPUstduAHObwHtip4CcAC3q/3nEgW+jA98eX3nayQPvAhLKPXl
fQT9fI24jP3Yuw2AQeG2/mBcsk8Mu4y1y3K3+yTcHUw+6s9ZJ9xMgCnMgwANsI8DNIjLhSC9
i2gA7jLjEQWANAcMNiPDTZvB2QmIwQIKIw1NYs/SNBwezPYAq9dca/CNDcZzCGLYd6vBRbHH
kb/FlUBPVCYecamM+OSEvlVTvIHcBYrfm5RKwcZg1wwauz97z0NHm8k3FySKPDFCLDarNWGm
FM2VxCW497IYNGtXUbD9iU2Qe/UFM0We6M3W9K6zZbWEo5jscp+Gn0/HdBpls+2qVWWFhSuL
KpOoeCUFe0RXPD3uJu6BPlbbTPplsTtIl2esrMt89K3QXL88XgZF7+37V90/eF+9rJE3KGMN
DFRF9jl3Bx+DcC7aca3Oz7HLRHQ8D8iKnQ8a3uj7cPkSTG+48a2788laUzzcXoDoZoeqKGWM
RLsQ/ocTTL44LKfjHaNQI3NZ6OHxy/UW1Y/P3/5a3L4KrfvVLvUQ1dqKM9HMAxmNLjq75J1t
Gv0qhqw4uFeXFo/S1JtqIzexzRp0r6ZYu/1G/3JZfFM2mP8zW0siq+NmWxjNAn2+0RmjPyyn
cez2F83u7x0+sz/uxYBQraLc4zxdL69X8WFyJPx+eeM/rrxql1+erl/cKuyu//vt+vq2yNRx
UXlqy10lolhnte6LxFt1yVQ8/vb4dnladAf3k8TAaVSQu7FLBA0OcCy5sxPv0qzlc5/9C8U6
1Ps/Uv3I7CyVg0VWSic4XOdjwlQdutUXzPu61J539p8JfIi+ojh33rJDhLw0TUnJf7z+8nD5
w41OIEUrOcjyOtODzVkAHLRPMK2ZcriokRoS69qArE53CGLzaEMmrqnHmHTM+rwsN5CHiIkh
Fy6WgUqd87bKEAQUXc6sC6QJLLttA83FiUO4em0rsMgPpfAP8gGEahwEZJkXEHjPs9RjmGnI
dlPlGVzVJgNjU2oMu1S8cfIk3xwp+Ep64tgeCEqhWnFAty62gHMKF9hmOQ4gXd9gSUJ79GgQ
AjuUlYZhlAZsUl6kftxmY2A3Mt7opyX8ERL7MPsR4gfR9TAbgusqIeKHYj9EPXUVIPhAw+RB
BPty+Jh6PBBYPNC9jsESepq6uw8QOJQ4glAIt4dYTijcwPuNiCMOfw3X76BbHY1ha7xw04F9
2+mhpDToQEkIjthDHlheczSMz2rYCmjiOVU7ESzrnFfQ1jTxfc5Dd21tj1CX9Gs6XxmxneDz
Lowj8KmGWsHvj+WS19la2DGW54Zyl8meL0+338RmJTyMTJuNJfq0hx3HIdVE4XcF57CFLjka
YnGl1xgvUAzUrMjPX6bd06yQKa3tA+NAXqcOcqH1BfkJh8hsKlvu8LSA3OnF3goahjYy/KeI
FWUKukuc495yrLVDUEL4jPQp2DNmGaZqMsI/ReV/uBgN+ON8f3JRlAKNwW6/vknHtV+uvz4+
c1nv5fLl8Qb3hAp/uGPtJ3tU3mX5/Q56yyklDVZhYh1cSEVnENe8upoaRlrYIFnlh9sff4gr
OSlX+VSF7qDc6lojZrlfYUslneiAeiHpXITf6m80tBRNVtfb3D8OJkQMG1Zlm+25KbqDPZCl
UtC1hlkvp02a3VzwbME4qhreYNiianZ2enFCv5wrTitM6pNTFuaXVE3uzsVDxf+fUbR4Kgyd
QA6oCI1nNTNcCYHwRN0B0HNtaxU5xu54CVx3z6u6FlH41PGAeSZweX54fHq6vHzXZHkJX77x
ufLPxZ9CdVuIENxq8oh79sEd+eXb2+2nV2lEwyfXL98X/8g4RRHcjP9hD2OWZQlCoy/Bw1iS
LJpP0YfbF61C+eWP68uFN+Dz6w0Ic9av3BUhsd1tVXPC+g6vUVOIagZsm+gJdOk/wbpR6EgN
zaehEx28clTw9hDgzDxXGwAcR7C6MjEQ6I5pgqlTS0klLpXEEcDLqQSqGafDV0sDQxyD1upT
+gQsLQFrloJ1SDD4UnmEjVvJkQp+ZgJWJ0kisFsoNd2mOAzpe/2W+m4QBwYUUs+VUL+OsDjG
/gHadGkTmMZ/GhD6ZSGBWw+oR6ANQn97c7wLdEVjIiPkHHVx8iHwFHN4p34HhJxi2C4IgzYP
nU7cbLebAIFQQ5ptzdwq7Iosb0CT3B7/QKKNWwNyH2eZm5ukQ0rACEdlvj6BCckyW82MgRwM
odrLSB0t7x0hkxGu0jahvqHA66xcgmtOc898hiNHQrHTpNl9ErozuDimibsgC2rs1JBTaZBw
TcZwIW3URNZt9XR5/d0vImaFuCP2N7swuIuBuS1MKSJrbvd1MEscnTv+ZzuktjWLzDIVbkJr
7fxUYEoD5fx8B4gCRjLrrLw/x5WFdN+epzgW//+9XMtZRNRo9Wc+OtYVGTW2SAfUXapaIOIo
8qIppYkHLDOSxL6UEvSk5IK9sXgZWIcN2yodO1mnPSZGjJC/JhZ5seZU84SJe/Wh0DyKGJXP
+JQKeFguVi+35zcxKv7TgSgMBV/fuFB2efmy+OH18nZ9enp8u/64+LUv4dXD+iBO1xf/veCj
8OX6+ibiwwGJeF1/Yt58NbGX67sR0u9M5bF4F+obiSAxcocifRmSxI4LVGlqElXjVV2BjHaf
IFkksopU9Qi0tv6pW/zg/UizstI2bkyX943kTaGqnYxHCh3jSTa3l7ffFxlfoh8fLs8/399e
rpfnRTdV4OdctjzXErwZb058AOuHYVKzy/kKiKyWqNdFF4Y2a7anBGOIdjbUP43ONavhOypW
zDfaxGUOjf/6m0mHMxCNa3F7fvq+eBMr3uvPbV2b7cEJQ+VYmQ93OsPKvviVb4NyoJqphAme
svBTu43S3KcHBD+UGxJgjH7UL4ksJau73Z5eF29C2fnz+nT7uni+/tvXa8W+aT6dV8B9o6vD
yczXL5evv4unDc49Z6G7POd/iMeVfDdZVhCVWdSi5Z160sKaTSc7ApXO4sAoJgK+b1gfmMtO
uJK3mWWzV5Go4aMjziciuJ358lecV9WuETFqPEXxeuaGXs1paxFGRDw2HapgVc2HiXTsTpxB
jOjoMP36LPXUBR8lv1+fvvLfRCSuV6O1+0BwSRDE9nerSFQ1iiPvJ8v4fadWbnWpJ/Sww2er
E5pLcl+N1TKza8BjQ9FCW77vZGC2eir9uw/r0hpqB97OdhvsC8hrnEB2ebYTIYbuCjOqy4jV
hwI8EOJ4m23KcWIXj69fny7fF+3l+fpkdY5kPGfL7vyJKw2nUxAnmV1YzyM+oNwxPkTBALAa
J9uz8+cg6M5dQ1py3vDln6Sx2RaKdbktz3eVsM7ESVr4OLoDCtBx35w3NZiLaAiIbstkE1LW
VZGd74uQdEi3FJs4VmV1qjbne17yuWrwMtPvxQy2T9lmfV59CpL/o+xJluPIdbzPV1S8w8Sb
Q8dkZdY6E33IvdjKzcnMWnzJUMtlW9Gy5ZDkeM9/PwBz4wKWeg6yJQBJghsIkCDguKuIuWDg
OGRLGGaMvoP/9p5LljURMNDqliFJUhRlhnkDne3+o3z1O5P8EbEua4CbPHbWmmPZTHXHijRi
vMr8C3SDs99GDmVAS30c+xFylzV3UOzBW642J3IsZjqo/RCB+rqnWeB+ztsCM9fvnRVlYUqF
AlXgeOsP9CAgOl2tt+RAFuialO2c1e6QqUa2RFMefWRazNTlbV4k2s1m65JjINHsnaUh93qi
3C8ahpke/cRZb08xeX4zk5cZy+Nzl4UR/lq0MDtLqu6yZhzD2h66ssH3unuSw5JH+AOzu3HX
u2239hpyCcG/Pl66ht3xeF46ieOtCtucsriD3mxV7V8iBiu7zjfb5d4yPBIR2Nm3h6cui6Ds
6gAWQORZGB1nHt9Ey01Enz1R1LF38KnTGJJ24/3hnNWobBa6/HaLJNrdznc6+HO1duPEsfSW
TO/7f7PsMoECHVKIxuyu7Fbe6ZgsU5IAtKGqyz7AXKqX/Gxlqyfjjrc9bqMTGQmKoF55zTKL
ZXNUlu9NjQ4BYC5st3+HhBQQCslub6h1A1VZXDo/PK/clX9XvTdlBuL1Zu3fWbIwT8RNVHZN
BvP1xA/e7eFqKiCNwMhuYIGT7R0oVl4OJr6dokqVV4kStm6zy7Bjb7vTh3NqUQeOjIOqWp5x
Ue7BwrzJN8iqKoZpdq4qZ70O3a0ra/KafiJ/HtQsSskdfMIoKs5sggQvj5++XDVtRyS6NLT6
8ADjj88FUUvVtYFxkwRQIWKFq+gMvkTRlDX7zXJ5C9eeQ70nUW/pxBWYdYrkcepj+GkM/BRV
Z3xAksZdsFs7R69LTpZeL06ZbMEoJaKWXDWFtyJ9tfsOrv0o7iq+27iuOfoT0nKsj1Sg1cMP
22nRHDQatndcu0qPeNezaSW9bjdPA+XT5sAKzP0Rbjzo46VDXg4IwpIfWOD3z4q3G6O1Gt5u
p2iElJ8VQbZTJ4yKlc+OBRZ21aRa6esWwLzYrGGkdxvzgypaulxJ5ICY3qcZRJ5fnDfe6gZ2
u5NP+xRsVOm9pXy4IaNkjLaaHx23a33BSIjBflWKF6s3P0TVbr2iHgKI5TrZSyZwKlOTO6bQ
UOuNm8I/Miqyj2h0HVZpq/Oan3lCu9ULmzpfuq1HXqvgyxkkOZx33nqrhOsaUWgguGTvyhSe
GmhURq3IdxQjRc5gg/E+SEeuI6aOK185HxgRsHNqbwQlzNZb06kuhAhE+UZlpFUUWvRAFm68
H1pW300eI8nL/bfr4s+fnz9jOmH9VjwJujCPMiUXMMDEM4WLDJL5Hg9WxDELwRYWCj8Jy7Ja
cRodEGFZXeBz30CAkZvGQcbUT/iF02UhgiwLEXRZSVnHLC26uIiYr4Q7A2RQNocBQ44FksB/
JsWMh/oakLhT8VorFFeaBL2gErAF4qiT3whjNX54l7H0oDKfwy44HDBxjXU8b8DGwpQyw5Ep
U+DrmK3buKeDYtpjzNWuLEEnEbnV1cYsIy2GEwL16DECxsM2oVz2sLYo08gxdmx6blZr0oBJ
gjE6gNotMeqmZR7rdYvdjy6Hg1nnOUpKJHKhiP4L7h/+enr88vVt8Z8LMC3HRyPGsSmanb0z
ehQfmZyBEjHZCowHd+U2soYtEDkHWZImsmetgDdHb+18OKrQXrAp178j2LMoEogHBdpd0Vo2
oo9p6q4816d0AMSbmTARCoaRt9knqez4O7QIpsJdore0l9cqDAxwDwS1HO5vnPyWzpzxd03k
rhXrccbRrzpnvB6MYMaIN1+nLI4o5BxUj6gTkLsdqTJqNFtLAWMssNsl9DElKO7Ew36H7EuB
2pMY0BXUF4sz7sbzTIkhLTbFjFGDH0hVHqEPt1lF4YJos1Qfsks11eE5LCjZK5UdK6kE31m8
4/fiNl8TsANq0JWGW5zvr89PIDwHtWhwxJxFwewekIqHH7ykD4LFZc2AlxQxGQz/Z21e8N93
Do2vyxP/3V1LQq/28zhokwSvJ826ZxeO262QREOZlmQJxt3RyCEv20KNn1qYeeYPoDYY0vPA
lO/gzzmBWVODZdwcSPEFhLVPGXktUeKQVc50Bf5xfcB7QOTskxlADD/1V3hgSNQjkGHYiuM8
adoIcC1nH59AXZLonPkVvVlNOFZrBXH1EYGAtaAKUXclojfj7I4VaiFB3JRVz40MZWkQFwY4
PODBpV4nWN7wF6WeCmwpUu9oBZWtElkEYbkf+llmli5cGWyFQ2sbhgkqA2cte+kJ5KUCtYWr
QJgqaVng6a9s/Ywwo8Vxzk1YpiqOPSzWQqYqyFIr4eNdbDQ0jfOA1ZQ6LbCJvPcKSAY6f2lO
gUOZNfGdpRiw0PwsYlpJzWbnaaMBDBLT+e4S69W1ochxbVuZ3cnPYIZZ2YlP4uDc6IxLbdzy
SmiGKb71b1hjWz5/+IEcKhZBzYkVB7/QG11w0J+bUoNnoZ4ZDYGyftADivKojTT2DUoNGop/
VNIeOMHlKYfAus2DDOzKyNUEByLT/coBMKW4AfZ0iOPMnMRgHLEwh+ljdGMOA1Zbez73LyKS
sv4V2DBiFdk+Y2Fd8jJpNC7wSLGOLxq0zRpGzL6iYTqgZqkKKmvlDRSCwEDGUNawXJTdQALT
vSe+jQvopKLRm1vFjZ9dCkpPE2iQiFmozY8B2NvSBJyw+WS0tTyYiJqQA2W9EMf1oY6o8RpZ
hdVoPUWxBizD0DdaDYLcLlqGWxLjG/vWIJK94fMx45sm9m3CFHAwn2EPjw3JNzyss4qiOqfi
+wlxg1dwPmdqnvIRaJ8ePPfr5o/yor/nk+H2r2Hn0sQFSEoe63IFz2nTXIfVLW/6PNDKiZIE
1ypWpTaqTF3F6ci/gsJNPsY1FfK1l+phqbF0YiwvG20enRmsHxWEper9NcJusfzxEoHqZJUw
fVD77tBqq2uAh9AtGMVH/KXpUVmlLZM8rNwx/8wYEJbQD6cE56Q6K56GMWPNKjJooAEDl1Sy
9bInlyK1wqk4PBo+6E+NJL8e5bMRoVQg8VUeQmY7zlLf70tA/e0jwkA+daqgRmibVaxTQib1
3xeFZjSKh3c1bpY+7w7a43S9M/2iAHEdxl0Rn4ZzA27o+vnj68P16en++/X556voZOMdXf9C
MfFhJ+rQGGS80atKoAZWsEYIUBbTYkeUo0RgsLwTLJtUrwBAILDLqA2bDOq3f4jXb36Aw3SG
ZV/42bAKjNISTknVYYy4GCSRQ5YH5siKmDEtiOwClGhQgS+/u2oFWmLveXE8v76hwTl6OEb6
saMY98327DjG8HZnnIQ0NArSUI2RMaEq+AGDMea+rbt7MuNMC1ExWaWA1mXZYN92jTEbBL5p
cN5xMJPo534TYcLptBpy/RN7toE/t+7SOVQmr5h+erk5m4gEJgF8YyJE7id3aSJKsjNKnUW9
N9ql5yKBhXWe7ZZEZRMYWqAJgHrnbzZ42d5/pArQUGScoON/jQTiwSQe75BztD/tXYRP96+v
lPkvFkBoGwnQqopGNg8QeIq0edWIp6F9emTYJ/9n0b9ZL0Ftjhefrj/QoXfx/H3BQ84Wf/58
WwTZHYqwjkeLb/e/pmeXT6/Piz+vi+/X66frp/8FXq5KSYfr0w/hkfwNgww9fv/8rK60gU7r
+R6oR+2VUXiuoKjWA0AIhkp/cz+W5zd+4gc0MgH9StEiZCTjkavHpxhx8Lvf0CgeRbVjxPaQ
seSzSpnojzav+KG0VOBnfhv5NK4sYs1qkbF3fp1bPhxOKjrordDSWSDNujbYuGrgRbHWfHOH
wznNvt1/efz+hfLVFUs+CneW6GcCjQYbrewDmlVG4PIeehwkg/UzzOKjtBA/atUsyT3UCBAg
bxdRwY3gOALYpX6UknGSZhKDB7A4UUxEtc7GgCjV3dekuFmpoIgwpHXdn/UOUafu32CZfluk
Tz+vi+z+1/VleikjRBIItG/Pn67yuImSMH1yWWSUUSUqOsm5TUaIULf0xgnEzcYJipuNExTv
NK7f8Rec0pDF92UyeyHr9VM3D2IoDwyU6dgIHDTCwcShD6UUIr31FE3ONRk1YVh+tmCGY2ad
OdyZt+r90LResW9sew/au+qx7vSZqsxavo9zRubkHnDuRmfUj9qmpb2Oen6OPKajd/TaZFo2
eGJmpwjtGtIoDcPLNtzQBmpPJhKUWVrFovFwS9Z/moiNx7dyY/F0fXBhkztCwLs8wez1vMH3
LCl1wig6hIFuHBxTTcBnhrLS1D6YJ0cW1Bhe0sZ8efLrmqmJZ8XXsXW6xgceN72ak7Bz09Za
2xnHo6XkpBd5AUr7QMcfRb+d6XigQji2IlyMu16eqfxugoSD9QO/eGvHENojbrUhXetFJ2KA
IRga8SLTtMNgXEp+F1+sHPpNTq6c6uuv18cHsOmF8DXdIYSwPUhnk8UQuuYcxkyPMYdSeYgA
PB/G+IdjiWjbMIM08GSP3D8+rrZbZ6hUOQWw8KqwIMS03js9dHh1lbDshp2qklrDtvVU2Fa8
ODmBGWhiR62laPOuv47kEt0gzqTbz3lMri+PP75eX6Cls8moS7ME5xLpICIbOaZS0aX1zV1h
NDJsav7Zd7dGEKv8qJepIT3dyikqLQjPCIVyhEWl6SbIkxa8KwDKvn3qdsvNMyEkB73UdcmY
/NKYnTEuoLaf9Xbh2JfyxizuoUdjTJ6o5ACqyzkArb8qOWt08Yw2lg7CiJSaTjxOIB0a44Zg
fE+QJl0Z6AEZk64wK48JftqAx40OrQvYP3Rgjs4rpL2VwPrSIcpZYQ8iDcv+18SIHzfCCWWB
ovJDw2qfcNg7731f3Pg+Du1x42SioTPfq2rsXEs5sU0HmEi0gaDLSWCewWx7ryxz6CTUwTze
lbDt0SYnJKJ5zCehmN5/+nJ9W/x4uT48f/vx/Hr9hC+GPz9++flyT5xb4mG6zgXCukNR3VIg
Gs1wBQDd9YjQel0Vszg53tlmEvs+lLSFCEdr3YLs6yqdl7vG0dCtVrsQY3WTQinFldLlXIeK
S0qzHgHuu80mbgeaUJepqSkCUjzlrChY36A7kwGBNEWARtUHSrRwiFdDkjYhSff3Z+JYTnOp
5LfV4s+uCeWDogkWMh1YN8vtcqlcMvcIM6eFRiCKw32LUa3raXr9wdUrPUQe554rB4cYyhSR
6ndnkx3eQFFLzV9vWrfNrx/X38I+8MWPp+u/ry//HV2lvxb8X49vD1+pm5yhtfiIlXmC3bUe
k18alv9vRTqH/tPb9eX7/dt1kT9/IhyDe27wXX/W5MpdcY8pjkwEgZ+wFHeWSpSJh05t/MSa
UBn6PCdT8sU5b1ioLIERZkvLfP32/PKLvz0+/EVFph6+bQvuJ3jgiYnF5qbmvAIZGmRleCcD
J4hRw7sXH3hHpV7ei2uYMc717OQxQTtbFmuJREiXsMzka06BDmq0AAs0rQ8nNJuKVFw195Gb
YtLvTXx4wylV4P0CVtN67xs8+yfXWdIWfM9RmG88lw5aNhOsqVx4fYPVHK49rHac5Wopokep
hcXZcu06YDhYnKSRRqRVpCyLGesaBYsQULSFPOH3rrX7pkQ/MhCz7Cgxe2WodkMqUARI5BY1
+wHBpEPvgF0rsYtG4FpkZVJvdyecnMdsBuptQuBGbxI6Hzvm5+hGTTVe9VOW4bYMtRPNxtOb
pad1FEDdL3wAhkt3xR05DGJf8CnXIHJaRG02R+7OsXd84633epcZKdz7GaNnweqvb0Mfc8Po
0Cxc75fGiEp5olUmbyUBmxbB+t/WyWzmXxZwxr1lknnLvc7IgHDPZ1MUiXusP58ev//1z2Uf
4bdOA4GH2n9+xxAlhF/G4p+z18x/GcIswOMkSjcQ2CmBr9Yp2bmOqcsIgcVslFqrMPhacJF1
yX4wROpeyzpCKbE1VyuA6cCifYlzvqGp85qXxy9flJ1Gvt7Xt5vx1r9hudGMEVfCrqFciSlY
0HXvLKi8iSyYQ+zXTRCrTmYKxeQPZ5+LI2lYte8T+WBVHFlDHxQqlLckydTowTtEjKPo+scf
bxhZ63Xx1vf/PEmL69vnR1R/Bm158U8cprf7F1CmzRk6DUjtFxxf9b3HSp+ax9LPla+51yrY
Im4M5yO6FHTEp1/FqZ3cRmTf+WEIigcLMHyLesi+XF5ANfFZlsXUm4XRO//+r58/sPvEu4XX
H9frw9d5fvMq9u9axRlkAMGKLsBc9cOi4ZQXuUZWlZnsrK1h26hqahs2KLgNFcVhk93ZuQN8
fKaGWSXL+kJInOpbq+Gqu7Jt7NU354rMOaUxiUd+sm5vGZTxawb/Fizw1dcgM1SITdhuqLti
naqfPXP7jFLi3FJJWWCOG/yt8lPtbaRJ7UfRsO7Iuma0fApn0uEjxS6Sb/tr+Kvj7ESSs6pk
gYV/getI1xODSvPeoPHCJ4Mk4nVlY4KTJycSRd2oL1I1FJgmFkGmE0JNRyWbcxPiibEK0DIB
IegQNiVs3iRwfED4j5e3B+cfM5NIAuimPNB3Aoi3pylAbHHMY/NyCTCLx/G5vGJO4TesaBKs
ljzemgjA1lSk9oTQxLXMan0cL8gmR1FkhTDrRnLKsjOI/CBYf4wtrsIzUVx+JJPXTgTnnZKL
eoTr2asHeMSn97kkpgthQrU15QYhE25XliI2dI7igeBwyXdrJe30gAD1eLNXEpjOiCH/LoXY
ky2hUukaRCIb6G0Kvg69m81hPFu6Sk5RBUH1/4DZUHyfAUNmWx7wVZjs1lruWhnlbKg4ywqJ
t7F//v7XO/LjfLVsdmTuzYEg+OC5d2S1IhvuzUEYk13eWpxzMktzDENM7bq/WQX31t7eobSY
kSLJvaVHTM4a1t6Shq93S5reXZvwOPccl5jj9dFTghrLcI+YXDWm4yXHiK/JXLwjNoKVvxsF
HAayVgUcMeB7ahEjfGWROa5V5tBZpmSS1a2ZKQiIzkP4npYom72Smnrsvf3WoSfReQXDeYOF
+rxZkvMAJciKGMBe3JFdAgvNXbq3GpyH1XavzSIRvQaVjTn/Ig4jZvX4G/tVxD3XlptWYcuS
xFyervvQTDA0XaS/w0eYl7elAYypS+fhnQmUyD4yfE1MWdyxdusu8XOmvpFVCd5jarO7LWKA
ZOu+X8x2tbsl/5Fit1tb2NxazkpnEndFOgNNBNoJnQyn9mxMvbVtfGp6r3bNjtziEOPdaiMS
rPdEkTzfuCuCu+DDaudQsrBah/Ryxll6az+Zji8Jbcxbkg4yI8HHS/Ehr8YV+Pz9NzxBuSlL
8cVtIUfhmPacBn4jdxf1dH6WCmPkGINt9H+yxEubvhYZ62+JuK1H92ao56afIhHwPpPFzeZL
T8nwoGxuFhh2wzsjudIZarmKQvdeIxgTGolxkSrBmBA2BL0RdzZFnHEVWyovgtEpv0an1TSy
PInAb7Cnd5aoc6fOPzOkom7dEp51cW/azsZenqI7eadVOFl4GDWQAXIjbbm9t9EwD7uoUqxl
EYDlgJ90eZo3FELp7JONWw6GVE88dXr49Hj9/qZIdZ9firBrzpYGAHQwq4xh6mqfRVLpQZuY
b8lE6eh6J53PnAR0BrT9x9oUAkiXl8d4CMdlG00k43GWIJdkrOue5BD7lT5JJ7gwhHWfjjEE
nNowqePa8+A2S3kSKI/4WAkjAesojQtWf5C5QFSEkdN7FF0S2MOtcgBUf+iCSyXuO/3CT5Xs
0+L0xUzQVjdM8YvpIXhj0RKVHqNKmpH4F/qoSxB0He9Y2cjeaT2wZkWqwXQSrFThRUC1BM8a
9sjLkHqPMWB7frVv8NU9H55vEmHkhueQDy/Pr8+f3xaHXz+uL78dF19EfmvZLWFMJ/AO6Vx9
WseXoKVmI2/EQZzMa4hx45nBGGPl4vVteMWi5kXwHx6uT9eX52/XN01F82FGLjeuQx9XDFh9
kxmD1Kul/oeUMRRTMAxpIx6evwMrZr3b3ZLS+ADh7hz54PRmkXKlI/rPx98+Pb5cH3D9/R9n
T7LcuJLjfb7C8U7dEfOmuEmiDu9AkZTEMinSTEpW1YXhtvWqHF22PF6iX/XXD5DJJZFEutxz
sUUAuW9IJBZa/FBGs/D1q0IH6NhsrZIKjKw22wEfK1e1++bp5hbIHjFouqV3xi5wKaMCkIUl
atKv8+2c2WLFhlge4ufj6/fTyz0pdRnql0/5HegDYc1DWemdXv91fv6n7JSf/z49//dF9vB0
upMVi9lWzpY+iZT1wRy6Gf0KMxxSnp6//byQMxDnfRbTSZYuwllgmby2DJRQ8vRy/oFvqh+Y
yR7cXlx+ifwqm8HcnFm72vuD2gPaiW+fbvbfPZ/v77SelaE16BJSJMam0q7KqNZeHDeiXVeb
aFUSc75dBoedqCLyQo8+FNechLqQ+ygqB+7Sne7/vei2bAMiHYkZsCQryB1aAo1F2KGqLPCH
UE2bm5d/nl6JCV/vf4tiNLYKuTf0l7nWPUpmaZ5Ijf1UM1zYFqi7g9u0oJb46GWtw+BDR1OX
eU79TGDSqi4xzjx/ZF2joxEWI6oiAx5OZP58wXOgxToBAoydI4l5GvT2PEZsnVr6jydRmSfr
jNWaEvt6HcXpkI/uBiICtivW39vgA61x87JUL40GIXRHClNKY/K6AL40kwE2CH9tyGVAb9Aa
1i4S1ohENvMD9yNUs49QudyNnJIEAdsWwOjOCjVMnMTpwuF7AHFLz9YDsfAcx4E73S9r7hWV
cDmZGGKb63zuBHzl8jLeAmepuynTsEoizKOuC0utDzEnUdAIVnBQhvRurGHX2TFN2qLIyl+1
egX7C+OOIXv8dnq8v70Q55gJ0wj7Z4oxLOLNVENFx6lbOrkAGlhvxnt1Nuks698ks1xUdbKj
67DyDkoT+my1m3iPvcaed2yXDWv/Gvirna7/Gf843/4TiN+ebzk9WlSxUfd1AoGddJVOO7vX
yJlUGI4v3m61JyipmZw05kbbVDhdmnmw4vkururDKRZl+aokE3PYfIstr3zTSyIgHXesqhxb
erXOYN7tNdcy6hREngbGQCIvqptvJ6loQ6yd+mPxF6RaX8qSpHBmPTWgr08P59fT0/P5lhEJ
pejnqHugncBg49LP2H5EDtW+rYdH3YGZmpSiSn96ePnGFFwVgtybJEAGWuMEYhKpazIoiJSh
bDq3WxYMAqYFqQszzxaSGmuHPXoDvc5qRqWnjC/+Jn6+vJ4eLsrHi/j7/dPfUYXk9v5PGL/E
uO49wLVErUIilu+5QQat0qFOyp012RSr3D0/n2/ubs8PtnQsXl0ZjtWn9fPp9HJ7A5Pu6vyc
Xdky+RWpUin7n+Joy2CCk8irt5sfUDVr3Vm8Pl647UwG63j/4/7xLyPPkeVESd4h3utTm0sx
KA59aOgHhliyd+s6vRoEberzYnMGwsczvb10SGD7Dn34i3KnVIA40ZhGXaU17mcRkXITAjRp
F8Dv8WjURIJbhTV1JER2SM1GTKwCxva26SHdaZtjemziUd0w/esVLl6965pJNooYLnNx+znS
TRY6xFpEwGE6EzjVI++AwI66wWyx4BC+P5txcFPpocNMn9INfLObGcKCDlM34XLh8zLtjkQU
sxmrYd3he1NtJndAwdRHUxv2zQXun2Wt2YIrvgSuf7qmc6Z3HXx0ts8crNUdvWhgIgencPNl
QMOiPUe5Q3sVo7BLvAe2SrKsgTttTeAmuRqqn0S3bUwzIZWlClw9A4nmGQyJRO+KjeNYFJ7N
fKxlvxA+KPvj7zM9ltNSipJj7i+IsEgCOgGaAYSb+whcFRGxGYPvwJl8T9IgjGS+KmKY91LV
MeehZh4ahuSURJ6+sJPIJzFkiqhO9EuXAiwNgP6gpz1+qeJ8otN5eRQJ16mXx/gzhoYkih5F
7HushU1RRItA30o6QNfqMYMOjGoDfC5z3XQEAGGgvxYDYDmbuYYNfgc1AdprciEjcJMLKYDm
HutQSsSRT8JGi+YyVMGoNSHYZbiKLGFY/x+i6GGSwrm3KSL00qdrekbJwlm69YxAXC+g30uy
BhbenLyOI2RpW12A4rZeiQhJrsGCiKoXc2fy3WZKMhPVUZ7rC4KgjdW5WMznxnfYuhQSTuTQ
S046IBG+QRqGvF4JoJasJgwigiWpwFK3gImSZaAHmIctSj6+RtR3RXSsPOeIUK4MQIZhl6SD
xTHeh10DiA/gFJRES9xDNhWF5juP0qW7Q5qXFTqIa/r4bqMsMAsDVlVieyRRIfqrEMk5b2Iv
WLgGgJhZIUAPjKsAhLdA/sSxKP0gznUtRn8KyRkYIsaj0aEQ5LPKhyiuI5HtirgCPoLclxEU
eLzqC+KWrJRKSsjRzZ6yfKadt4v2C6JTopgrczzlve4QKRv3gpo3SZwUyWb89BoJDtNMJRzA
upLXDhUZjfkoEsmIFmUymMYNm2AB04oQNzJLRwX3HSraQy3qXz06EI7Hb1CKwvVcnxvuDuuE
wiWW4V2iUCiNIzO3uSvmHh8nDPCQlx5UTsEWS93kUMFCX5eddrB5GJowZYNIoQUw4MdJDzZ5
HMwCbUYe1nPXmD6HDJg2+WJC4d2N7tjvQv/ps+Ua49NfpCRAPfJzdQrHYp4yeWopuvv+0w+4
DBrnWujr2/u2iINOPjyIAYZUiiv8fnqQTpOUgo+eV5PDMqm2E3/QCpF+LSeYVZHOQ8f8Nlky
CSOnUhyLkEZUzqIr5D1YriHxnYlnRQXlX4uwllmNQd/EpqLSTVEJls86fA2XR73bJt2kFKPu
73rFKHzLi88PD+fHsQc1llDdA6i82ECP7P3odprNX58uheiyEF0vK7mRqPp0Zp3kXUJUQypV
KeMaMxL0TpJ7qcQkY5KsMSrD48jQG7huXLvXa7WCYDHdqCXAs3IzZ04YtJmv87b4HdLvwCNz
DSFsGEiJIJzJbLb00OhSd5rXQQ2AXxtFzBw+5ieg5l5QW1h1xIaEX8Nvk6ebzZdz8woA0MWM
V1KVKP5tDFFzntcDBO3mxcIxG2nlE33H4BPDkI/bXJUYdYxG7BRB4PGdB2yOO7f4OkEWaO5z
3HYx93zqogB4k5lrZY1moeW4BJYEH3KsuKXHFQ8nD7TQCT1qKq/As5nO6CnYgtxNO9icXpTU
0ZVEvM7Ku0tp0CO6e3t46ONc6fLQCe6/VMDE0/++nR5vfw46If9Gw/IkEZ+qPO+l0urFRD45
3Lyenz8l9y+vz/f/eEN1GSqWWM48n638u1kolfTvNy+n33MgO91d5Ofz08XfoAp/v/hzqOKL
VkVa7Br4cu4IkJgFiW/wnxYzBk18t6fIZvft5/P55fb8dIK6mAeylM04dDNDEDFn6UFzE+TR
XfFYC29p3PMAFrCdsSo27pwc7PhtHuwSRram9TESHtwrdLoRRtNrcJKHdkxuvtSlIVcpqr3v
zGxHf3e6qHSo8zE5eCQKDS7eQaOjAhPdbHzle3uyxqYjqHiF082P1+8am9VDn18vauXx5/H+
lQ74Og0CPTykAgTGzuU779zcEMk7RWKL1pB6bVVd3x7u7+5ff2ozc5w7hee7bJjmbaNvXlu8
P9A7H4A8x9Skmo79dl9kieGZoKdqhKd7V1HfdHZ1MDqzmr2eTGQLQ3aFEDNcaN9BZmd0ygOw
p6KrjYfTzcvb8+nhBCz7G3TuZBkHjrH2JJANi9nhFjNzRQeU186MJZqNS3Qop4PyzMb6WIpw
QSvWwywLbECTjr0sjnMi1Di0WVwEsAMZugUj3LaAdRLKOAIGFv9cLn7ypqAjaOt1lNEFVBjf
tLko5ok4smP/zijr2wcOErXL1qHjq4LySSKjb3IrK/kMa8BnBR9RskeZDp1JuW9bTYCCTYtT
34+qRCx9XRYrIcs5zVosfI+tyGrrLvQbO37rkzMuIKFuRIkAyoIBxGflg4CY61F/8Xs+Ixz8
pvKiymEftRQKWu04xHIguxJz2A+inFW/7m8xIocz0g3JnkBwHicnkSiX6mXpzwNsmRpBVZea
/POziFzP1Y2iqtqh3qSamrqHOsAMCPS4ZnAQwMFBV18H4x4ldmWEppw6dVk1MD+4sa+getJl
GNlKXdf36XegjaFoLn3fJaL/dn/IhDdjQHQjH8FkO2hi4QfUoZkEsSbf/Rg2MFDEgl0CQgOw
0N+8ABDMqHnyXszc0ONezg/xLje7XcFYWfAhLfK5QyUUCrZghRT53KWS+q8wSt7kaa/btegO
o6wabr49nl7V+wnDb16Gy4V+5cNv/RC6dJZLEtJYvbYV0WbHAtm3OYkgQwkQ37U8rSF12pRF
irHbdK/RRRH7M09XU+w2cpk/z9z1dXoPzfB+/ezZFvEsDHwrwpi3BpI0uUfWBdok2uDmcWZg
Jydab5DCjbIa/9H9JTlzpGTJDG3Q56an6Zie2x/3j5NZxG192S7Os90wfO9vg+o9vK3LRoY5
1XlttkhZZu/X6+J3VK1/vIPL7uPJbNu2VjqFncjNygdId7j1vmo4So2uQQ9ceVlW/Bu9dGTC
yff4ynb8wCPw59Lm++bx29sP+P10frmXViaTlSoPs6CtSqHn/pEsyN3z6fwKnMz9qDQwsBkz
T98DE+GG+rUERSTBVKAShBapicRZpC1xFTguL5tCnOuzD0CAMTZlSeywriaaKnfczl7fuLsZ
PcD2DoyUzs7nRbV0Hf4qSJMoUcXz6QV5Rma7XVXO3CmI8uKqqDzWG0eSb+FY0Pa/pBK+Zc80
IzxXVBaXxZVr3iD7TqxyV3+cUd90X+tgdAevcp8mFDP69Ce/jYwUzLDGQqjPz5Vum5bN41+z
ZoHDcZTbynPmWslfqwiY0fkEQOvXA/sK9kIhc0BHdv4RDXum4yz8pT+jC9Uk7qbK+a/7B7xj
4hK+u39R9l7T1Y/sJmUAsySqMS5l2h50rY6VazDdleHta1RmXaPxGctRi3rtaFyBOC7VxBuP
pSPUhr+BYFp+cSNbZJryj8h85ufO0WqS94ue+pht17DZeWJJJGVo6UXX9y/yUgfR6eEJBZZ0
rdP7hxNhNJqCN9BA+fUytLykZ0UrI/uUcbmvdKtp3QY/LTQbnCI/Lp25G5gQOiGaAu5R7Fst
IjQtjAYONX3KyW9PZ8iio++Gszk575g+Ga4RupNY+FCnJpmsAETT+nXDO85HfFZw3uskRnU4
LWMw09Bg0iOwT2HSNS41NZJVxIf5qQVJfXVx+/3+aRruFjBoYaBNLmhNpu+BUYLmAMr6e0yk
LLniiphD65YZhk34yCeZVRkyraL4khq0dQFnsqqMGz0YyBBXFvbZtKG2bv1u8QtM1GwXSxO4
quNCNKvuxdvEKo8IGxKKSWGarPNAO+n4avvlQrz940VqTY+93sUZo3GKNCD2bgYHqI6WQVg2
BU2ziov2stxFMpYTRWE2nfePtinrmugk68jEmkxkwGtGFlyU62GwEYUrISuOYXGF1aG4IjtC
5zHNQmQ/byapqmPUeuGukPGmLChsuVFFqTE1rUJUVdtyl7ZFUszn+p0GsWWc5iW++tYJ9QmC
SDlbLCGhEC+1alRcLDOphsp4f4VIJQMS2Ix36SQaykW1diOUbhHzFlw1E2xyaq67S+qSRkLp
QO0q28EuAAvRZn9OzXoTPVi9dLZofA47KQWiWpJIIqRW4v3ri9fnm1vJhpgbF2x0ugSmQBFV
U+JDeBZzCHQoSZ2pAko6R+UYCsCJcl/Hg29bM2WHHdwh8+yg3DGaLdtpTOP64tH4Wd+RpUFW
hf1vqL9OUEYgKsyoLTb1QChMZnag6LSHLGL4ngpuv4H5oNbjiijeHkuPwa7qLNlMq42RZL+m
E2xXkwqv24qXqI386nSTUX24cq1jbC1I1vmk7QBrozXnSmQt9HaIrA9O3u5ILA3EFJFoOgfU
pIARtd3zK1MjiUSVppwAAmkECbkrIau0sxYnmZUxG3UDo0tATx5H8b4eaITxmYZBTKJks1h6
nHS+wwo30PXaEEoNURCClq86y8UVPGxqRVtW1CF0VloM0vOsMFyVkIVXw+9dGvMrE+aVJa5Q
Qdy+SIt/uXsnxLJOeReY+ODuL9vUuEfpJtyjr2W5hZN+PkR4NYJr0Vqg2jTvshdwWVnobrnS
Y+ORkFYdoD1GTUN0YHoERkmCQYu5EGM9jUjjfa08fY8Y3yzHJ9kZZfl6PnxRgZlh8F6GwUcy
NHwof14l5A6B39bIxBhpbBXD5kU2+TpF98kY24t7GvksEaQIWxcTCq4dhMDuuFgmR7kjhrvh
6nTs66R9dya57YE8QyDmal823Mo+GkOhgeuGfpe7HJ1pibjer8zsOxw6V8i4GY0011G9M9PZ
BmmzFp7R4x0ILf4v0YlIknM+SMt4SGlA2tLTrbkG8GAQ2Mb5XpBAfgMNDsQkS+WoG3bzy7wk
MjMdbYmgtmqsc22X5dPGrz0b+VdgcY2ZwA9pesSpQZeigqjgSLAT63lkedp3NdkJgUdE3fAv
hIJfZnBxqL9UneScAwNnsBE2XKamlPwmNIeU7lkDyNwWRsRqn8GBuEOTm12EUXdJqcpv2whJ
TECmAH0IkXFUoqnLtw4l19uYg/xENzTSblueV2tigyoDxXVkuFCIczIFNlqngA0wVXqVrtYF
LH9ORK0wnpFB3OgX7X1TrgXdrxXMnI7QE7apXUKf59GXlrHXj29uv+ueFNei34cpwFxvPXgL
m2G5qSNyNvdI+36v8OXqM7AHbZ7pB75EyYC7HMzscg1DqzI4xZLtU21Nfq/L4lNySCQvMLIC
/ZwS5RKupaSvP5d5pnsq+gpEJI5lsu4Hoi+RL0U9G5Ti0zpqPqVH/Ltr+HoAjtShEJDOGO6D
IuI6N2qGGCsx8MkVBnsM/IV+pFsT7xpj45IAo88lrL7WG/1uw5Qc5uX0dne++JNrsHT/YMj1
EHRpUfeXSJT36CtFArGxwBruMmIro9xLbLM8qVNt47tM653eVuNK3BQVrZME/ILFUDSSBeRY
2xRdNMU1XFeJvyP8N67oXugw7TFt08+E8o2p3E+yY5k212V9qVNpY2iOM+7MnvHtm98mcyih
vBY2osQ1dRzbM3Zl2bQ7s/Rx5yF5JJmIVnCs7ZOq56W4tq5FQrJLVO31rJKuAZbkikPTAZVZ
x0Qdy7CVGmFhJE7EIlMoWwlruP7haAwZ0OIH3rTNo5VuugmbGpp0wsFZ6lGhoCrmp9kIbK/m
FUZDmIYnYr+rq9j8bjc0omIHtW3sHRrD4sjILdocT6utscQ7kBx1TsVLoflbSY+kPcblkulj
iF/qJKNqZgiO8ry8Bj5AZpkyPj8p+b6KIYUdP9kCKNp+y1DoD5QgihWsjtq4YOsUzJKScFyA
XJoyiYwxiqwsse5MGT76I+eP3+5fzmE4W/7u/qaj+5OohZOIJhwwCztG1zAimJA6vDBw3Eul
QTJ7JznnLZuSzN8pnbWYMUg8W7N0/TMDE1gx1k7Srf8MzNKCWfq2NMQK00hja4+y5bZ0FBuj
D0mA1cKZ1IbWtK5negGwUNnGIhJxlpnZ9+XaEvV4o7U92Lfl96t2zvj85jx4YSuGD1RAGsY9
IBOCgC/TNap4WWZhW5sVkVBOnovIIoph/4E7K80JwXGKAXg5OFzO9jQ2+4Cry6jJIk7gPJB8
qbM8p7H8etwmSnPLo9BAAtc5znt0j8+g2ipWm4nY7bNmCpaNz7j2wy34MhNbs577Zs0pFCe5
Jo6Gj4FLH3VQdxmuAU4/rWyvr3Rek8hGlbno6fbtGbUnJm7ZL1M9XBh+tXV6tU9RHmseN8Cz
CLiWwQAiIfr3tghfupx4nrpGIVAyIeivM0pA0RGQmrXJti2hDlJXkDxrd2xDUqRCviE3dRY3
U4IpZM1l07HaDIYE87Mka4/rumDQVdRsR7D0l7qN6iTdpSp6X1xWXyTbEptRcydk3D0RWEKU
oKh3NMLkoYwzlmkxLPk2zSuLPuRQVQHLaLfn3BWOJEVEY45TDD5C7TZ7Xu3FII2qKt0lSnRk
0dXv6JuyKL+UTN8qBCqkSM88VQPTqKm//OE5Qfgu8T7Jmhali67jBTbKssgaTYqZl6jCYa/F
wHQOQrG0aYi4aUgBTY9gVGq2I3skamZs3+/IgdTKyg+cNVS+ynZsgR0O+g5mE+umaiD9EunX
gXFAozUqcGTc8pA3mvJ6h3Y3luJHgjaN6pyb51KQKqnwvp/mraxquyt3ZNJbyFAuuLG+F1gS
SSwsQDiYcv7JZMhWr8IAHIWi7yVVc1ETiRIPaBgCJI0EzqoqrtssOcKM1bHYZ/U+p6oWiEAV
sTxqUrbFSLDbsDQahchGElqnXjI1YH+7f7j5/eX+228cFc7jVmwj16yjSeDN+FiAHO3M5T2h
TGivqw+TioJjqUyyP357+X7jkpZe/19lx7bcNq57P1/h6dM5M9lOmqTd7kMfKIm2tdatlJTb
i8Z13MTT+DK2M5vs1x+AFCVeIG/2KTEAkRQFAiABEAIDMoscrJA7e6YEZxGJgKUrWFxyGtrg
ne14+1NKMwMr79KUo7pz1CUSgRavuVpJsh1N0h8dXtNhdvotbUH9PlIlBCkLx6WkhJ9HFJEF
bVCEfMCc8YftX5uzt/l6fva8nT/sVpuzw/znEihXD2dYe/QRjZ6z+W4336+3+7PD8nm1eXk9
O6zni19nx+16+7Y9+7H7+UFZSbPlfrN8Hj3N9w9LGazbW0vKxb+ERt5Gq80KcwNXf8/bFHe9
4w5lEB0e6DfXDFMhQG+0JaONUwuK6p4LK78RQKC3QRy5gs1Aga1wsiC1Q4pdDNNJXxEIQKOg
90lijDUZpNWBCfR0afTwbHd3kbhWazeHaCLihClPwP5td9yOFtv9crTdj56Wzzt5u4FF3Ixj
0/3WAlkyYdY1NSb4wofDKiaBPmk5C+NiatoJDsJ/RAoVCuiTCtOc6GEkYXeY4w18cCRsaPCz
ovCpZ0Xht4ClInxSr0qRDbfP8RSqLgfMVfvR7mh5qPxTSz4Zf7r4mtaJN4SsTmig/xbyD8EI
dTXlWXdFT/Hy43m1+O3X8m20kBz6uJ/vnt48xhQl85qKfEbgYUjASEIREU2WKTW7IGav+cXn
z3bNVRXQ+HJ8wtyWxfy4fBjxjXwJzCz6a3V8GrHDYbtYSVQ0P869twrD1BvChICFU9hlsotz
0I13bUaqu7wmMZaR9F+If4+vibefMhBS1/orBPJqkfX2wfSL6r6DkJqSMRWWqpGVz7xh5QsW
boZCtLBE3BDd5WM6kq1FFzDI4eHcEl2Dlr8Rdhyrnkqsf1XVVFiHHjZezqynbjo/PA3NXMp8
bpxSwFs1yTbwWlHq5Kvl4ej3IMLLC/LzIOLEjNySYjRI2IxfBER7CnNCYkCH1afzKB77/Ex2
ZXCy9zFblIz2H+4xja68VtPIXxppDMwuw8CpiRJp9OlioD5KT0HeR9HjLz5/8boF8KV51a9e
j8qy94BUE8pwp8CXPjAlYBiWEeS+Eqwmwrq8tQVL47+zF1a7JyshqJM0JbVoeOncBe/gszqI
yQdFSBaL0WyX34xjklMVwvPpaXZkKU+S2BfwIVMVmuiHysrnH4R+IUYe8RPMOdYBQ+5Tsym7
Z1S8rf5mLCkZwTdaA1BrXaK81eKSlU6cr48XBezfT5KktONbsxWnL1zX6Jvcra2kOG273mHy
oL1N0JM8tjfUWkvc5x7s65XP0sn9FTFjAJ3SJ+AtwX1ZRd44xXzzsF2Pspf1j+Ve38NFDZpl
ZdyEBWV+RiKY6IKOBIZUDgpDCVGJoZQtIjzgnzFug/DMLy/uPCxakA1l5msEPYQOa5jylHEq
aQQZo+dSkfuHDsszacDmASZIEJwhzybibOxufJ5XP/Zz2Gjtty/H1YbQ1ngXDeO+pSDhIKVI
RKsXdRrVKRoS167dU48rEhrV2aWnW+jISHQ08NKdHhZlfM+/XZwiOdX9oNHav90JyxaJOv3o
ctb0huAn+7inqe4KMwukRxZ1kLQ0ZR3YZLefz/9oQo7ugjjEQHkVJd8TFLOw/IrxkteIxTYo
it9hrZclOmRpLG7D8OEejsegPGoKriJbMXJUjiDui3mEeOvST7njOIx+wl7+sHrcqGTSxdNy
8Wu1eTQylmQUlOlPsivO+vjy24cPDpbfVoKZ0+E971E0kmeuzv/40lFy+Cdi4u4fBwMLJpxh
hOQ7KORyl9GUMOo+IPEdU9Tmpw9JBQz7ZaIRLJs4qXlsKNg4iMHgwkrCxvzo/MqMV01dxYlt
A+UiGnDFAmelHHbWaQDtUQFlkiXMfNEs75M5w7iJcxmDb+Vv2HgS5YDBrIdNKigOC/Tpi03h
W/7QUFU39lOXF87PrhC1vbIlBlYmD+6GDHODZMgikSRM3NAn9gofxG7XX2hjNHSsiJCKkwFJ
1e3HekpjS+7uupRjrRedfRoIy6I8NSaI6A2sHVlp1L7UAqGYwObC71GMgla0jal7Jf4dKNhW
RMsIpVoGW4qkviKpb+8R7P5ubs27fVuYTDUtfNrYrg2vgMz0JvewagoLyENgOVe/3SD804PZ
Bef0GjH9z3rph+Z3Lcs8jGGBXnMYhGCGeMdDbVhiZm6qAvmLFeFWPCGWkreyIzKw6CUUnpMe
bFPP6Wz1qPO4wNcIrKJAkfTVhAkTiJxyO1u7a0HWpEfacXcZ0UA/WNaUaAlRstC6NXqEZnmm
ybGISmFj0dxz4rAtcFOammGSqA9jEH83A0qT3DrYwN+n1leWtDlt7sev8jQOTRZMRN04GQRh
ct9UzLzxUHxHO8gYT1rE1p2IUZxav+HHODImETOiMdG0rITFT8BjemjXUZn7A56gYz3l+Tgy
GXGcw5R7UbIS+vXVlO8ShH4YmCtuxYtgNnhuvFEJ4tT6hhhhkk1sKd9d9eLoXXfU0uoup0kU
X/qv1CLFIDI5hQzTIjLdFiau7pC2r0tbVRK62682x1/qjpX18mB6wEz9nVUzWZaTjOaXWAx2
tc75Vdo3xlokYEgknVPi90GK7zXmanRRGdrc9FroKKK7jAEDewvLBPtlBe7SAN2yDRcC6Bw/
eftNB6el2+Wvnpe/HVfr1gg7SNKFgu+pSWz3emmNZzZTHlIxaWMB41FZfTI8xQjpEXEBbIJ5
/2SywJRjiEqJoSgVM5dmK1yA2zEDLI3LlFWmfHcxsndMPrwzWfzdL/wfs25py3HR8sfLoyyI
Hm8Ox/0LXq1qGKcpm6jSruYFKQawczqqGfx2/vqpnxiTTl12QjqiVd7gN8vvrGBt3LgTqe0S
oatJ0qWY9nyiHfTeUp+HSfUJ0zubRIZg7DROHZQsAxsviyvYazTqE/aRgIglmoV9Fzw1C/Pr
JhD5jFv36b3rK7gvouJgvOOi1rHbtWHk/uAKhR0T1uOwbxSQmCKPyzwbupGqTOqg7XjA+ywp
ZMT/0Ky24wYzJOFs5jK+Kl8ondiOomkXBnrLMb9uDF/PEF7KZT9jOL/+eYDCYuwf6oQs779b
FLU2ousT76dO+UDw5yjf7g5nI7x8/mWnFtR0vnm0ZS+TdY1hSeakA8HCYy58DSvERkqNWVcA
NvLrT3WvAkhhmT+84No2v3rvqSfQ9tRjtzPOC7XnVTtU9Mz1jPjfw261QW8djGL9cly+LuGf
5XHx8ePH/xmbVxmkhU1OpAZ29fwNrMq64re0bv4XPfaqHniiElYyqZSKGFRRZ3j2DLaq2tfo
N1MT+ksttYf5cT7CNbbAXboh6tTE2PmSivmbiFUMVRXeTOlcjHmybXWaG9b0V7IRFv+P60xJ
fvmmwlkdHXYiWDGlabSaHTtzpRqQwCaV90SAsYfHAw4JZgDilEpKEBSZ6dqUFGH7oGqlR6q2
w7YAud5oIne4ZT0NYCuhManNbsnmqj4LVvZCSyWG9XX9bNz1CtYRISTVeMFuht3ppPRZWEVs
KUPK2pynkczYDsA2pQfSlmFvXMO/pzBSed304pZJnFGbxmK1PBxx3aBsCLHq8PzRunh1VoPg
o44ttV5D3eQJThCXqLLUrJi74pa6bx7JWsMJ999MoDahPUOSFs0fUae4BaM1uqICYwH2iUyd
652/4nXOncwUwGl4XIUzipxhOziSWWRem6Q3UKbs0d8cj0On/DaqU8szL+HtbkKFZg9Ezbd0
ZVjQwavqvBUoKrLOvERLlho7g3K3NhJY12YMrwTd6v2+3aXWlsODEng0VOFXGxpXe3ZkPxZH
1HUa4zjD67Ng2DwLpykzw/TlY+NYpCCeuQN284vVW0aYvOkAwUYIGcyV20AlD0ftYzX9QEzz
vRoQRsqh9WMZnPCQv0jtwDh6tXnRc2r/9n+WR2f5KwQCAA==

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--Dxnq1zWXvFF0Q93v--
