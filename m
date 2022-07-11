Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B76570AFA
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jul 2022 21:53:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 682E3402F3;
	Mon, 11 Jul 2022 19:53:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 682E3402F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4UBt1DlLf2hJ; Mon, 11 Jul 2022 19:53:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2666A40124;
	Mon, 11 Jul 2022 19:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2666A40124
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 802B41BF301
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 19:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59ECD60FA4
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 19:53:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59ECD60FA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cviq_3GFdO_A for <devel@linuxdriverproject.org>;
 Mon, 11 Jul 2022 19:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CB6660F67
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CB6660F67
 for <devel@driverdev.osuosl.org>; Mon, 11 Jul 2022 19:53:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="265166961"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="265166961"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 12:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="622214394"
Received: from lkp-server02.sh.intel.com (HELO 8708c84be1ad) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 11 Jul 2022 12:53:40 -0700
Received: from kbuild by 8708c84be1ad with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oAzTP-0001Aq-Pl;
 Mon, 11 Jul 2022 19:53:39 +0000
Date: Tue, 12 Jul 2022 03:53:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 39c1b1af3ea744c1f353a44146c2eea2ad916c53
Message-ID: <62cc7fa6.K4bfxFWsMhIsXAVA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657569222; x=1689105222;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Lo147wU/DdrVOx1s6/OerG/is2ngzfWJ9ECPbGiEeaQ=;
 b=kqRT7SHzZ82FDFKr+z7QCvYcVg2EmWVeOEDBB3ObdQ+6WO3D9Hh1Otv4
 0bYkBQ6Q5wZSx+JwX1BMy3iTKp9+HBO19KAGADDM8f73gtuJ/dSaCJMiY
 huMPMsqk0K798WxZeFUslHoynRVLEXnIojZAnpJN7DX9vh/vuV27jugay
 K5zXtjKoY3E9IDYkKedvdfJyt/txdM6tRmVl4bU2faerVK2zo8+sg4p9L
 zv+Ym160HdK1RU628DPOxzAVufM9+PaOwtvsK6MkwyvcoRiH8sj1UK3jo
 FTDH8hoLwGYPxSHV5hwbt6znO8OIjebedL5LP4VUFvYegHV/DqHB8jFfv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kqRT7SHz
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 39c1b1af3ea744c1f353a44146c2eea2ad916c53  Merge 5.19-rc6 into staging-next

elapsed time: 724m

configs tested: 13
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
