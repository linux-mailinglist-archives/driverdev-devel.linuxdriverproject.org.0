Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C61DF357BE2
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Apr 2021 07:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16A0B84D34;
	Thu,  8 Apr 2021 05:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s74BFuyLjOvb; Thu,  8 Apr 2021 05:38:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A87284D13;
	Thu,  8 Apr 2021 05:38:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83EED1BF8B4
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 05:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73489400DB
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 05:38:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLTuBu8EgLTA for <devel@linuxdriverproject.org>;
 Thu,  8 Apr 2021 05:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D46C400D7
 for <devel@driverdev.osuosl.org>; Thu,  8 Apr 2021 05:38:00 +0000 (UTC)
IronPort-SDR: iRoK1V/hLUBp4dMKd+5zmD2H+rkHLQBrPI2YV8W7sy0Lf66/8PhSeAZR/aRXX0NGVyao3vXM7k
 DlEe5NorLNFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193508362"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="193508362"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 22:37:59 -0700
IronPort-SDR: AbcZfbtjBvlDxK1tvrS314ZPaAnn4Mnox1ypxmqG68Dy/HM1ZPfY716cvqPylIfYNo7wctp6lW
 zISgqjX/zJLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="396941063"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2021 22:37:58 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUNMb-000ELA-CH; Thu, 08 Apr 2021 05:37:57 +0000
Date: Thu, 08 Apr 2021 13:37:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:tty-test] BUILD REGRESSION
 bb57c5de81c6feaad869acce7c38b1049115ac75
Message-ID: <606e96ad.RrihwfEVzfbX+zAe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tty-test
branch HEAD: bb57c5de81c6feaad869acce7c38b1049115ac75  tty: move some internal tty lock enums and functions out of tty.h

Error/Warning in current branch:

drivers/tty/tty_buffer.c:604:40: error: 'TTY_LOCK_SLAVE' undeclared (first use in this function)
drivers/tty/tty_buffer.c:604:40: error: use of undeclared identifier 'TTY_LOCK_SLAVE'
drivers/tty/tty_mutex.c:59:43: error: 'TTY_LOCK_SLAVE' undeclared (first use in this function)
drivers/tty/tty_mutex.c:59:43: error: use of undeclared identifier 'TTY_LOCK_SLAVE'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arc-randconfig-c003-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arc-randconfig-r011-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arc-randconfig-r012-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arc-randconfig-r025-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arm-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arm-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arm64-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- arm64-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a001-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a002-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a003-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a004-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a005-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a006-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a011-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a012-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a013-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a014-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a015-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-a016-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-c001-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-c021-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-m021-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-r004-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-r006-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-r021-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-r024-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-s001-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- i386-randconfig-s002-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- microblaze-randconfig-r005-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- microblaze-randconfig-r024-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- microblaze-randconfig-r031-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- mips-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- mips-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- mips-randconfig-c003-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- openrisc-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- powerpc-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- powerpc-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- riscv-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- riscv-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- riscv-randconfig-s031-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- s390-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- s390-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- s390-randconfig-r023-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- s390-randconfig-r025-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sh-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc-randconfig-c024-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc-randconfig-r022-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc64-randconfig-c003-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc64-randconfig-r012-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- sparc64-randconfig-s032-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-randconfig-r001-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-randconfig-r023-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-randconfig-r024-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- um-randconfig-r026-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-allmodconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-allyesconfig
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a011-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a012-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a013-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a014-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a015-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-a016-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-c002-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-c022-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-m001-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-s021-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-randconfig-s022-20210407
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|-- x86_64-rhel-8.3-kselftests
|   |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
|   `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
`-- xtensa-allyesconfig
    |-- drivers-tty-tty_buffer.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)
    `-- drivers-tty-tty_mutex.c:error:TTY_LOCK_SLAVE-undeclared-(first-use-in-this-function)

clang_recent_errors
|-- mips-randconfig-r033-20210408
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- s390-randconfig-r032-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- s390-randconfig-r034-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a001-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a002-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a003-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a004-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a005-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|-- x86_64-randconfig-a006-20210407
|   |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
|   `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
`-- x86_64-randconfig-r003-20210407
    |-- drivers-tty-tty_buffer.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE
    `-- drivers-tty-tty_mutex.c:error:use-of-undeclared-identifier-TTY_LOCK_SLAVE

elapsed time: 732m

configs tested: 144
configs skipped: 4

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arc                          axs101_defconfig
powerpc                      chrp32_defconfig
arm                        keystone_defconfig
alpha                            allyesconfig
sh                            shmin_defconfig
mips                           ci20_defconfig
xtensa                         virt_defconfig
arm                         lubbock_defconfig
powerpc                     tqm8555_defconfig
s390                             alldefconfig
sh                           se7619_defconfig
powerpc                 mpc836x_mds_defconfig
mips                           ip28_defconfig
arm                         lpc18xx_defconfig
sh                               alldefconfig
powerpc               mpc834x_itxgp_defconfig
sh                             espt_defconfig
m68k                         amcore_defconfig
powerpc                   currituck_defconfig
sh                            hp6xx_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                         socfpga_defconfig
mips                      malta_kvm_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc8272_ads_defconfig
sh                   sh7770_generic_defconfig
arm                          collie_defconfig
arm                     eseries_pxa_defconfig
powerpc                    amigaone_defconfig
m68k                        m5407c3_defconfig
arm                           sama5_defconfig
xtensa                           alldefconfig
mips                      loongson3_defconfig
m68k                        stmark2_defconfig
arm                        spear3xx_defconfig
arm                         axm55xx_defconfig
sh                          kfr2r09_defconfig
mips                      fuloong2e_defconfig
arm                            pleb_defconfig
sh                        sh7757lcr_defconfig
m68k                            q40_defconfig
sparc                       sparc32_defconfig
mips                        nlm_xlr_defconfig
sh                          rsk7201_defconfig
arm                         cm_x300_defconfig
sh                          urquell_defconfig
arm                         bcm2835_defconfig
alpha                            alldefconfig
m68k                        m5307c3_defconfig
arm                      tct_hammer_defconfig
powerpc                         ps3_defconfig
x86_64                           alldefconfig
arm                            xcep_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8541_defconfig
mips                            ar7_defconfig
powerpc                        fsp2_defconfig
arm                       omap2plus_defconfig
nios2                         3c120_defconfig
powerpc                      ppc40x_defconfig
sh                         ap325rxa_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      bamboo_defconfig
arm                          iop32x_defconfig
mips                      pistachio_defconfig
arm                        trizeps4_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210407
i386                 randconfig-a003-20210407
i386                 randconfig-a001-20210407
i386                 randconfig-a004-20210407
i386                 randconfig-a002-20210407
i386                 randconfig-a005-20210407
x86_64               randconfig-a014-20210407
x86_64               randconfig-a015-20210407
x86_64               randconfig-a013-20210407
x86_64               randconfig-a011-20210407
x86_64               randconfig-a012-20210407
x86_64               randconfig-a016-20210407
i386                 randconfig-a014-20210407
i386                 randconfig-a011-20210407
i386                 randconfig-a016-20210407
i386                 randconfig-a012-20210407
i386                 randconfig-a015-20210407
i386                 randconfig-a013-20210407
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210407
x86_64               randconfig-a003-20210407
x86_64               randconfig-a005-20210407
x86_64               randconfig-a001-20210407
x86_64               randconfig-a002-20210407
x86_64               randconfig-a006-20210407

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
