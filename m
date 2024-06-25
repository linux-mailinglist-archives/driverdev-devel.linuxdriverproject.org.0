Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04156915AFD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 02:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8444E400C1;
	Tue, 25 Jun 2024 00:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5XgIg7rgZ52j; Tue, 25 Jun 2024 00:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF48F40511
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF48F40511;
	Tue, 25 Jun 2024 00:26:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A2411BF42D
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 00:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33DF481E9F
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 00:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4MtPgY8FcAoz for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 00:26:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F308681E9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F308681E9C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F308681E9C
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 00:26:36 +0000 (UTC)
X-CSE-ConnectionGUID: lpz26j0gR5yvRHyxm8aIHg==
X-CSE-MsgGUID: i3H7IVW3TiaMWBMlRDgFFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="20041751"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="20041751"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 17:26:36 -0700
X-CSE-ConnectionGUID: zFoy3tIPSxSwOtkNzjiRsQ==
X-CSE-MsgGUID: tvvUl7VRT1WVrcKaUcwoDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="66689027"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2024 17:26:34 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sLu12-000Dqy-0A;
 Tue, 25 Jun 2024 00:26:32 +0000
Date: Tue, 25 Jun 2024 08:26:16 +0800
From: kernel test robot <lkp@intel.com>
To: Teddy Engel <engel.teddy@gmail.com>
Subject: [staging:staging-testing 34/59]
 drivers/staging/rtl8192e/rtl8192e/rtl_pci.c:31:6: error: conflicting types
 for 'rtl92e_check_adapter'; have 'bool(struct pci_dev *, struct net_device
 *)' {aka '_Bool(struct pci_dev *, struct net_device *)'}
Message-ID: <202406250858.L8rJMHQm-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719275197; x=1750811197;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=TPcouhR3AQn4HPMyULB62+z/TgauBoDEXDNkxKWQFPw=;
 b=P5qTFkH2pBRqLZJRg0yeD7uAypMH1CWW+wRS7QE2ZK5vkEWC734JZvgr
 +psN/zan0fmCXGlBVdAXPS+vx/wDXRZHzUOO2uLwDrEHe/j3gNq36f73A
 UDKQIq9eXgJR/fvErt4SrKXyx0Q9CdTz6A+3WS66/ib8E6hsfYA/6qo93
 2UAS8SErW3lgrPJ3IrKXXHOCerFiBFt4Qux6Abw3CRfMFYAE6mhwwkpbn
 XDgzofxjjTD4RGUzpsNC6xbsfmdS/kpF5WSBqxrNhQWGllYiQ8cP+jA6k
 rOxyXg6SucTi4ngXi6rK8uzQTRIQ1nJP3yYF7HJqOy2XLBPf3HnkqDOHs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P5qTFkH2
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   921190437a4827667cceef10202b2150571ebe5c
commit: 7dff0b27d9c842f88149bf611cbc0b59be1dcd3c [34/59] staging: rtl8192e: Remove unnecessary pre-declaration of struct net_device
config: arm64-randconfig-001-20240625 (https://download.01.org/0day-ci/archive/20240625/202406250858.L8rJMHQm-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240625/202406250858.L8rJMHQm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/staging/rtl8192e/rtl8192e/rtl_pci.c:10:
>> drivers/staging/rtl8192e/rtl8192e/rtl_pci.h:16:56: warning: 'struct net_device' declared inside parameter list will not be visible outside of this definition or declaration
      16 | bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev);
         |                                                        ^~~~~~~~~~
>> drivers/staging/rtl8192e/rtl8192e/rtl_pci.c:31:6: error: conflicting types for 'rtl92e_check_adapter'; have 'bool(struct pci_dev *, struct net_device *)' {aka '_Bool(struct pci_dev *, struct net_device *)'}
      31 | bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev)
         |      ^~~~~~~~~~~~~~~~~~~~
   drivers/staging/rtl8192e/rtl8192e/rtl_pci.h:16:6: note: previous declaration of 'rtl92e_check_adapter' with type 'bool(struct pci_dev *, struct net_device *)' {aka '_Bool(struct pci_dev *, struct net_device *)'}
      16 | bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev);
         |      ^~~~~~~~~~~~~~~~~~~~


vim +31 drivers/staging/rtl8192e/rtl8192e/rtl_pci.c

94a799425eee82 drivers/staging/rtl8192e/rtl_pci.c          Larry Finger       2011-08-23  30  
e250592ed93a12 drivers/staging/rtl8192e/rtl8192e/rtl_pci.c Mateusz Kulikowski 2015-07-19 @31  bool rtl92e_check_adapter(struct pci_dev *pdev, struct net_device *dev)

:::::: The code at line 31 was first introduced by commit
:::::: e250592ed93a12eecc42ed590f5a8245a20ab994 staging: rtl8192e: Rename rtl8192_pci_findadapter

:::::: TO: Mateusz Kulikowski <mateusz.kulikowski@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
