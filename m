Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 272131F8516
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jun 2020 22:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5362288DC2;
	Sat, 13 Jun 2020 20:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzPZYp+PbI8g; Sat, 13 Jun 2020 20:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F14988D7C;
	Sat, 13 Jun 2020 20:22:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A34F1BF5A0
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 20:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 760F020379
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 20:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fc3aE8PFhUMv for <devel@linuxdriverproject.org>;
 Sat, 13 Jun 2020 20:22:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 0866A20377
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 20:22:48 +0000 (UTC)
IronPort-SDR: KoTmcwVkYNOzMzs+t9eYOpqjyUu763EmRYkBjyinp+gfsvksWsd406J1MdDzNXKwr3davQArjh
 Ha/FjzpZSCyg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2020 13:22:48 -0700
IronPort-SDR: b+BtYdMA078O6noGSimBZL5n7n2gXg5ITj0jZuJtln1DBatwRo5nAEvrkzkXf77eyqiz6s0Zm1
 8QRkjnvYVBsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,508,1583222400"; 
 d="gz'50?scan'50,208,50";a="261224619"
Received: from lkp-server02.sh.intel.com (HELO de5642daf266) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 13 Jun 2020 13:22:44 -0700
Received: from kbuild by de5642daf266 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jkCfr-0000RY-PO; Sat, 13 Jun 2020 20:22:43 +0000
Date: Sun, 14 Jun 2020 04:22:39 +0800
From: kernel test robot <lkp@intel.com>
To: Dio Putra <dioput12@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: android: ashmem.c: Cleanup
Message-ID: <202006140445.eiberdRQ%lkp@intel.com>
References: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, kbuild-all@lists.01.org,
 maco@android.com, christian@brauner.io
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Dio,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[cannot apply to aa5af974127d317071d6225a0f3678c5f520e7ce]

url:    https://github.com/0day-ci/linux/commits/Dio-Putra/staging-android-ashmem-c-Cleanup/20200614-013821
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git af7b4801030c07637840191c69eb666917e4135d
config: powerpc-randconfig-r016-20200614 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

^
arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insw'
#define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from drivers/staging/android/ashmem.c:26:
In file included from include/linux/shmem_fs.h:6:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:26:
In file included from include/linux/kernel_stat.h:9:
In file included from include/linux/interrupt.h:11:
In file included from include/linux/hardirq.h:10:
In file included from arch/powerpc/include/asm/hardirq.h:6:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:118:1: note: expanded from here
__do_insl
^
arch/powerpc/include/asm/io.h:544:56: note: expanded from macro '__do_insl'
#define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from drivers/staging/android/ashmem.c:26:
In file included from include/linux/shmem_fs.h:6:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:26:
In file included from include/linux/kernel_stat.h:9:
In file included from include/linux/interrupt.h:11:
In file included from include/linux/hardirq.h:10:
In file included from arch/powerpc/include/asm/hardirq.h:6:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:120:1: note: expanded from here
__do_outsb
^
arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsb'
#define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from drivers/staging/android/ashmem.c:26:
In file included from include/linux/shmem_fs.h:6:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:26:
In file included from include/linux/kernel_stat.h:9:
In file included from include/linux/interrupt.h:11:
In file included from include/linux/hardirq.h:10:
In file included from arch/powerpc/include/asm/hardirq.h:6:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:122:1: note: expanded from here
__do_outsw
^
arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsw'
#define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from drivers/staging/android/ashmem.c:26:
In file included from include/linux/shmem_fs.h:6:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:26:
In file included from include/linux/kernel_stat.h:9:
In file included from include/linux/interrupt.h:11:
In file included from include/linux/hardirq.h:10:
In file included from arch/powerpc/include/asm/hardirq.h:6:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:124:1: note: expanded from here
__do_outsl
^
arch/powerpc/include/asm/io.h:547:58: note: expanded from macro '__do_outsl'
#define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
>> drivers/staging/android/ashmem.c:418:16: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
vmfile_fops = *vmfile->f_op;
~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:38: note: variable 'vmfile_fops' declared const here
static const struct file_operations vmfile_fops;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
drivers/staging/android/ashmem.c:419:21: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
vmfile_fops.mmap = ashmem_vmfile_mmap;
~~~~~~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:38: note: variable 'vmfile_fops' declared const here
static const struct file_operations vmfile_fops;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
drivers/staging/android/ashmem.c:420:34: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
vmfile_fops.get_unmapped_area =
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:38: note: variable 'vmfile_fops' declared const here
static const struct file_operations vmfile_fops;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
6 warnings and 3 errors generated.

vim +418 drivers/staging/android/ashmem.c

6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  367  
11980c2ac4ccfa Robert Love        2011-12-20  368  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love        2011-12-20  369  {
7fe32ab69ec805 Dio Putra          2020-06-14  370  	static const struct file_operations vmfile_fops;
11980c2ac4ccfa Robert Love        2011-12-20  371  	struct ashmem_area *asma = file->private_data;
11980c2ac4ccfa Robert Love        2011-12-20  372  	int ret = 0;
11980c2ac4ccfa Robert Love        2011-12-20  373  
11980c2ac4ccfa Robert Love        2011-12-20  374  	mutex_lock(&ashmem_mutex);
11980c2ac4ccfa Robert Love        2011-12-20  375  
11980c2ac4ccfa Robert Love        2011-12-20  376  	/* user needs to SET_SIZE before mapping */
59848d6aded59a Alistair Strachan  2018-06-19  377  	if (!asma->size) {
11980c2ac4ccfa Robert Love        2011-12-20  378  		ret = -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  379  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  380  	}
11980c2ac4ccfa Robert Love        2011-12-20  381  
8632c614565d0c Alistair Strachan  2018-06-19  382  	/* requested mapping size larger than object size */
8632c614565d0c Alistair Strachan  2018-06-19  383  	if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfa Robert Love        2011-12-20  384  		ret = -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  385  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  386  	}
11980c2ac4ccfa Robert Love        2011-12-20  387  
11980c2ac4ccfa Robert Love        2011-12-20  388  	/* requested protection bits must match our allowed protection mask */
59848d6aded59a Alistair Strachan  2018-06-19  389  	if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a Alistair Strachan  2018-06-19  390  	    calc_vm_prot_bits(PROT_MASK, 0)) {
11980c2ac4ccfa Robert Love        2011-12-20  391  		ret = -EPERM;
11980c2ac4ccfa Robert Love        2011-12-20  392  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  393  	}
56f76fc68492af Arve Hjønnevåg     2011-12-20  394  	vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfa Robert Love        2011-12-20  395  
11980c2ac4ccfa Robert Love        2011-12-20  396  	if (!asma->file) {
11980c2ac4ccfa Robert Love        2011-12-20  397  		char *name = ASHMEM_NAME_DEF;
11980c2ac4ccfa Robert Love        2011-12-20  398  		struct file *vmfile;
11980c2ac4ccfa Robert Love        2011-12-20  399  
11980c2ac4ccfa Robert Love        2011-12-20  400  		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
11980c2ac4ccfa Robert Love        2011-12-20  401  			name = asma->name;
11980c2ac4ccfa Robert Love        2011-12-20  402  
11980c2ac4ccfa Robert Love        2011-12-20  403  		/* ... and allocate the backing shmem file */
11980c2ac4ccfa Robert Love        2011-12-20  404  		vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40 Viresh Kumar       2015-07-31  405  		if (IS_ERR(vmfile)) {
11980c2ac4ccfa Robert Love        2011-12-20  406  			ret = PTR_ERR(vmfile);
11980c2ac4ccfa Robert Love        2011-12-20  407  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  408  		}
97fbfef6bd5978 Shuxiao Zhang      2017-04-06  409  		vmfile->f_mode |= FMODE_LSEEK;
11980c2ac4ccfa Robert Love        2011-12-20  410  		asma->file = vmfile;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  411  		/*
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  412  		 * override mmap operation of the vmfile so that it can't be
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  413  		 * remapped which would lead to creation of a new vma with no
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  414  		 * asma permission checks. Have to override get_unmapped_area
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  415  		 * as well to prevent VM_BUG_ON check for f_ops modification.
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  416  		 */
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  417  		if (!vmfile_fops.mmap) {
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @418  			vmfile_fops = *vmfile->f_op;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  419  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  420  			vmfile_fops.get_unmapped_area =
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  421  					ashmem_vmfile_get_unmapped_area;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  422  		}
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  423  		vmfile->f_op = &vmfile_fops;
11980c2ac4ccfa Robert Love        2011-12-20  424  	}
11980c2ac4ccfa Robert Love        2011-12-20  425  	get_file(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  426  
11980c2ac4ccfa Robert Love        2011-12-20  427  	/*
11980c2ac4ccfa Robert Love        2011-12-20  428  	 * XXX - Reworked to use shmem_zero_setup() instead of
11980c2ac4ccfa Robert Love        2011-12-20  429  	 * shmem_set_file while we're in staging. -jstultz
11980c2ac4ccfa Robert Love        2011-12-20  430  	 */
11980c2ac4ccfa Robert Love        2011-12-20  431  	if (vma->vm_flags & VM_SHARED) {
11980c2ac4ccfa Robert Love        2011-12-20  432  		ret = shmem_zero_setup(vma);
11980c2ac4ccfa Robert Love        2011-12-20  433  		if (ret) {
11980c2ac4ccfa Robert Love        2011-12-20  434  			fput(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  435  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  436  		}
44960f2a7b63e2 John Stultz        2018-07-31  437  	} else {
44960f2a7b63e2 John Stultz        2018-07-31  438  		vma_set_anonymous(vma);
11980c2ac4ccfa Robert Love        2011-12-20  439  	}
11980c2ac4ccfa Robert Love        2011-12-20  440  
11980c2ac4ccfa Robert Love        2011-12-20  441  	if (vma->vm_file)
11980c2ac4ccfa Robert Love        2011-12-20  442  		fput(vma->vm_file);
11980c2ac4ccfa Robert Love        2011-12-20  443  	vma->vm_file = asma->file;
11980c2ac4ccfa Robert Love        2011-12-20  444  
11980c2ac4ccfa Robert Love        2011-12-20  445  out:
11980c2ac4ccfa Robert Love        2011-12-20  446  	mutex_unlock(&ashmem_mutex);
11980c2ac4ccfa Robert Love        2011-12-20  447  	return ret;
11980c2ac4ccfa Robert Love        2011-12-20  448  }
11980c2ac4ccfa Robert Love        2011-12-20  449  

:::::: The code at line 418 was first introduced by commit
:::::: 6d67b0290b4b84c477e6a2fc6e005e174d3c7786 staging: android: ashmem: Disallow ashmem memory from being remapped

:::::: TO: Suren Baghdasaryan <surenb@google.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--pf9I7BMVVzbSWLtt--
