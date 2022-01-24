Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A4E497DD0
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jan 2022 12:20:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35773408CB;
	Mon, 24 Jan 2022 11:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CSLf7gclvQcI; Mon, 24 Jan 2022 11:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A573640734;
	Mon, 24 Jan 2022 11:20:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D1911BF215
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 11:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BBB360E16
 for <devel@linuxdriverproject.org>; Mon, 24 Jan 2022 11:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZkmkvoTe8qj for <devel@linuxdriverproject.org>;
 Mon, 24 Jan 2022 11:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 391A260E31
 for <devel@driverdev.osuosl.org>; Mon, 24 Jan 2022 11:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643023241; x=1674559241;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z5+zKDyv2t6O/MjLljgEyWIANm+BRD/wDU22TyFSZvw=;
 b=WbP1mabZ6jXKI57Ml7+XhSiwIBg+xlyFePd8pUdjE8ua4uFo2tCktly6
 9Dk+feXl5siwUvIUHOg+NsuYFsdqYmp1wXuGf09JjYUZgcqZwks91k7Rm
 13RYWQgdV5h+1ugJxZ9drJrL4H0ADgfKlAkGy8BQYThdgj686u6R6FWSl
 hZjaJDVsd5UBSRKUpFd6mnpgv62bynwwWWlygAfvewz7ZB2NstiXQ+Bhp
 nKFRdlzgGcq/31DTgJ1+PLTiCtS4sCNY1JGYPBOTWFE8A+ia7/dSdEjOm
 +ULGgLYgvUX65mXKxWYD6NrcET3YdG3ZyE/4IceEe3fJl475QIdh3ZISx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="244856742"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="244856742"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 03:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="580334598"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2022 03:20:38 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBxOn-000IEl-EG; Mon, 24 Jan 2022 11:20:37 +0000
Date: Mon, 24 Jan 2022 19:20:27 +0800
From: kernel test robot <lkp@intel.com>
To: ratnesh-r1 <me.ratnesh682@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <202201241907.69JG769L-lkp@intel.com>
References: <1643008187-75859-1-git-send-email-me.ratnesh682@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1643008187-75859-1-git-send-email-me.ratnesh682@gmail.com>
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
 me.ratnesh682@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, kbuild-all@lists.01.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi ratnesh-r1,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/ratnesh-r1/staging-android=
-ashmem-Declared-file-operation-with-const-keyword/20220124-151116
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
fa783154524a71ab74e293cd8251155e5971952b
config: x86_64-randconfig-a002-20220124 (https://download.01.org/0day-ci/ar=
chive/20220124/202201241907.69JG769L-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=3D1 build):
        # https://github.com/0day-ci/linux/commit/c24fe2afe4abdf6436628abd1=
3a0109ec420f373
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review ratnesh-r1/staging-android-ashmem-=
Declared-file-operation-with-const-keyword/20220124-151116
        git checkout c24fe2afe4abdf6436628abd13a0109ec420f373
        # save the config file to linux build tree
        mkdir build_dir
        make W=3D1 O=3Dbuild_dir ARCH=3Dx86_64 SHELL=3D/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/staging/android/ashmem.c: In function 'ashmem_mmap':
>> drivers/staging/android/ashmem.c:431:16: error: assignment of read-only =
variable 'vmfile_fops'
     431 |    vmfile_fops =3D *vmfile->f_op;
         |                ^
>> drivers/staging/android/ashmem.c:432:21: error: assignment of member 'mm=
ap' in read-only object
     432 |    vmfile_fops.mmap =3D ashmem_vmfile_mmap;
         |                     ^
>> drivers/staging/android/ashmem.c:433:34: error: assignment of member 'ge=
t_unmapped_area' in read-only object
     433 |    vmfile_fops.get_unmapped_area =3D
         |                                  ^


vim +/vmfile_fops +431 drivers/staging/android/ashmem.c

6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  377  =

11980c2ac4ccfa Robert Love        2011-12-20  378  static int ashmem_mmap(s=
truct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love        2011-12-20  379  {
c24fe2afe4abdf ratnesh-r1         2022-01-23  380  	static const struct fil=
e_operations vmfile_fops;
11980c2ac4ccfa Robert Love        2011-12-20  381  	struct ashmem_area *asm=
a =3D file->private_data;
11980c2ac4ccfa Robert Love        2011-12-20  382  	int ret =3D 0;
11980c2ac4ccfa Robert Love        2011-12-20  383  =

11980c2ac4ccfa Robert Love        2011-12-20  384  	mutex_lock(&ashmem_mute=
x);
11980c2ac4ccfa Robert Love        2011-12-20  385  =

11980c2ac4ccfa Robert Love        2011-12-20  386  	/* user needs to SET_SI=
ZE before mapping */
59848d6aded59a Alistair Strachan  2018-06-19  387  	if (!asma->size) {
11980c2ac4ccfa Robert Love        2011-12-20  388  		ret =3D -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  389  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  390  	}
11980c2ac4ccfa Robert Love        2011-12-20  391  =

8632c614565d0c Alistair Strachan  2018-06-19  392  	/* requested mapping si=
ze larger than object size */
8632c614565d0c Alistair Strachan  2018-06-19  393  	if (vma->vm_end - vma->=
vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfa Robert Love        2011-12-20  394  		ret =3D -EINVAL;
11980c2ac4ccfa Robert Love        2011-12-20  395  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  396  	}
11980c2ac4ccfa Robert Love        2011-12-20  397  =

11980c2ac4ccfa Robert Love        2011-12-20  398  	/* requested protection=
 bits must match our allowed protection mask */
59848d6aded59a Alistair Strachan  2018-06-19  399  	if ((vma->vm_flags & ~c=
alc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a Alistair Strachan  2018-06-19  400  	    calc_vm_prot_bits(P=
ROT_MASK, 0)) {
11980c2ac4ccfa Robert Love        2011-12-20  401  		ret =3D -EPERM;
11980c2ac4ccfa Robert Love        2011-12-20  402  		goto out;
11980c2ac4ccfa Robert Love        2011-12-20  403  	}
56f76fc68492af Arve Hj=F8nnev=E5g     2011-12-20  404  	vma->vm_flags &=3D =
~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfa Robert Love        2011-12-20  405  =

11980c2ac4ccfa Robert Love        2011-12-20  406  	if (!asma->file) {
11980c2ac4ccfa Robert Love        2011-12-20  407  		char *name =3D ASHMEM_=
NAME_DEF;
11980c2ac4ccfa Robert Love        2011-12-20  408  		struct file *vmfile;
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  409  		struct inode *inode;
11980c2ac4ccfa Robert Love        2011-12-20  410  =

11980c2ac4ccfa Robert Love        2011-12-20  411  		if (asma->name[ASHMEM_=
NAME_PREFIX_LEN] !=3D '\0')
11980c2ac4ccfa Robert Love        2011-12-20  412  			name =3D asma->name;
11980c2ac4ccfa Robert Love        2011-12-20  413  =

11980c2ac4ccfa Robert Love        2011-12-20  414  		/* ... and allocate th=
e backing shmem file */
11980c2ac4ccfa Robert Love        2011-12-20  415  		vmfile =3D shmem_file_=
setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40 Viresh Kumar       2015-07-31  416  		if (IS_ERR(vmfile)) {
11980c2ac4ccfa Robert Love        2011-12-20  417  			ret =3D PTR_ERR(vmfil=
e);
11980c2ac4ccfa Robert Love        2011-12-20  418  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  419  		}
97fbfef6bd5978 Shuxiao Zhang      2017-04-06  420  		vmfile->f_mode |=3D FM=
ODE_LSEEK;
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  421  		inode =3D file_inode(v=
mfile);
3e338d3c95c735 Suren Baghdasaryan 2020-07-30  422  		lockdep_set_class(&ino=
de->i_rwsem, &backing_shmem_inode_class);
11980c2ac4ccfa Robert Love        2011-12-20  423  		asma->file =3D vmfile;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  424  		/*
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  425  		 * override mmap opera=
tion of the vmfile so that it can't be
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  426  		 * remapped which woul=
d lead to creation of a new vma with no
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  427  		 * asma permission che=
cks. Have to override get_unmapped_area
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  428  		 * as well to prevent =
VM_BUG_ON check for f_ops modification.
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  429  		 */
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  430  		if (!vmfile_fops.mmap)=
 {
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @431  			vmfile_fops =3D *vmfi=
le->f_op;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @432  			vmfile_fops.mmap =3D =
ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27 @433  			vmfile_fops.get_unmap=
ped_area =3D
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  434  					ashmem_vmfile_get_u=
nmapped_area;
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  435  		}
6d67b0290b4b84 Suren Baghdasaryan 2020-01-27  436  		vmfile->f_op =3D &vmfi=
le_fops;
11980c2ac4ccfa Robert Love        2011-12-20  437  	}
11980c2ac4ccfa Robert Love        2011-12-20  438  	get_file(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  439  =

11980c2ac4ccfa Robert Love        2011-12-20  440  	/*
11980c2ac4ccfa Robert Love        2011-12-20  441  	 * XXX - Reworked to us=
e shmem_zero_setup() instead of
11980c2ac4ccfa Robert Love        2011-12-20  442  	 * shmem_set_file while=
 we're in staging. -jstultz
11980c2ac4ccfa Robert Love        2011-12-20  443  	 */
11980c2ac4ccfa Robert Love        2011-12-20  444  	if (vma->vm_flags & VM_=
SHARED) {
11980c2ac4ccfa Robert Love        2011-12-20  445  		ret =3D shmem_zero_set=
up(vma);
11980c2ac4ccfa Robert Love        2011-12-20  446  		if (ret) {
11980c2ac4ccfa Robert Love        2011-12-20  447  			fput(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  448  			goto out;
11980c2ac4ccfa Robert Love        2011-12-20  449  		}
44960f2a7b63e2 John Stultz        2018-07-31  450  	} else {
44960f2a7b63e2 John Stultz        2018-07-31  451  		vma_set_anonymous(vma);
11980c2ac4ccfa Robert Love        2011-12-20  452  	}
11980c2ac4ccfa Robert Love        2011-12-20  453  =

295992fb815e79 Christian K=F6nig    2020-09-14  454  	vma_set_file(vma, asm=
a->file);
295992fb815e79 Christian K=F6nig    2020-09-14  455  	/* XXX: merge this wi=
th the get_file() above if possible */
295992fb815e79 Christian K=F6nig    2020-09-14  456  	fput(asma->file);
11980c2ac4ccfa Robert Love        2011-12-20  457  =

11980c2ac4ccfa Robert Love        2011-12-20  458  out:
11980c2ac4ccfa Robert Love        2011-12-20  459  	mutex_unlock(&ashmem_mu=
tex);
11980c2ac4ccfa Robert Love        2011-12-20  460  	return ret;
11980c2ac4ccfa Robert Love        2011-12-20  461  }
11980c2ac4ccfa Robert Love        2011-12-20  462  =


---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
