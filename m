Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D732FF3A
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 07:18:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDF506067F;
	Sun,  7 Mar 2021 06:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCVN4x4FyyYf; Sun,  7 Mar 2021 06:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69A006060F;
	Sun,  7 Mar 2021 06:18:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D01C1BF5AE
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 06:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2E236060F
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 06:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTOI70q0zFWs for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 06:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A3ED605FF
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 06:18:13 +0000 (UTC)
IronPort-SDR: zyGMXT+Q2duXcM+Ky/VBSrqJiRyh9lJFF3kR1pe7fQgt6XOqMefXcGprnz+JfpUdt4Ic+3yrMx
 1/+pR9+7qjAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="207618302"
X-IronPort-AV: E=Sophos;i="5.81,229,1610438400"; 
 d="gz'50?scan'50,208,50";a="207618302"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2021 22:18:13 -0800
IronPort-SDR: yJO218DXaepc+INiYHnYyqozdFWjAOAWPKremYvAff9jw8KEmw3ff5xZkwxpmLHZo7QOCP2Ojk
 LA2r22PAuRqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,229,1610438400"; 
 d="gz'50?scan'50,208,50";a="601723061"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 06 Mar 2021 22:18:07 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lImjv-0000CN-1q; Sun, 07 Mar 2021 06:18:07 +0000
Date: Sun, 7 Mar 2021 14:18:03 +0800
From: kernel test robot <lkp@intel.com>
To: nabil5352 <nabil.ibn.mahmud@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] Staging: android: ashmem: fixed a struct without const
Message-ID: <202103071426.PzUgoa20-lkp@intel.com>
References: <20210306063817.674041-1-nabil.ibn.mahmud@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210306063817.674041-1-nabil.ibn.mahmud@gmail.com>
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
Cc: devel@driverdev.osuosl.org, nabil5352 <nabil.ibn.mahmud@gmail.com>,
 kbuild-all@01.org, linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi nabil5352,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/nabil5352/Staging-android-ashmem-fixed-a-struct-without-const/20210307-103559
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 4e1c5d4c35d8d5a5f861019f1392ebaa0abb490b
config: x86_64-randconfig-m001-20210307 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/4847faabe2fac6d0cf216c0d7ad02e0a263945b4
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review nabil5352/Staging-android-ashmem-fixed-a-struct-without-const/20210307-103559
        git checkout 4847faabe2fac6d0cf216c0d7ad02e0a263945b4
        # save the attached .config to linux build tree
        make W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/staging/android/ashmem.c: In function 'ashmem_mmap':
>> drivers/staging/android/ashmem.c:430:16: error: assignment of read-only variable 'vmfile_fops'
     430 |    vmfile_fops = *vmfile->f_op;
         |                ^
>> drivers/staging/android/ashmem.c:431:21: error: assignment of member 'mmap' in read-only object
     431 |    vmfile_fops.mmap = ashmem_vmfile_mmap;
         |                     ^
>> drivers/staging/android/ashmem.c:432:34: error: assignment of member 'get_unmapped_area' in read-only object
     432 |    vmfile_fops.get_unmapped_area =
         |                                  ^


vim +/vmfile_fops +430 drivers/staging/android/ashmem.c

6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  376  
11980c2ac4ccfa Robert Love        2011-12-20  377  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love        2011-12-20  378  {
4847faabe2fac6 nabil5352          2021-03-06  379  	static const struct file_operations vmfile_fops;
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
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @431  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @432  			vmfile_fops.get_unmapped_area =
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

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--tKW2IUtsqtDRztdT--
