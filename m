Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4862326C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 23:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC82387F5C;
	Wed, 29 Jul 2020 21:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1bS4fuuBNiW; Wed, 29 Jul 2020 21:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58ED187EBB;
	Wed, 29 Jul 2020 21:32:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2EA41BF409
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 21:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADCC787E94
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QuRPKUBhtYu for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 21:32:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2353487E75
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 21:32:02 +0000 (UTC)
IronPort-SDR: zLJfNmJnp3Q7vaQthixLMDBVE3g6BgR8NRGV1ucZUSvgJKtQwuY1WIc5kIJJNbE8262hDTzzaB
 b5vsb+xZewVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="151483359"
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; 
 d="gz'50?scan'50,208,50";a="151483359"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 14:32:00 -0700
IronPort-SDR: +5+TxLNRPdBj4HGs/4KtudKaaTyvkNroAb4nuwGr3DuyQ2LWevDrmPAwvuGAM/yrW7VNqb8But
 n+T6VMc0tavQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; 
 d="gz'50?scan'50,208,50";a="273994767"
Received: from lkp-server02.sh.intel.com (HELO 1bde1f275adc) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 14:31:56 -0700
Received: from kbuild by 1bde1f275adc with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k0tg3-0000E9-CG; Wed, 29 Jul 2020 21:31:55 +0000
Date: Thu, 30 Jul 2020 05:31:05 +0800
From: kernel test robot <lkp@intel.com>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>, gregkh@linuxfoundation.org,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com
Subject: Re: [PATCH] staging: android: ashmem: used const keyword
Message-ID: <202007300507.pnXg8TyK%lkp@intel.com>
References: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Dhiraj Sharma <dhiraj.sharma0024@gmail.com>,
 kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Dhiraj,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Dhiraj-Sharma/staging-android-ashmem-used-const-keyword/20200729-020222
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 11536442a3b4e1de6890ea5e805908debb74f94a
config: i386-randconfig-r012-20200729 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-14) 9.3.0
reproduce (this is a W=1 build):
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/staging/android/ashmem.c: In function 'ashmem_mmap':
>> drivers/staging/android/ashmem.c:418:16: error: assignment of read-only variable 'vmfile_fops'
     418 |    vmfile_fops = *vmfile->f_op;
         |                ^
>> drivers/staging/android/ashmem.c:419:21: error: assignment of member 'mmap' in read-only object
     419 |    vmfile_fops.mmap = ashmem_vmfile_mmap;
         |                     ^
>> drivers/staging/android/ashmem.c:420:34: error: assignment of member 'get_unmapped_area' in read-only object
     420 |    vmfile_fops.get_unmapped_area =
         |                                  ^

vim +/vmfile_fops +418 drivers/staging/android/ashmem.c

6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  367  
11980c2ac4ccfad Robert Love        2011-12-20  368  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfad Robert Love        2011-12-20  369  {
e200c35fc32789d Dhiraj Sharma      2020-07-28  370  	static const struct file_operations vmfile_fops;
11980c2ac4ccfad Robert Love        2011-12-20  371  	struct ashmem_area *asma = file->private_data;
11980c2ac4ccfad Robert Love        2011-12-20  372  	int ret = 0;
11980c2ac4ccfad Robert Love        2011-12-20  373  
11980c2ac4ccfad Robert Love        2011-12-20  374  	mutex_lock(&ashmem_mutex);
11980c2ac4ccfad Robert Love        2011-12-20  375  
11980c2ac4ccfad Robert Love        2011-12-20  376  	/* user needs to SET_SIZE before mapping */
59848d6aded59a6 Alistair Strachan  2018-06-19  377  	if (!asma->size) {
11980c2ac4ccfad Robert Love        2011-12-20  378  		ret = -EINVAL;
11980c2ac4ccfad Robert Love        2011-12-20  379  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  380  	}
11980c2ac4ccfad Robert Love        2011-12-20  381  
8632c614565d0c5 Alistair Strachan  2018-06-19  382  	/* requested mapping size larger than object size */
8632c614565d0c5 Alistair Strachan  2018-06-19  383  	if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfad Robert Love        2011-12-20  384  		ret = -EINVAL;
11980c2ac4ccfad Robert Love        2011-12-20  385  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  386  	}
11980c2ac4ccfad Robert Love        2011-12-20  387  
11980c2ac4ccfad Robert Love        2011-12-20  388  	/* requested protection bits must match our allowed protection mask */
59848d6aded59a6 Alistair Strachan  2018-06-19  389  	if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a6 Alistair Strachan  2018-06-19  390  	    calc_vm_prot_bits(PROT_MASK, 0)) {
11980c2ac4ccfad Robert Love        2011-12-20  391  		ret = -EPERM;
11980c2ac4ccfad Robert Love        2011-12-20  392  		goto out;
11980c2ac4ccfad Robert Love        2011-12-20  393  	}
56f76fc68492af7 Arve Hjønnevåg     2011-12-20  394  	vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfad Robert Love        2011-12-20  395  
11980c2ac4ccfad Robert Love        2011-12-20  396  	if (!asma->file) {
11980c2ac4ccfad Robert Love        2011-12-20  397  		char *name = ASHMEM_NAME_DEF;
11980c2ac4ccfad Robert Love        2011-12-20  398  		struct file *vmfile;
11980c2ac4ccfad Robert Love        2011-12-20  399  
11980c2ac4ccfad Robert Love        2011-12-20  400  		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
11980c2ac4ccfad Robert Love        2011-12-20  401  			name = asma->name;
11980c2ac4ccfad Robert Love        2011-12-20  402  
11980c2ac4ccfad Robert Love        2011-12-20  403  		/* ... and allocate the backing shmem file */
11980c2ac4ccfad Robert Love        2011-12-20  404  		vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40c Viresh Kumar       2015-07-31  405  		if (IS_ERR(vmfile)) {
11980c2ac4ccfad Robert Love        2011-12-20  406  			ret = PTR_ERR(vmfile);
11980c2ac4ccfad Robert Love        2011-12-20  407  			goto out;
11980c2ac4ccfad Robert Love        2011-12-20  408  		}
97fbfef6bd59788 Shuxiao Zhang      2017-04-06  409  		vmfile->f_mode |= FMODE_LSEEK;
11980c2ac4ccfad Robert Love        2011-12-20  410  		asma->file = vmfile;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  411  		/*
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  412  		 * override mmap operation of the vmfile so that it can't be
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  413  		 * remapped which would lead to creation of a new vma with no
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  414  		 * asma permission checks. Have to override get_unmapped_area
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  415  		 * as well to prevent VM_BUG_ON check for f_ops modification.
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  416  		 */
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  417  		if (!vmfile_fops.mmap) {
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27 @418  			vmfile_fops = *vmfile->f_op;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27 @419  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27 @420  			vmfile_fops.get_unmapped_area =
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  421  					ashmem_vmfile_get_unmapped_area;
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  422  		}
6d67b0290b4b84c Suren Baghdasaryan 2020-01-27  423  		vmfile->f_op = &vmfile_fops;
11980c2ac4ccfad Robert Love        2011-12-20  424  	}
11980c2ac4ccfad Robert Love        2011-12-20  425  	get_file(asma->file);
11980c2ac4ccfad Robert Love        2011-12-20  426  
11980c2ac4ccfad Robert Love        2011-12-20  427  	/*
11980c2ac4ccfad Robert Love        2011-12-20  428  	 * XXX - Reworked to use shmem_zero_setup() instead of
11980c2ac4ccfad Robert Love        2011-12-20  429  	 * shmem_set_file while we're in staging. -jstultz
11980c2ac4ccfad Robert Love        2011-12-20  430  	 */
11980c2ac4ccfad Robert Love        2011-12-20  431  	if (vma->vm_flags & VM_SHARED) {
11980c2ac4ccfad Robert Love        2011-12-20  432  		ret = shmem_zero_setup(vma);
11980c2ac4ccfad Robert Love        2011-12-20  433  		if (ret) {
11980c2ac4ccfad Robert Love        2011-12-20  434  			fput(asma->file);
11980c2ac4ccfad Robert Love        2011-12-20  435  			goto out;
11980c2ac4ccfad Robert Love        2011-12-20  436  		}
44960f2a7b63e22 John Stultz        2018-07-31  437  	} else {
44960f2a7b63e22 John Stultz        2018-07-31  438  		vma_set_anonymous(vma);
11980c2ac4ccfad Robert Love        2011-12-20  439  	}
11980c2ac4ccfad Robert Love        2011-12-20  440  
11980c2ac4ccfad Robert Love        2011-12-20  441  	if (vma->vm_file)
11980c2ac4ccfad Robert Love        2011-12-20  442  		fput(vma->vm_file);
11980c2ac4ccfad Robert Love        2011-12-20  443  	vma->vm_file = asma->file;
11980c2ac4ccfad Robert Love        2011-12-20  444  
11980c2ac4ccfad Robert Love        2011-12-20  445  out:
11980c2ac4ccfad Robert Love        2011-12-20  446  	mutex_unlock(&ashmem_mutex);
11980c2ac4ccfad Robert Love        2011-12-20  447  	return ret;
11980c2ac4ccfad Robert Love        2011-12-20  448  }
11980c2ac4ccfad Robert Love        2011-12-20  449  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--KsGdsel6WgEHnImy--
