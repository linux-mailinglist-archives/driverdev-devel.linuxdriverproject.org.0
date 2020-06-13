Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0FF1F8507
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jun 2020 21:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FBB787692;
	Sat, 13 Jun 2020 19:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H1vwx_4cVKx3; Sat, 13 Jun 2020 19:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 358088765A;
	Sat, 13 Jun 2020 19:54:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82B5A1BF34E
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 19:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EA44892A4
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 19:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HamlANedoTbK for <devel@linuxdriverproject.org>;
 Sat, 13 Jun 2020 19:54:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F9238929E
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 19:54:43 +0000 (UTC)
IronPort-SDR: vkSUX7vbl4R+O8ZDCT+WNodAq8RmOFubIT/QRqDIr3vgoXVP13wRQGZEuQqEhjTu3EdOWh2pug
 N5DQg4lzIBGA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2020 12:54:42 -0700
IronPort-SDR: yJfqVdo/sK9uY+PT2dMfER9EGejYjLn77M9mOsoI2Qzz/+9pL7gymH2L/XPUr3GJZGiIxA9053
 2NKPLQZc0POQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,508,1583222400"; 
 d="gz'50?scan'50,208,50";a="290222118"
Received: from lkp-server02.sh.intel.com (HELO de5642daf266) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 13 Jun 2020 12:54:38 -0700
Received: from kbuild by de5642daf266 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jkCEf-0000R7-Rd; Sat, 13 Jun 2020 19:54:37 +0000
Date: Sun, 14 Jun 2020 03:53:40 +0800
From: kernel test robot <lkp@intel.com>
To: Dio Putra <dioput12@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: android: ashmem.c: Cleanup
Message-ID: <202006140315.Bp4ItAUG%lkp@intel.com>
References: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Dio,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[cannot apply to aa5af974127d317071d6225a0f3678c5f520e7ce]

url:    https://github.com/0day-ci/linux/commits/Dio-Putra/staging-android-ashmem-c-Cleanup/20200614-013821
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git af7b4801030c07637840191c69eb666917e4135d
config: x86_64-randconfig-m001-20200614 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

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

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3XsZNPFfEqzPspn8AQA=

--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--oyUTqETQ0mS9luUI--
