Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F23631AEEB
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 05:50:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5E6E8714C;
	Sun, 14 Feb 2021 04:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id coMXvlxXjCCe; Sun, 14 Feb 2021 04:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68A8187151;
	Sun, 14 Feb 2021 04:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68BC81BF4E3
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 04:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B40D8714C
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 04:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5v+SE-DrDdZ for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 04:50:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6CEE8714A
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 04:49:59 +0000 (UTC)
IronPort-SDR: 5nY+KwZbTlFfLmJC/XC/lwZ+pAl9dsjjDeWYva4kanIUhmfIHVt0jM3KTys03mvh+Dn2E3Kcte
 g149uSSTM0vQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="244044296"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; 
 d="gz'50?scan'50,208,50";a="244044296"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 20:49:57 -0800
IronPort-SDR: mdZHab4wC29S1yB/CYexf7wHihAFxYSXH41wCSW7UvpyyNZwthYyxWwzObzFOoV7UkGuPsz3nr
 jh+2rnFwuRbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; 
 d="gz'50?scan'50,208,50";a="400294673"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 13 Feb 2021 20:49:53 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lB9Lz-0006Nr-JI; Sun, 14 Feb 2021 04:49:51 +0000
Date: Sun, 14 Feb 2021 12:49:36 +0800
From: kernel test robot <lkp@intel.com>
To: Thais Camacho <thaiscamachoo@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <202102141202.97g2vY3y-lkp@intel.com>
References: <20210214023136.8916-1-thaiscamachoo@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210214023136.8916-1-thaiscamachoo@gmail.com>
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
 thaiscamachoo@gmail.com, Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, kbuild-all@lists.01.org,
 Martijn Coenen <maco@android.com>, Suren Baghdasaryan <surenb@google.com>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Thais,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Thais-Camacho/staging-android-ashmem-Declared-file-operation-with-const-keyword/20210214-103440
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 4eb839aef182fccf8995ee439fc2b48d43e45918
config: x86_64-randconfig-a014-20210214 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/32b5e3c9154f059b60686c16a3c3a316f85b6976
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Thais-Camacho/staging-android-ashmem-Declared-file-operation-with-const-keyword/20210214-103440
        git checkout 32b5e3c9154f059b60686c16a3c3a316f85b6976
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

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

6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  376  
11980c2ac4ccfa Robert Love        2011-12-20  377  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love        2011-12-20  378  {
32b5e3c9154f05 Thais Camacho      2021-02-13  379  	static const struct file_operations vmfile_fops;
11980c2ac4ccfa Robert Love        2011-12-20  380  	struct ashmem_area *asma = file->private_data;
11980c2ac4ccfa Robert Love        2011-12-20  381  	int ret = 0;
11980c2ac4ccfa Robert Love        2011-12-20  382  
11980c2ac4ccfa Robert Love        2011-12-20  383  	mutex_lock(&ashmem_mutex);
11980c2ac4ccfa Robert Love        2011-12-20  384  
11980c2ac4ccfa Robert Love        2011-12-20  385  	/* user needs to SET_SIZE before mapping */
59848d6aded59a Alistair Strachan  2018-06-19  386  	if (!asma->size) {
11980c2ac4ccfa Robert Love        2011-12-20  387  		ret = -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  388  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  389  	}
11980c2ac4ccfa Robert Love        2011-12-20  390  
8632c614565d0c Alistair Strachan  2018-06-19  391  	/* requested mapping size larger than object size */
8632c614565d0c Alistair Strachan  2018-06-19  392  	if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfa Robert Love        2011-12-20  393  		ret = -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  394  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  395  	}
11980c2ac4ccfa Robert Love        2011-12-20  396  
11980c2ac4ccfa Robert Love        2011-12-20  397  	/* requested protection bits must match our allowed protection mask */
59848d6aded59a Alistair Strachan  2018-06-19  398  	if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a Alistair Strachan  2018-06-19  399  	    calc_vm_prot_bits(PROT_MASK, 0)) {
11980c2ac4ccfa Robert Love        2011-12-20  400  		ret = -EPERM;
11980c2ac4ccfa Robert Love        2011-12-20  401  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  402  	}
56f76fc68492af Arve Hjønnevåg     2011-12-20  403  	vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfa Robert Love        2011-12-20  404  
11980c2ac4ccfa Robert Love        2011-12-20  405  	if (!asma->file) {
11980c2ac4ccfa Robert Love        2011-12-20  406  		char *name = ASHMEM_NAME_DEF;
11980c2ac4ccfa Robert Love        2011-12-20  407  		struct file *vmfile;
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  408  		struct inode *inode;
11980c2ac4ccfa Robert Love        2011-12-20  409  
11980c2ac4ccfa Robert Love        2011-12-20  410  		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
11980c2ac4ccfa Robert Love        2011-12-20  411  			name = asma->name;
11980c2ac4ccfa Robert Love        2011-12-20  412  
11980c2ac4ccfa Robert Love        2011-12-20  413  		/* ... and allocate the backing shmem file */
11980c2ac4ccfa Robert Love        2011-12-20  414  		vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40 Viresh Kumar       2015-07-31  415  		if (IS_ERR(vmfile)) {
11980c2ac4ccfa Robert Love        2011-12-20  416  			ret = PTR_ERR(vmfile);
11980c2ac4ccfa Robert Love        2011-12-20  417  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  418  		}
97fbfef6bd5978 Shuxiao Zhang      2017-04-06  419  		vmfile->f_mode |= FMODE_LSEEK;
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  420  		inode = file_inode(vmfile);
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  421  		lockdep_set_class(&inode->i_rwsem, &backing_shmem_inode_class);
11980c2ac4ccfa Robert Love        2011-12-20  422  		asma->file = vmfile;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  423  		/*
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  424  		 * override mmap operation of the vmfile so that it can't be
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  425  		 * remapped which would lead to creation of a new vma with no
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  426  		 * asma permission checks. Have to override get_unmapped_area
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  427  		 * as well to prevent VM_BUG_ON check for f_ops modification.
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  428  		 */
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  429  		if (!vmfile_fops.mmap) {
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @430  			vmfile_fops = *vmfile->f_op;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  431  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  432  			vmfile_fops.get_unmapped_area =
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  433  					ashmem_vmfile_get_unmapped_area;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  434  		}
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  435  		vmfile->f_op = &vmfile_fops;
11980c2ac4ccfa Robert Love        2011-12-20  436  	}
11980c2ac4ccfa Robert Love        2011-12-20  437  	get_file(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  438  
11980c2ac4ccfa Robert Love        2011-12-20  439  	/*
11980c2ac4ccfa Robert Love        2011-12-20  440  	 * XXX - Reworked to use shmem_zero_setup() instead of
11980c2ac4ccfa Robert Love        2011-12-20  441  	 * shmem_set_file while we're in staging. -jstultz
11980c2ac4ccfa Robert Love        2011-12-20  442  	 */
11980c2ac4ccfa Robert Love        2011-12-20  443  	if (vma->vm_flags & VM_SHARED) {
11980c2ac4ccfa Robert Love        2011-12-20  444  		ret = shmem_zero_setup(vma);
11980c2ac4ccfa Robert Love        2011-12-20  445  		if (ret) {
11980c2ac4ccfa Robert Love        2011-12-20  446  			fput(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  447  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  448  		}
44960f2a7b63e2 John Stultz        2018-07-31  449  	} else {
44960f2a7b63e2 John Stultz        2018-07-31  450  		vma_set_anonymous(vma);
11980c2ac4ccfa Robert Love        2011-12-20  451  	}
11980c2ac4ccfa Robert Love        2011-12-20  452  
295992fb815e79 Christian König    2020-09-14  453  	vma_set_file(vma, asma->file);
295992fb815e79 Christian König    2020-09-14  454  	/* XXX: merge this with the get_file() above if possible */
295992fb815e79 Christian König    2020-09-14  455  	fput(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  456  
11980c2ac4ccfa Robert Love        2011-12-20  457  out:
11980c2ac4ccfa Robert Love        2011-12-20  458  	mutex_unlock(&ashmem_mutex);
11980c2ac4ccfa Robert Love        2011-12-20  459  	return ret;
11980c2ac4ccfa Robert Love        2011-12-20  460  }
11980c2ac4ccfa Robert Love        2011-12-20  461  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--ew6BAiZeqk4r7MaW--
