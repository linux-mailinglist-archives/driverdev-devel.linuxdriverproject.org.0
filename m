Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7DE28FF2B
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 09:34:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5269D888D6;
	Fri, 16 Oct 2020 07:34:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id na3s5LZl75RM; Fri, 16 Oct 2020 07:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F028888C8;
	Fri, 16 Oct 2020 07:34:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF79F1BF316
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 07:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BFED58826E
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 07:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sVZLmmhwL21a for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 07:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B05B8829C
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 07:34:24 +0000 (UTC)
IronPort-SDR: /OVVdlgDqA/cCOfe7tqEekOGqVF2qqT2COI6iHGvClRaJl1BJFTUX2lBVhwbjEXl3hIKSknBRr
 1+OoI+uwTRyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="230745795"
X-IronPort-AV: E=Sophos;i="5.77,382,1596524400"; 
 d="gz'50?scan'50,208,50";a="230745795"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 00:34:22 -0700
IronPort-SDR: hASyq3xVMXIxFtxNBx38PvbP/SBiGvnZfnXYs3+EzsYkKAdttn3nUEheVC821Wp9IsowE49v8H
 X+Uaij0idvfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,382,1596524400"; 
 d="gz'50?scan'50,208,50";a="331084919"
Received: from lkp-server01.sh.intel.com (HELO c8bc26b08a34) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 16 Oct 2020 00:34:19 -0700
Received: from kbuild by c8bc26b08a34 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kTKFm-00001Z-SK; Fri, 16 Oct 2020 07:34:18 +0000
Date: Fri, 16 Oct 2020 15:34:04 +0800
From: kernel test robot <lkp@intel.com>
To: kiransuren@osuosl.org, kirank.suren@gmail.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH] Staging: android: ashmem: changed struct file_operations
 to const file_operations
Message-ID: <202010161530.mhZBhIek-lkp@intel.com>
References: <20201016051111.1947-1-kirank.suren@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
In-Reply-To: <20201016051111.1947-1-kirank.suren@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kiransuren <kirank.suren@gmail.com>,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/kiransuren-osuosl-org/Staging-android-ashmem-changed-struct-file_operations-to-const-file_operations/20201016-131238
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 726eb70e0d34dc4bc4dada71f52bba8ed638431e
config: x86_64-randconfig-a006-20201016 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5fbab4025eb57b12f2842ab188ff07a110708e1d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1496e5f2103cc6f96af90aaf323cf92f018dcf41
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review kiransuren-osuosl-org/Staging-android-ashmem-changed-struct-file_operations-to-const-file_operations/20201016-131238
        git checkout 1496e5f2103cc6f96af90aaf323cf92f018dcf41
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/android/ashmem.c:379:15: error: must use 'struct' tag to refer to type 'file_operations'
           static const file_operations vmfile_fops;
                        ^
                        struct 
>> drivers/staging/android/ashmem.c:430:16: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops = *vmfile->f_op;
                           ~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:31: note: variable 'vmfile_fops' declared const here
           static const file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   drivers/staging/android/ashmem.c:431:21: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops.mmap = ashmem_vmfile_mmap;
                           ~~~~~~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:31: note: variable 'vmfile_fops' declared const here
           static const file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   drivers/staging/android/ashmem.c:432:34: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                           vmfile_fops.get_unmapped_area =
                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/android/ashmem.c:379:31: note: variable 'vmfile_fops' declared const here
           static const file_operations vmfile_fops;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
   4 errors generated.

vim +379 drivers/staging/android/ashmem.c

   376	
   377	static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
   378	{
 > 379		static const file_operations vmfile_fops;
   380		struct ashmem_area *asma = file->private_data;
   381		int ret = 0;
   382	
   383		mutex_lock(&ashmem_mutex);
   384	
   385		/* user needs to SET_SIZE before mapping */
   386		if (!asma->size) {
   387			ret = -EINVAL;
   388			goto out;
   389		}
   390	
   391		/* requested mapping size larger than object size */
   392		if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
   393			ret = -EINVAL;
   394			goto out;
   395		}
   396	
   397		/* requested protection bits must match our allowed protection mask */
   398		if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
   399		    calc_vm_prot_bits(PROT_MASK, 0)) {
   400			ret = -EPERM;
   401			goto out;
   402		}
   403		vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
   404	
   405		if (!asma->file) {
   406			char *name = ASHMEM_NAME_DEF;
   407			struct file *vmfile;
   408			struct inode *inode;
   409	
   410			if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
   411				name = asma->name;
   412	
   413			/* ... and allocate the backing shmem file */
   414			vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
   415			if (IS_ERR(vmfile)) {
   416				ret = PTR_ERR(vmfile);
   417				goto out;
   418			}
   419			vmfile->f_mode |= FMODE_LSEEK;
   420			inode = file_inode(vmfile);
   421			lockdep_set_class(&inode->i_rwsem, &backing_shmem_inode_class);
   422			asma->file = vmfile;
   423			/*
   424			 * override mmap operation of the vmfile so that it can't be
   425			 * remapped which would lead to creation of a new vma with no
   426			 * asma permission checks. Have to override get_unmapped_area
   427			 * as well to prevent VM_BUG_ON check for f_ops modification.
   428			 */
   429			if (!vmfile_fops.mmap) {
 > 430				vmfile_fops = *vmfile->f_op;
   431				vmfile_fops.mmap = ashmem_vmfile_mmap;
   432				vmfile_fops.get_unmapped_area =
   433						ashmem_vmfile_get_unmapped_area;
   434			}
   435			vmfile->f_op = &vmfile_fops;
   436		}
   437		get_file(asma->file);
   438	
   439		/*
   440		 * XXX - Reworked to use shmem_zero_setup() instead of
   441		 * shmem_set_file while we're in staging. -jstultz
   442		 */
   443		if (vma->vm_flags & VM_SHARED) {
   444			ret = shmem_zero_setup(vma);
   445			if (ret) {
   446				fput(asma->file);
   447				goto out;
   448			}
   449		} else {
   450			vma_set_anonymous(vma);
   451		}
   452	
   453		if (vma->vm_file)
   454			fput(vma->vm_file);
   455		vma->vm_file = asma->file;
   456	
   457	out:
   458		mutex_unlock(&ashmem_mutex);
   459		return ret;
   460	}
   461	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
R3OZu2+Os3PjuaerJ8j/A5QHiQL7EgIA

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--sm4nu43k4a2Rpi4c--
