Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CA6149CC5
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 21:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47E6E859D6;
	Sun, 26 Jan 2020 20:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ganACeWq5qzd; Sun, 26 Jan 2020 20:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6820E84083;
	Sun, 26 Jan 2020 20:12:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 690891BF420
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 20:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65A2385754
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 20:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5_mYUJ3HO1L for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 20:12:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8676D84083
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 20:12:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 12:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,366,1574150400"; d="scan'208";a="401166249"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2020 12:12:12 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivoGR-0006gg-Mg; Mon, 27 Jan 2020 04:12:11 +0800
Date: Mon, 27 Jan 2020 04:11:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 06/22] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
Message-ID: <202001270446.AI1Wgghb%lkp@intel.com>
References: <20200124144617.2213-7-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124144617.2213-7-nsaenzjulienne@suse.de>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 kbuild-all@lists.01.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Nicolas,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on linux/master linus/master v5.5-rc7 next-20200121]
[cannot apply to anholt/for-next]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Nicolas-Saenz-Julienne/staging-vc04_services-suspend-resume-cleanup/20200125-193041
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git fc157998b8257fb9cfe753e7f4af1411da995c9b
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-153-g47b6dfef-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse:    expected struct vchiq_header *header
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1239:60: sparse:    got void [noderef] <asn:1> *[addressable] msgbuf
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse:    expected int enum vchiq_status ( *__pu_val )( ... )
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1508:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1510:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1636:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1638:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse:    expected struct vchiq_completion_data *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1713:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse:    expected void **__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1716:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse:    expected struct vchiq_completion_data *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1763:13: sparse:    got struct vchiq_completion_data [noderef] <asn:1> *[assigned] completion
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1793:59: sparse:    got struct vchiq_header *[addressable] header
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1795:45: sparse:    got void *[addressable] service_userdata
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse: sparse: incorrect type in argument 1 (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse:    expected void [noderef] <asn:1> *uptr
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1797:45: sparse:    got void *[addressable] bulk_userdata
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse: sparse: incorrect type in assignment (different address spaces)
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse:    expected void *__pu_val
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1851:13: sparse:    got void [noderef] <asn:1> *
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2257:1: sparse: sparse: symbol 'vchiq_videocore_wanted' was not declared. Should it be static?
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2879:1: sparse: sparse: symbol 'vchiq_dump_service_use_state' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
