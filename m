Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C1F95CC71
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2024 14:35:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E15F0818BE;
	Fri, 23 Aug 2024 12:35:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XN0b8b06hUum; Fri, 23 Aug 2024 12:35:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8D2E80E56
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8D2E80E56;
	Fri, 23 Aug 2024 12:35:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 607D01BF3C6
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 12:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5ABB240FDB
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 12:35:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o5ZBPJKDQH9G for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2024 12:35:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D585E400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D585E400C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D585E400C7
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2024 12:35:28 +0000 (UTC)
X-CSE-ConnectionGUID: ycDplOzvR7u4W797liU/yQ==
X-CSE-MsgGUID: E8JIJhx4RRWkrhYtQHFC5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33505130"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="33505130"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 05:35:28 -0700
X-CSE-ConnectionGUID: SHAeHeDoSGWSMIRPnDqBMA==
X-CSE-MsgGUID: 99cntAGlTJWmRrCGIMPVgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62303847"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 23 Aug 2024 05:35:26 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shTVj-000Dhc-2t;
 Fri, 23 Aug 2024 12:35:23 +0000
Date: Fri, 23 Aug 2024 20:35:15 +0800
From: kernel test robot <lkp@intel.com>
To: Simon Horman <horms@kernel.org>
Subject: [staging:staging-testing 36/53]
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16'
 set but not used
Message-ID: <202408232049.UJef268y-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724416529; x=1755952529;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ix6vXKCUbnKnqPEkpF9Bih2vIgrDcu1Z3BK9hyeomeA=;
 b=JrZJ5EM+6+zB1OEiQGium2GCJCsrw1B71shsiVWZqrOxoAmNSe8DdMDm
 mOtazdhwhdn5xscAPN1rmoAG8c/A3yilA8cXawlP0K/vPfvD4yfQL9P2X
 lgQERL82yhcEmW0KryHvrlEnhwCBciUgQzT8dwCdmNPhc5O9jEDjG0d2l
 pcNiNui8Q7yszF2Z4wJTqScZ6fF0vJuwJuX9LmLA1xqyfkkYm2NImX9KF
 7JRwY/Lc8shRmo1o8gynzeEKj8v/Ob9emHTXr/Xy7bkAkddqhHxPYRvIf
 1f0OPxvspLiFUzFYe3cAGIAbkfPWpk4Bd21Iz07+rJiflTSNKDxxd0+7K
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JrZJ5EM+
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
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   5315266844ea3b0b8b6be9842d5901e439fa838a
commit: 5f1a6826ea4900f8540d5eeb29f97796860f2d08 [36/53] staging: rtl8192e: remove set but otherwise unused local variable iv32
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408232049.UJef268y-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16' set but not used [-Wunused-but-set-variable]
     640 |                 u16 iv16 = tkey->tx_iv16;
         |                     ^
   1 warning generated.


vim +/iv16 +640 drivers/staging/rtl8192e/rtllib_crypt_tkip.c

ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  626  
94a799425eee82 drivers/staging/rtl8192e/rtllib_crypt_tkip.c              Larry Finger       2011-08-23  627  static int rtllib_tkip_get_key(void *key, int len, u8 *seq, void *priv)
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  628  {
94a799425eee82 drivers/staging/rtl8192e/rtllib_crypt_tkip.c              Larry Finger       2011-08-23  629  	struct rtllib_tkip_data *tkey = priv;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  630  
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  631  	if (len < TKIP_KEY_LEN)
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  632  		return -1;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  633  
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  634  	if (!tkey->key_set)
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  635  		return 0;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  636  	memcpy(key, tkey->key, TKIP_KEY_LEN);
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  637  
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  638  	if (seq) {
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  639  		/* Return the sequence number of the last transmitted frame. */
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04 @640  		u16 iv16 = tkey->tx_iv16;
3a6b70c3f3558a drivers/staging/rtl8192e/rtllib_crypt_tkip.c              Matthew Casey      2014-08-22  641  
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  642  		iv16--;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  643  		seq[0] = tkey->tx_iv16;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  644  		seq[1] = tkey->tx_iv16 >> 8;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  645  		seq[2] = tkey->tx_iv32;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  646  		seq[3] = tkey->tx_iv32 >> 8;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  647  		seq[4] = tkey->tx_iv32 >> 16;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  648  		seq[5] = tkey->tx_iv32 >> 24;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  649  	}
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  650  
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  651  	return TKIP_KEY_LEN;
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  652  }
ecdfa44610fa18 drivers/staging/rtl8192e/ieee80211/ieee80211_crypt_tkip.c Greg Kroah-Hartman 2009-08-04  653  

:::::: The code at line 640 was first introduced by commit
:::::: ecdfa44610fa18678c3dd481af75368b9800c6c7 Staging: add Realtek 8192 PCI wireless driver

:::::: TO: Greg Kroah-Hartman <gregkh@suse.de>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
