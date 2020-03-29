Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 858F0196D8C
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28EF486502;
	Sun, 29 Mar 2020 12:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vi8I9J4w-iFy; Sun, 29 Mar 2020 12:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B08C88654C;
	Sun, 29 Mar 2020 12:54:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5BF11BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B72318766A
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Z+9TAzeJr4u for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:54:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50D0F87668
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:54:33 +0000 (UTC)
IronPort-SDR: Wzon52mXlXw/7lDGojF5Lvqv6S4XK24it9fgZ7Y+2GGCpDsk+kCi0F4bPUUtxVNe2LBoRl5M3y
 Pm0MEVUro60g==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 05:54:32 -0700
IronPort-SDR: gbrdfkWZNAxfCEKHMi/cYl1hys2kp5gpg0O36hm6pQnzm8TH9QnfEUniIH+5xHpZyWcRRIMY8i
 uba/BQlETkFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,320,1580803200"; 
 d="gz'50?scan'50,208,50";a="251623216"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 29 Mar 2020 05:54:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jIXSO-000Imj-6J; Sun, 29 Mar 2020 20:54:28 +0800
Date: Sun, 29 Mar 2020 20:54:11 +0800
From: kbuild test robot <lkp@intel.com>
To: SandeshKenjanaAshok <sandeshkenjanaashok@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Declared file operation with
 const keyword
Message-ID: <202003292055.o1EgiK1O%lkp@intel.com>
References: <20200328151523.17516-1-sandeshkenjanaashok@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200328151523.17516-1-sandeshkenjanaashok@gmail.com>
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
 "sandeshkenjanaashok@gmail.com,
 Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 sandeshkenjanaashok@gmail.com,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, kbuild-all@lists.01.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi SandeshKenjanaAshok,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[also build test ERROR on v5.6-rc7 next-20200327]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/SandeshKenjanaAshok/staging-android-ashmem-Declared-file-operation-with-const-keyword/20200329-014353
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git e681bb287f40e7a9dbcb04cef80fd87a2511ab86
config: um-allmodconfig (attached as .config)
compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=um 

If you fix the issue, kindly add following tag
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

6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  367  
11980c2ac4ccfa Robert Love         2011-12-20  368  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
11980c2ac4ccfa Robert Love         2011-12-20  369  {
3e4e9953cadce9 SandeshKenjanaAshok 2020-03-28  370  	static const struct file_operations vmfile_fops;
11980c2ac4ccfa Robert Love         2011-12-20  371  	struct ashmem_area *asma = file->private_data;
11980c2ac4ccfa Robert Love         2011-12-20  372  	int ret = 0;
11980c2ac4ccfa Robert Love         2011-12-20  373  
11980c2ac4ccfa Robert Love         2011-12-20  374  	mutex_lock(&ashmem_mutex);
11980c2ac4ccfa Robert Love         2011-12-20  375  
11980c2ac4ccfa Robert Love         2011-12-20  376  	/* user needs to SET_SIZE before mapping */
59848d6aded59a Alistair Strachan   2018-06-19  377  	if (!asma->size) {
11980c2ac4ccfa Robert Love         2011-12-20  378  		ret = -EINVAL;
11980c2ac4ccfa Robert Love         2011-12-20  379  		goto out;
11980c2ac4ccfa Robert Love         2011-12-20  380  	}
11980c2ac4ccfa Robert Love         2011-12-20  381  
8632c614565d0c Alistair Strachan   2018-06-19  382  	/* requested mapping size larger than object size */
8632c614565d0c Alistair Strachan   2018-06-19  383  	if (vma->vm_end - vma->vm_start > PAGE_ALIGN(asma->size)) {
11980c2ac4ccfa Robert Love         2011-12-20  384  		ret = -EINVAL;
11980c2ac4ccfa Robert Love         2011-12-20  385  		goto out;
11980c2ac4ccfa Robert Love         2011-12-20  386  	}
11980c2ac4ccfa Robert Love         2011-12-20  387  
11980c2ac4ccfa Robert Love         2011-12-20  388  	/* requested protection bits must match our allowed protection mask */
59848d6aded59a Alistair Strachan   2018-06-19  389  	if ((vma->vm_flags & ~calc_vm_prot_bits(asma->prot_mask, 0)) &
59848d6aded59a Alistair Strachan   2018-06-19  390  	    calc_vm_prot_bits(PROT_MASK, 0)) {
11980c2ac4ccfa Robert Love         2011-12-20  391  		ret = -EPERM;
11980c2ac4ccfa Robert Love         2011-12-20  392  		goto out;
11980c2ac4ccfa Robert Love         2011-12-20  393  	}
56f76fc68492af Arve Hjønnevåg      2011-12-20  394  	vma->vm_flags &= ~calc_vm_may_flags(~asma->prot_mask);
11980c2ac4ccfa Robert Love         2011-12-20  395  
11980c2ac4ccfa Robert Love         2011-12-20  396  	if (!asma->file) {
11980c2ac4ccfa Robert Love         2011-12-20  397  		char *name = ASHMEM_NAME_DEF;
11980c2ac4ccfa Robert Love         2011-12-20  398  		struct file *vmfile;
11980c2ac4ccfa Robert Love         2011-12-20  399  
11980c2ac4ccfa Robert Love         2011-12-20  400  		if (asma->name[ASHMEM_NAME_PREFIX_LEN] != '\0')
11980c2ac4ccfa Robert Love         2011-12-20  401  			name = asma->name;
11980c2ac4ccfa Robert Love         2011-12-20  402  
11980c2ac4ccfa Robert Love         2011-12-20  403  		/* ... and allocate the backing shmem file */
11980c2ac4ccfa Robert Love         2011-12-20  404  		vmfile = shmem_file_setup(name, asma->size, vma->vm_flags);
7f44cb0ba88b40 Viresh Kumar        2015-07-31  405  		if (IS_ERR(vmfile)) {
11980c2ac4ccfa Robert Love         2011-12-20  406  			ret = PTR_ERR(vmfile);
11980c2ac4ccfa Robert Love         2011-12-20  407  			goto out;
11980c2ac4ccfa Robert Love         2011-12-20  408  		}
97fbfef6bd5978 Shuxiao Zhang       2017-04-06  409  		vmfile->f_mode |= FMODE_LSEEK;
11980c2ac4ccfa Robert Love         2011-12-20  410  		asma->file = vmfile;
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  411  		/*
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  412  		 * override mmap operation of the vmfile so that it can't be
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  413  		 * remapped which would lead to creation of a new vma with no
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  414  		 * asma permission checks. Have to override get_unmapped_area
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  415  		 * as well to prevent VM_BUG_ON check for f_ops modification.
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  416  		 */
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  417  		if (!vmfile_fops.mmap) {
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27 @418  			vmfile_fops = *vmfile->f_op;
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27 @419  			vmfile_fops.mmap = ashmem_vmfile_mmap;
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27 @420  			vmfile_fops.get_unmapped_area =
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  421  					ashmem_vmfile_get_unmapped_area;
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  422  		}
6d67b0290b4b84 Suren Baghdasaryan  2020-01-27  423  		vmfile->f_op = &vmfile_fops;
11980c2ac4ccfa Robert Love         2011-12-20  424  	}
11980c2ac4ccfa Robert Love         2011-12-20  425  	get_file(asma->file);
11980c2ac4ccfa Robert Love         2011-12-20  426  
11980c2ac4ccfa Robert Love         2011-12-20  427  	/*
11980c2ac4ccfa Robert Love         2011-12-20  428  	 * XXX - Reworked to use shmem_zero_setup() instead of
11980c2ac4ccfa Robert Love         2011-12-20  429  	 * shmem_set_file while we're in staging. -jstultz
11980c2ac4ccfa Robert Love         2011-12-20  430  	 */
11980c2ac4ccfa Robert Love         2011-12-20  431  	if (vma->vm_flags & VM_SHARED) {
11980c2ac4ccfa Robert Love         2011-12-20  432  		ret = shmem_zero_setup(vma);
11980c2ac4ccfa Robert Love         2011-12-20  433  		if (ret) {
11980c2ac4ccfa Robert Love         2011-12-20  434  			fput(asma->file);
11980c2ac4ccfa Robert Love         2011-12-20  435  			goto out;
11980c2ac4ccfa Robert Love         2011-12-20  436  		}
44960f2a7b63e2 John Stultz         2018-07-31  437  	} else {
44960f2a7b63e2 John Stultz         2018-07-31  438  		vma_set_anonymous(vma);
11980c2ac4ccfa Robert Love         2011-12-20  439  	}
11980c2ac4ccfa Robert Love         2011-12-20  440  
11980c2ac4ccfa Robert Love         2011-12-20  441  	if (vma->vm_file)
11980c2ac4ccfa Robert Love         2011-12-20  442  		fput(vma->vm_file);
11980c2ac4ccfa Robert Love         2011-12-20  443  	vma->vm_file = asma->file;
11980c2ac4ccfa Robert Love         2011-12-20  444  
11980c2ac4ccfa Robert Love         2011-12-20  445  out:
11980c2ac4ccfa Robert Love         2011-12-20  446  	mutex_unlock(&ashmem_mutex);
11980c2ac4ccfa Robert Love         2011-12-20  447  	return ret;
11980c2ac4ccfa Robert Love         2011-12-20  448  }
11980c2ac4ccfa Robert Love         2011-12-20  449  

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
4xNeONvE4BfC5Az1yrycMoDfLuYTLaaUKFD0ceUijYwLgA8Ycd+DbLlTsO8kM++x66fPn5zM
wrJr5AcWRm/qauxzFBUguLtpE9V8YjyqDj66cYWtpssKalsmANI3B3I8WrUEc820z+JS4J1Y
xwD73J3QikRyR+TnjqfVS/yQa7HI14v5kSMJr1ws5jOW5M8mywVH8cVyjNVrLcqIo4QinU1m
M/ZNdJHr8EjGy8mQTaJI8/HVSHC0OJ8sr9hCaMqYp6j1l60hoPDFVsvSRC1nfaT51ZwjwQo8
W/SRFvMpm6Emzdk61zLFjP0qTbqasCQvH81nQz5ZvljM+GLk11fLMV+Mcj7hmz4Pd5/BAoal
7ReLIf9dmrToJy150iHh4GvtJ9P2k1ATZbyejYZ8AeWN2jfM2X6mSIvxlO00ZS5no/mErV1F
m48n/DcDTTUK22KGdtX3PiX38e/b18cnxhnJy+n56+UW76E71w42rZtHd6lfgV4irJYwkXqx
iJBIvJOrKtt4kdpdlqVaG4PUj/AhttqpgIyFXQDUCD1QSLTVrHy7qG20a5PbJNmlUoQQ/A0m
PPQSmReZ42pAtojzBrjQhLhW9dmIu6ykwcG6coIn4yQXHbu2GChcYwe/mrIqovWmTOGGc3MA
CTVdd1EvFIf7oTqZEOVojLu4QdPJcDxbChuWk/l0ZqNxMiHKjx04dsH5lAOXeE5s0eHIRukM
bhjVXIv9NbXgzHlRPpup/ZZ94dfSxiMOnDDg3M16MRu6ydWSZ9eLPk6Y2d9Vo9YpSEuaT5wE
ePrRSCcdWP3CHy+GTnnLyWxpf1npCRj4Nhp7s+XoyLTPbPaPBW5Lf6za0kIjORmF8WS0tPOo
CeZ+zuqn+pr/z/vL498/jf6lr7qK9UrTlZD3DiciA/l8vr2c7gebqO3cg5/Ug74uXWOTNlMR
cMtp11oSH1XFWSBIO3YtqDkn2fX0HejAV/gTypfLly/uWKs1sOxx3ihmWaeXhJalATVhIVTw
McPnuQlEUa4C0ZcSlOljmDh66Grf1JOzVsYnVhaEzIzUhtTI37oidZ1dnt/gqvN18GYqrmvj
Lq7nrQ4MOPgJ6vft9PLl/GY3cFuPhUhlREI60W8SCTHQIcRmQ8DRbCd7VkI4SrD7RltbO+JB
QHiemqijOlBU49YrEatd2HoX73YdoIIDNijoJu1gme/vTGK0t9XPrStlYiKjKapn4LMCjMKu
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

