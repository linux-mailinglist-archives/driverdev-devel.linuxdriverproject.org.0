Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5683F952100
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2024 19:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF65E60637;
	Wed, 14 Aug 2024 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GaiXvcz_OCdX; Wed, 14 Aug 2024 17:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCD0A60654
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCD0A60654;
	Wed, 14 Aug 2024 17:24:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA1341BF5F6
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 17:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E411740AF0
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 17:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ftgyGUbvOHE for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2024 17:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A2B3402BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A2B3402BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A2B3402BC
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2024 17:24:29 +0000 (UTC)
X-CSE-ConnectionGUID: 58+nrVtPQjmMcxPU9TEDnw==
X-CSE-MsgGUID: SLPlcFq0S+W1G6h9tmB1EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="32564560"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="32564560"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 10:24:29 -0700
X-CSE-ConnectionGUID: wffD7kcEScaJXp8C+mn8Ag==
X-CSE-MsgGUID: jJzill+7TK+s2hclhmnJyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="89790982"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 14 Aug 2024 10:24:24 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1seHjS-0002bs-1C;
 Wed, 14 Aug 2024 17:24:22 +0000
Date: Thu, 15 Aug 2024 01:24:22 +0800
From: kernel test robot <lkp@intel.com>
To: Li Li <dualli@chromium.org>, dualli@google.com,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, brauner@kernel.org,
 cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: Re: [PATCH v1] add binder genl for txn report
Message-ID: <202408150142.elc854F6-lkp@intel.com>
References: <20240812211844.4107494-1-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812211844.4107494-1-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723656270; x=1755192270;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lA+xgV+iDgHq0xbaiiQy3rlhIvSZnsZQd5TAPMVjzso=;
 b=WhbElZxSq0PC/Zzpybr4sDkmt9u8RlWqrIJfgQYzdm2P+0f1k5UyLMZ0
 WAvKEZkPtRe9xlkZH5QbqQNiW7ixi7DUEY6++2vEgQi2n4svPfdCGHKeu
 2MstTe0EhFVyJhjvVKwqsC2MTrMEEmHA03xTEsh+HjBKiXwBilRQi58q+
 BhjQ69bORUIYkx2ydnUDQfWcIdRnY/+ANVeG4dbOYBZm8KYu9AiEig3S+
 XkhVgmc/OXfTX8Ok4Qa3xAKrOPUbShvKMzRnliOGynwgbnNqy02eWOPQD
 KY1pHbClnWk4cB4XoC6QJEYPlZ6qd+/mJeIj8w4lAF9C0Gt5hnCbZkuiw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WhbElZxS
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
config: x86_64-buildonly-randconfig-005-20240814 (https://download.01.org/0day-ci/archive/20240815/202408150142.elc854F6-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240815/202408150142.elc854F6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408150142.elc854F6-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: vmlinux.o: in function `binder_genl_cmd_doit':
   binder_genl.c:(.text+0x1284e00): undefined reference to `__alloc_skb'
   ld: binder_genl.c:(.text+0x1284e2f): undefined reference to `genlmsg_put'
   ld: binder_genl.c:(.text+0x1284e5c): undefined reference to `nla_put'
   ld: binder_genl.c:(.text+0x1284e94): undefined reference to `init_net'
   ld: binder_genl.c:(.text+0x1284e9d): undefined reference to `netlink_unicast'
   ld: binder_genl.c:(.text+0x1284f04): undefined reference to `skb_trim'
   ld: binder_genl.c:(.text+0x1284f18): undefined reference to `sk_skb_reason_drop'
   ld: binder_genl.c:(.text+0x1284f72): undefined reference to `sk_skb_reason_drop'
   ld: vmlinux.o: in function `binder_genl_send_report':
>> (.text+0x12850d9): undefined reference to `__alloc_skb'
>> ld: (.text+0x128510a): undefined reference to `genlmsg_put'
>> ld: (.text+0x1285131): undefined reference to `nla_put'
>> ld: (.text+0x128516e): undefined reference to `init_net'
>> ld: (.text+0x1285173): undefined reference to `netlink_unicast'
>> ld: (.text+0x12851c2): undefined reference to `skb_trim'
>> ld: (.text+0x12851d6): undefined reference to `sk_skb_reason_drop'
   ld: (.text+0x128527a): undefined reference to `sk_skb_reason_drop'
   ld: vmlinux.o: in function `binder_genl_init':
>> (.init.text+0xa5bd7): undefined reference to `genl_register_family'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
