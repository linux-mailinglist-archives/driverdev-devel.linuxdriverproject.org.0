Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF4395D437
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2024 19:22:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79F9F40939;
	Fri, 23 Aug 2024 17:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g_FB4PXNDCCt; Fri, 23 Aug 2024 17:22:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D43340D9F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D43340D9F;
	Fri, 23 Aug 2024 17:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6D81BF314
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 17:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B0224016F
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 17:22:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IDJm1AUcJhl5 for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2024 17:22:37 +0000 (UTC)
X-Greylist: delayed 346 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 23 Aug 2024 17:22:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8966B4015E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8966B4015E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=206.189.110.174;
 helo=zeeaster.vergenet.net;
 envelope-from=srs0=g8qx=pw=verge.net.au=horms@vergenet.net;
 receiver=<UNKNOWN> 
Received: from zeeaster.vergenet.net (zeeaster.vergenet.net [206.189.110.174])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8966B4015E
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2024 17:22:37 +0000 (UTC)
Received: from madeliefje.horms.nl
 (haye-23-b2-v4wan-167567-cust3213.vm28.cable.virginm.net [82.40.60.142])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by zeeaster.vergenet.net (Postfix) with ESMTPSA id 7EB1E2024E;
 Fri, 23 Aug 2024 17:16:49 +0000 (UTC)
Received: by madeliefje.horms.nl (Postfix, from userid 7100)
 id 3633D2AC6; Fri, 23 Aug 2024 18:16:49 +0100 (BST)
Date: Fri, 23 Aug 2024 18:16:49 +0100
From: Simon Horman <simon@horms.net>
To: kernel test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 36/53]
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16'
 set but not used
Message-ID: <20240823171649.GZ2164@vergenet.net>
References: <202408232049.UJef268y-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202408232049.UJef268y-lkp@intel.com>
X-Virus-Scanned: clamav-milter 0.103.10 at zeeaster
X-Virus-Status: Clean
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=horms.net
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

On Fri, Aug 23, 2024 at 08:35:15PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   5315266844ea3b0b8b6be9842d5901e439fa838a
> commit: 5f1a6826ea4900f8540d5eeb29f97796860f2d08 [36/53] staging: rtl8192e: remove set but otherwise unused local variable iv32
> config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/config)
> compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202408232049.UJef268y-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16' set but not used [-Wunused-but-set-variable]
>      640 |                 u16 iv16 = tkey->tx_iv16;
>          |                     ^
>    1 warning generated.

Sorry about this.

It seems that my patch, cited above, which removed a set but otherwise
unused variable results in iv16 being set but otherwise unused.

I'll prepare a follow-up patch to address this.

...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
