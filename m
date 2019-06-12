Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B75042582
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 14:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 552EA8619E;
	Wed, 12 Jun 2019 12:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RCuGNpa5wSIN; Wed, 12 Jun 2019 12:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A1F585FE4;
	Wed, 12 Jun 2019 12:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC961BF3AD
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 12:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8930A20371
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 12:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mB7L+drFPbP for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 12:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 06E212035C
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 12:22:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 05:22:50 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jun 2019 05:22:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hb2HB-0009vD-B7; Wed, 12 Jun 2019 20:22:49 +0800
Date: Wed, 12 Jun 2019 20:22:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 77/85]
 drivers/net/wireless/intel/iwlegacy/4965-rs.c:2779:49: sparse: sparse:
 incorrect type in assignment (different base types)
Message-ID: <201906122037.dIF2Czrv%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   38bfd17b38b31dfc13afabb1742a23d5741b16d2
commit: 2cd2d7ff48151c0a5326606dbc48a00df3a4d596 [77/85] debugfs: remove return value of debugfs_create_u8()
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        git checkout 2cd2d7ff48151c0a5326606dbc48a00df3a4d596
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/wireless/intel/iwlegacy/4965-rs.c:2779:49: sparse: sparse: incorrect type in assignment (different base types) @@    expected struct dentry *rs_sta_dbgfs_tx_agg_tid_en_file @@    got ry *rs_sta_dbgfs_tx_agg_tid_en_file @@
>> drivers/net/wireless/intel/iwlegacy/4965-rs.c:2779:49: sparse:    expected struct dentry *rs_sta_dbgfs_tx_agg_tid_en_file
>> drivers/net/wireless/intel/iwlegacy/4965-rs.c:2779:49: sparse:    got void
--
   drivers/net/wireless/intel/iwlwifi/dvm/..//fw/file.h:325:19: sparse: sparse: mixed bitwiseness
   drivers/net/wireless/intel/iwlwifi/dvm/..//fw/file.h:470:19: sparse: sparse: mixed bitwiseness
>> drivers/net/wireless/intel/iwlwifi/dvm/rs.c:3283:49: sparse: sparse: incorrect type in assignment (different base types) @@    expected struct dentry *rs_sta_dbgfs_tx_agg_tid_en_file @@    got ry *rs_sta_dbgfs_tx_agg_tid_en_file @@
>> drivers/net/wireless/intel/iwlwifi/dvm/rs.c:3283:49: sparse:    expected struct dentry *rs_sta_dbgfs_tx_agg_tid_en_file
>> drivers/net/wireless/intel/iwlwifi/dvm/rs.c:3283:49: sparse:    got void

vim +2779 drivers/net/wireless/intel/iwlegacy/4965-rs.c

be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2765  
e7392364 drivers/net/wireless/iwlegacy/4965-rs.c       Stanislaw Gruszka 2011-11-15  2766  static void
e7392364 drivers/net/wireless/iwlegacy/4965-rs.c       Stanislaw Gruszka 2011-11-15  2767  il4965_rs_add_debugfs(void *il, void *il_sta, struct dentry *dir)
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2768  {
46bc8d4b drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Stanislaw Gruszka 2011-10-24  2769  	struct il_lq_sta *lq_sta = il_sta;
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2770  	lq_sta->rs_sta_dbgfs_scale_table_file =
2ef00c53 drivers/net/wireless/intel/iwlegacy/4965-rs.c Joe Perches       2018-03-23  2771  	    debugfs_create_file("rate_scale_table", 0600, dir,
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2772  				lq_sta, &rs_sta_dbgfs_scale_table_ops);
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2773  	lq_sta->rs_sta_dbgfs_stats_table_file =
2ef00c53 drivers/net/wireless/intel/iwlegacy/4965-rs.c Joe Perches       2018-03-23  2774  	    debugfs_create_file("rate_stats_table", 0400, dir, lq_sta,
e7392364 drivers/net/wireless/iwlegacy/4965-rs.c       Stanislaw Gruszka 2011-11-15  2775  				&rs_sta_dbgfs_stats_table_ops);
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2776  	lq_sta->rs_sta_dbgfs_rate_scale_data_file =
2ef00c53 drivers/net/wireless/intel/iwlegacy/4965-rs.c Joe Perches       2018-03-23  2777  	    debugfs_create_file("rate_scale_data", 0400, dir, lq_sta,
e7392364 drivers/net/wireless/iwlegacy/4965-rs.c       Stanislaw Gruszka 2011-11-15  2778  				&rs_sta_dbgfs_rate_scale_data_ops);
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21 @2779  	lq_sta->rs_sta_dbgfs_tx_agg_tid_en_file =
2ef00c53 drivers/net/wireless/intel/iwlegacy/4965-rs.c Joe Perches       2018-03-23  2780  	    debugfs_create_u8("tx_agg_tid_enable", 0600, dir,
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2781  			      &lq_sta->tx_agg_tid_en);
be663ab6 drivers/net/wireless/iwlegacy/iwl-4965-rs.c   Wey-Yi Guy        2011-02-21  2782  

:::::: The code at line 2779 was first introduced by commit
:::::: be663ab67077fac8e23eb8e231a8c1c94cb32e54 iwlwifi: split the drivers for agn and legacy devices 3945/4965

:::::: TO: Wey-Yi Guy <wey-yi.w.guy@intel.com>
:::::: CC: Wey-Yi Guy <wey-yi.w.guy@intel.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
