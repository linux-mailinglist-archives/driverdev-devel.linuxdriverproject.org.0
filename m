Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 927081FA81D
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 07:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54EEB8951B;
	Tue, 16 Jun 2020 05:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Stne7-ihTe3E; Tue, 16 Jun 2020 05:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0BF888643;
	Tue, 16 Jun 2020 05:18:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 582AB1BF28C
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 05:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3205525B92
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 05:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDPlRWMAkbrc for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 05:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BF8A20503
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 05:18:55 +0000 (UTC)
IronPort-SDR: c3Jkeo6AeGTkWlDtD6E6p5iob7KV/XhMg8VzKFIMxzxM5ASjToBASYKiSmtG74VDyZ1hvOpO2J
 NMhDejQi2lDg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 22:18:47 -0700
IronPort-SDR: 3xmQcCaiGwctCIq6CxEx8GFPmtveDloRKLSFqehZPitbLuEyr1dOkGv/ILAhYnB6M4pedSMHII
 r8mLdLAXf39A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,517,1583222400"; 
 d="gz'50?scan'50,208,50";a="476301238"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.140])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2020 22:18:41 -0700
Date: Tue, 16 Jun 2020 13:30:06 +0800
From: kernel test robot <lkp@intel.com>
To: Dio Putra <dioput12@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: android: ashmem.c: Cleanup
Message-ID: <20200616053006.GC23105@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="s2ZSL+KKDSLx8OML"
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


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Dio,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[cannot apply to aa5af974127d317071d6225a0f3678c5f520e7ce]

url:    https://github.com/0day-ci/linux/commits/Dio-Putra/staging-android-ashmem-c-Cleanup/20200614-013821
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git af7b4801030c07637840191c69eb666917e4135d
:::::: branch date: 3 hours ago
:::::: commit date: 3 hours ago
config: i386-randconfig-s002-20200614 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-250-g42323db3-dirty
        # save the attached .config to linux build tree
        make W=1 C=1 ARCH=i386 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/staging/android/ashmem.c:418:25: sparse: sparse: assignment to const expression
   drivers/staging/android/ashmem.c:419:36: sparse: sparse: assignment to const expression
   drivers/staging/android/ashmem.c:420:36: sparse: sparse: assignment to const expression

# https://github.com/0day-ci/linux/commit/7fe32ab69ec805d9e6b68fc7871f9de384429a48
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 7fe32ab69ec805d9e6b68fc7871f9de384429a48
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

--s2ZSL+KKDSLx8OML
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--s2ZSL+KKDSLx8OML--
