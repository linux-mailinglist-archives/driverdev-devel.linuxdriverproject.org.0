Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F1E45C98
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 14:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 587F487CB1;
	Fri, 14 Jun 2019 12:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGsvWpEeoTMv; Fri, 14 Jun 2019 12:19:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A60E8798E;
	Fri, 14 Jun 2019 12:19:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A02E31BF344
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 12:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AEA187AD2
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 12:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjYDcS8wOqYK for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 12:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C09B85CA8
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 12:19:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 05:19:24 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jun 2019 05:19:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hblAw-0002Rg-T4; Fri, 14 Jun 2019 20:19:22 +0800
Date: Fri, 14 Jun 2019 20:18:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 133/139]
 drivers/crypto/nx/nx_debugfs.c:51:19: error: void value not ignored as it
 ought to be
Message-ID: <201906142053.LbhiZdCO%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   27d0b4c0cd182361a817b61e9329ffcfea4edca7
commit: 1bb8a20835fa47c2d4507b092e0f8b9423e16d18 [133/139] debugfs: remove return value of debugfs_create_u32()
config: powerpc-defconfig (attached as .config)
compiler: powerpc64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 1bb8a20835fa47c2d4507b092e0f8b9423e16d18
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/crypto/nx/nx_debugfs.c: In function 'nx_debugfs_init':
>> drivers/crypto/nx/nx_debugfs.c:51:19: error: void value not ignored as it ought to be
     dfs->dfs_aes_ops =
                      ^
   drivers/crypto/nx/nx_debugfs.c:55:22: error: void value not ignored as it ought to be
     dfs->dfs_sha256_ops =
                         ^
   drivers/crypto/nx/nx_debugfs.c:60:22: error: void value not ignored as it ought to be
     dfs->dfs_sha512_ops =
                         ^
   drivers/crypto/nx/nx_debugfs.c:80:18: error: void value not ignored as it ought to be
     dfs->dfs_errors =
                     ^
   drivers/crypto/nx/nx_debugfs.c:84:22: error: void value not ignored as it ought to be
     dfs->dfs_last_error =
                         ^
   drivers/crypto/nx/nx_debugfs.c:89:26: error: void value not ignored as it ought to be
     dfs->dfs_last_error_pid =
                             ^

vim +51 drivers/crypto/nx/nx_debugfs.c

175e0e23 Kent Yoder 2012-04-12  36  
175e0e23 Kent Yoder 2012-04-12  37  /*
175e0e23 Kent Yoder 2012-04-12  38   * debugfs
175e0e23 Kent Yoder 2012-04-12  39   *
175e0e23 Kent Yoder 2012-04-12  40   * For documentation on these attributes, please see:
175e0e23 Kent Yoder 2012-04-12  41   *
175e0e23 Kent Yoder 2012-04-12  42   * Documentation/ABI/testing/debugfs-pfo-nx-crypto
175e0e23 Kent Yoder 2012-04-12  43   */
175e0e23 Kent Yoder 2012-04-12  44  
175e0e23 Kent Yoder 2012-04-12  45  int nx_debugfs_init(struct nx_crypto_driver *drv)
175e0e23 Kent Yoder 2012-04-12  46  {
175e0e23 Kent Yoder 2012-04-12  47  	struct nx_debugfs *dfs = &drv->dfs;
175e0e23 Kent Yoder 2012-04-12  48  
175e0e23 Kent Yoder 2012-04-12  49  	dfs->dfs_root = debugfs_create_dir(NX_NAME, NULL);
175e0e23 Kent Yoder 2012-04-12  50  
175e0e23 Kent Yoder 2012-04-12 @51  	dfs->dfs_aes_ops =
175e0e23 Kent Yoder 2012-04-12  52  		debugfs_create_u32("aes_ops",
175e0e23 Kent Yoder 2012-04-12  53  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  54  				   dfs->dfs_root, (u32 *)&drv->stats.aes_ops);
175e0e23 Kent Yoder 2012-04-12  55  	dfs->dfs_sha256_ops =
175e0e23 Kent Yoder 2012-04-12  56  		debugfs_create_u32("sha256_ops",
175e0e23 Kent Yoder 2012-04-12  57  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  58  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  59  				   (u32 *)&drv->stats.sha256_ops);
175e0e23 Kent Yoder 2012-04-12  60  	dfs->dfs_sha512_ops =
175e0e23 Kent Yoder 2012-04-12  61  		debugfs_create_u32("sha512_ops",
175e0e23 Kent Yoder 2012-04-12  62  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  63  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  64  				   (u32 *)&drv->stats.sha512_ops);
175e0e23 Kent Yoder 2012-04-12  65  	dfs->dfs_aes_bytes =
175e0e23 Kent Yoder 2012-04-12  66  		debugfs_create_u64("aes_bytes",
175e0e23 Kent Yoder 2012-04-12  67  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  68  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  69  				   (u64 *)&drv->stats.aes_bytes);
175e0e23 Kent Yoder 2012-04-12  70  	dfs->dfs_sha256_bytes =
175e0e23 Kent Yoder 2012-04-12  71  		debugfs_create_u64("sha256_bytes",
175e0e23 Kent Yoder 2012-04-12  72  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  73  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  74  				   (u64 *)&drv->stats.sha256_bytes);
175e0e23 Kent Yoder 2012-04-12  75  	dfs->dfs_sha512_bytes =
175e0e23 Kent Yoder 2012-04-12  76  		debugfs_create_u64("sha512_bytes",
175e0e23 Kent Yoder 2012-04-12  77  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  78  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  79  				   (u64 *)&drv->stats.sha512_bytes);
175e0e23 Kent Yoder 2012-04-12  80  	dfs->dfs_errors =
175e0e23 Kent Yoder 2012-04-12  81  		debugfs_create_u32("errors",
175e0e23 Kent Yoder 2012-04-12  82  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  83  				   dfs->dfs_root, (u32 *)&drv->stats.errors);
175e0e23 Kent Yoder 2012-04-12  84  	dfs->dfs_last_error =
175e0e23 Kent Yoder 2012-04-12  85  		debugfs_create_u32("last_error",
175e0e23 Kent Yoder 2012-04-12  86  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  87  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  88  				   (u32 *)&drv->stats.last_error);
175e0e23 Kent Yoder 2012-04-12  89  	dfs->dfs_last_error_pid =
175e0e23 Kent Yoder 2012-04-12  90  		debugfs_create_u32("last_error_pid",
175e0e23 Kent Yoder 2012-04-12  91  				   S_IRUSR | S_IRGRP | S_IROTH,
175e0e23 Kent Yoder 2012-04-12  92  				   dfs->dfs_root,
175e0e23 Kent Yoder 2012-04-12  93  				   (u32 *)&drv->stats.last_error_pid);
175e0e23 Kent Yoder 2012-04-12  94  	return 0;
175e0e23 Kent Yoder 2012-04-12  95  }
175e0e23 Kent Yoder 2012-04-12  96  

:::::: The code at line 51 was first introduced by commit
:::::: 175e0e23466185a861339796efc5b51958a48dc1 powerpc/crypto: debugfs routines and docs for the nx device driver

:::::: TO: Kent Yoder <key@linux.vnet.ibm.com>
:::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
8P8AvHKDbRaWAQA=

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--cNdxnHkX5QqsyA0e--
