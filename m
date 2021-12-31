Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E985C482544
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Dec 2021 18:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 957F0408A6;
	Fri, 31 Dec 2021 17:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bzYQ45u_28QH; Fri, 31 Dec 2021 17:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E842E4033B;
	Fri, 31 Dec 2021 17:09:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 676B51BF399
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 17:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5117781A99
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 17:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tmorHioJL29 for <devel@linuxdriverproject.org>;
 Fri, 31 Dec 2021 17:09:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5526981A30
 for <devel@driverdev.osuosl.org>; Fri, 31 Dec 2021 17:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640970545; x=1672506545;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=mDXZTBMOVLtUoZSEauTALat78Hj4BDtqet/RojZ9xSc=;
 b=Vu38dQIFTi/c/L7R2KYxUsAnTwraJ2DsMMI7A87zMuZf5mhzNSSXaL5s
 ipYDTi+NK6y8T7syJ7c/qGWzN4wDnC2tJU0oTtyxIo/y6FFA3Uy8Vlbvv
 SOo/UdtwxqnucygEjLBGKd+VuLEATa4vP+4lYohyyrBcO1+Nk5VwlMIIG
 DuF4xYJ1G8rrgdfSa9WDywU3LfP8sxaQOpQd1NXUtuKCZBR4RMmx+9OaQ
 2iR0YNHsR1CAoUNRH+hhJwp4kTPH1vxo+0u2EKMCcwiWdkApjX8OPdXls
 +L0LPEQMNl9MxZ92r0czgRXR7pgP0jzFvAfRzG+puqw9DJkvaanO1/IWe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="221825322"
X-IronPort-AV: E=Sophos;i="5.88,252,1635231600"; d="scan'208";a="221825322"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 09:09:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,252,1635231600"; d="scan'208";a="619676116"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 Dec 2021 09:09:03 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n3LOo-000BR3-EB; Fri, 31 Dec 2021 17:09:02 +0000
Date: Sat, 1 Jan 2022 01:08:41 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 4/5] fs/d_path.c:59 prepend() warn:
 unsigned 'p->len' is never less than zero.
Message-ID: <202201010156.bJvO7Gaw-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   a04bbe0a2c7e98669e11a47f94e53dd8228bbeba
commit: e95d5bed5d58c2f5352969369827e7135fa2261e [4/5] fs: make d_path-like functions all have unsigned size
config: i386-randconfig-m031-20211228 (https://download.01.org/0day-ci/archive/20220101/202201010156.bJvO7Gaw-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

smatch warnings:
fs/d_path.c:59 prepend() warn: unsigned 'p->len' is never less than zero.

vim +59 fs/d_path.c

b0cfcdd9b9672e Linus Torvalds 2021-07-16  55  
b0cfcdd9b9672e Linus Torvalds 2021-07-16  56  static bool prepend(struct prepend_buffer *p, const char *str, int namelen)
b0cfcdd9b9672e Linus Torvalds 2021-07-16  57  {
b0cfcdd9b9672e Linus Torvalds 2021-07-16  58  	// Already overflowed?
b0cfcdd9b9672e Linus Torvalds 2021-07-16 @59  	if (p->len < 0)
b0cfcdd9b9672e Linus Torvalds 2021-07-16  60  		return false;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  61  
b0cfcdd9b9672e Linus Torvalds 2021-07-16  62  	// Will overflow?
b0cfcdd9b9672e Linus Torvalds 2021-07-16  63  	if (p->len < namelen) {
b0cfcdd9b9672e Linus Torvalds 2021-07-16  64  		// Fill as much as possible from the end of the name
b0cfcdd9b9672e Linus Torvalds 2021-07-16  65  		str += namelen - p->len;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  66  		p->buf -= p->len;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  67  		prepend_copy(p->buf, str, p->len);
b0cfcdd9b9672e Linus Torvalds 2021-07-16  68  		p->len = -1;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  69  		return false;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  70  	}
b0cfcdd9b9672e Linus Torvalds 2021-07-16  71  
b0cfcdd9b9672e Linus Torvalds 2021-07-16  72  	// Fits fully
ad08ae586586ea Al Viro        2021-05-12  73  	p->len -= namelen;
ad08ae586586ea Al Viro        2021-05-12  74  	p->buf -= namelen;
b0cfcdd9b9672e Linus Torvalds 2021-07-16  75  	return prepend_copy(p->buf, str, namelen);
7a5cf791a74764 Al Viro        2018-03-05  76  }
7a5cf791a74764 Al Viro        2018-03-05  77  

:::::: The code at line 59 was first introduced by commit
:::::: b0cfcdd9b9672ea90642f33d6c0dd8516553adf2 d_path: make 'prepend()' fill up the buffer exactly on overflow

:::::: TO: Linus Torvalds <torvalds@linux-foundation.org>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
