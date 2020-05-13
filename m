Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A61D1B6C
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 18:44:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F2E087246;
	Wed, 13 May 2020 16:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5sQKJclwN_hJ; Wed, 13 May 2020 16:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31C4186E36;
	Wed, 13 May 2020 16:44:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A887D1BF2BD
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 16:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A537A86DC4
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 16:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NpHSJbXCArcD for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 16:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89F6186DBF
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 16:44:37 +0000 (UTC)
IronPort-SDR: 4vALSR2Gy3JiQVuuI2lnoL9d92bx7iFuHTklEzGX+K5mmm45BKs/CjdYVZks1D9zVFRtDYBPA3
 pBKJZFvEB+KQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 09:44:36 -0700
IronPort-SDR: f39WcGz6dBGzmtQHiu0/TZlfsxDYszwBZ22PdLfBbNQci0s0Lq4Sygn2e4/SVrSMgDLQHtnorD
 YfuAmKFocxSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,388,1583222400"; 
 d="gz'50?scan'50,208,50";a="262545477"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2020 09:44:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jYuUj-000I0W-5O; Thu, 14 May 2020 00:44:33 +0800
Date: Thu, 14 May 2020 00:44:19 +0800
From: kbuild test robot <lkp@intel.com>
To: Anmol <anmol.karan123@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: android: ashmem: Fixed a issue related to
 file_operations
Message-ID: <202005140059.lGcs9gbv%lkp@intel.com>
References: <20200513114116.26410-1-user@debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200513114116.26410-1-user@debian>
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Anmol <anmol.karan123@gmail.com>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Anmol,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[also build test ERROR on v5.7-rc5 next-20200512]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Anmol/staging-android-ashmem-Fixed-a-issue-related-to-file_operations/20200513-194410
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 1ff4388a06eb001efbc272754ef750c0b97817cb
config: um-allmodconfig (attached as .config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=um 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

drivers/staging/android/ashmem.c: In function 'ashmem_mmap':
>> drivers/staging/android/ashmem.c:418:16: error: assignment of read-only variable 'vmfile_fops'
vmfile_fops = *vmfile->f_op;
^
>> drivers/staging/android/ashmem.c:419:21: error: assignment of member 'mmap' in read-only object
vmfile_fops.mmap = ashmem_vmfile_mmap;
^
>> drivers/staging/android/ashmem.c:420:34: error: assignment of member 'get_unmapped_area' in read-only object
vmfile_fops.get_unmapped_area =
^

vim +/vmfile_fops +418 drivers/staging/android/ashmem.c

6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  367  
11980c2ac4ccfa Robert Love        2011-12-20  368  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love        2011-12-20  369  {
823a00202dabb1 Anmol              2020-05-13  370  	static const struct file_operations vmfile_fops;
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
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @419  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @420  			vmfile_fops.get_unmapped_area =
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

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--BOKacYhQ+x31HxR3--


