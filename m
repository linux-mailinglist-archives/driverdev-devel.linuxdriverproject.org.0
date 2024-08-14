Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 519E9952102
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2024 19:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 870B4606D5;
	Wed, 14 Aug 2024 17:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xrjSxuGBjXeW; Wed, 14 Aug 2024 17:24:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59623606FA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59623606FA;
	Wed, 14 Aug 2024 17:24:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B16A1BF5F6
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 17:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5902A402BC
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hofKNOjpq4B for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2024 17:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E181940BEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E181940BEA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E181940BEA
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2024 17:24:30 +0000 (UTC)
X-CSE-ConnectionGUID: CUCdiswXQaihbLjiZiFqNA==
X-CSE-MsgGUID: dpNbTtPkQTedxvzyMQ4QQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="32564571"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="32564571"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 10:24:29 -0700
X-CSE-ConnectionGUID: B1w5T3AwRBejyYsR2BN9bw==
X-CSE-MsgGUID: DGOFRB0ZR8Kvs/uEdul9jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="89790981"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 14 Aug 2024 10:24:24 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seHjS-0002bz-1S;
 Wed, 14 Aug 2024 17:24:22 +0000
Date: Thu, 15 Aug 2024 01:24:21 +0800
From: kernel test robot <lkp@intel.com>
To: Li Li <dualli@chromium.org>, dualli@google.com,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, brauner@kernel.org,
 cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: Re: [PATCH v1] add binder genl for txn report
Message-ID: <202408150004.BAtK29zS-lkp@intel.com>
References: <20240812211844.4107494-1-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812211844.4107494-1-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723656271; x=1755192271;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/2nqj1zk1eK5KRY1Jy6nsIwDR99wK4nO4cOzT9n6K3s=;
 b=LR+EWNyAJA7xcUz2gz0LXeKeVm2jYh6wUxV+ZAzHdNPrxp+2D5P5DXA+
 seqSbeV8bnNgTXXiqoDevYKbdPbFHTC5dUmQFiQBhCkvzzpCJ9lQ2ugWb
 a45jprmEVIEFi0j61XrMKOaug4gxNaJNR9eMLZZwSHU6zH23CSUiarI0j
 03w3Sg5Onrf8xsXpVxKmZJmKPRW4poLmpMXz0QJFGXdHjNeNZV1ADXoJs
 SMIpZFWRWF4xGZX/2Vh7ulO2BVgJNXFvMNB56MWX8vIbriJ5BDlaGvmwN
 +qF2QN0TnrLWsHY2dDJE9D4rQZkqnlnjusBle2R+JRbN79tlM5WzfFhvq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LR+EWNyA
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
Cc: kernel-team@android.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Li,

kernel test robot noticed the following build errors:

[auto build test ERROR on staging/staging-testing]
[also build test ERROR on staging/staging-next staging/staging-linus linus/master v6.11-rc3 next-20240814]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Li-Li/add-binder-genl-for-txn-report/20240814-150338
base:   staging/staging-testing
patch link:    https://lore.kernel.org/r/20240812211844.4107494-1-dualli%40chromium.org
patch subject: [PATCH v1] add binder genl for txn report
config: x86_64-buildonly-randconfig-002-20240814 (https://download.01.org/0day-ci/archive/20240815/202408150004.BAtK29zS-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240815/202408150004.BAtK29zS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408150004.BAtK29zS-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/android/binder_genl.c:20: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * The registered process that would receive binder reports.
   drivers/android/binder_genl.c:25: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * The policy to verify the type of the binder genl data
>> drivers/android/binder_genl.c:102: warning: cannot understand function prototype: 'struct genl_small_ops binder_genl_ops[] = '
>> drivers/android/binder_genl.c:114: warning: cannot understand function prototype: 'struct genl_family binder_gnl_family = '
--
   ld: drivers/android/binder_genl.o: in function `binder_genl_cmd_doit':
>> binder_genl.c:(.text+0x38): undefined reference to `__alloc_skb'
>> ld: binder_genl.c:(.text+0x61): undefined reference to `genlmsg_put'
>> ld: binder_genl.c:(.text+0x83): undefined reference to `nla_put'
>> ld: binder_genl.c:(.text+0xb7): undefined reference to `init_net'
>> ld: binder_genl.c:(.text+0xbc): undefined reference to `netlink_unicast'
>> ld: binder_genl.c:(.text+0x135): undefined reference to `skb_trim'
>> ld: binder_genl.c:(.text+0x144): undefined reference to `sk_skb_reason_drop'
   ld: binder_genl.c:(.text+0x195): undefined reference to `sk_skb_reason_drop'
   ld: drivers/android/binder_genl.o: in function `binder_genl_send_report':
   binder_genl.c:(.text+0x21c): undefined reference to `__alloc_skb'
   ld: binder_genl.c:(.text+0x248): undefined reference to `genlmsg_put'
   ld: binder_genl.c:(.text+0x267): undefined reference to `nla_put'
   ld: binder_genl.c:(.text+0x298): undefined reference to `init_net'
   ld: binder_genl.c:(.text+0x29d): undefined reference to `netlink_unicast'
   ld: binder_genl.c:(.text+0x304): undefined reference to `skb_trim'
   ld: binder_genl.c:(.text+0x313): undefined reference to `sk_skb_reason_drop'
   ld: binder_genl.c:(.text+0x34c): undefined reference to `sk_skb_reason_drop'
   ld: drivers/android/binder_genl.o: in function `binder_genl_init':
>> binder_genl.c:(.init.text+0x12): undefined reference to `genl_register_family'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
