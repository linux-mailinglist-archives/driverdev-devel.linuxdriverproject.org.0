Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A92C21DED
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 20:57:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB10F318FD;
	Fri, 17 May 2019 18:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ddkm3Kmbqd83; Fri, 17 May 2019 18:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA92C318F1;
	Fri, 17 May 2019 18:56:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F01C1BF397
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 18:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4660C86B92
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 18:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1iom53c-oMr for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 18:56:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8076186B8E
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 18:56:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 11:56:35 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 11:56:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hRi1x-0009fO-6Y; Sat, 18 May 2019 02:56:33 +0800
Date: Sat, 18 May 2019 02:56:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 08/10] staging: kpc2000: move the i2c driver out of its
 subdirectory
Message-ID: <201905180207.O6TU0SIT%lkp@intel.com>
References: <20190517084945.2810-10-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517084945.2810-10-gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[cannot apply to v5.1 next-20190517]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Greg-Kroah-Hartman/staging-kpc2000-fix-a-bunch-of-orginization-and-header-file-issues/20190517-213909
reproduce:
        # apt-get install sparse
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/staging/kpc2000/kpc2000_i2c.c:141:14: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
>> drivers/staging/kpc2000/kpc2000_i2c.c:141:14: sparse:    expected void const volatile [noderef] <asn:2> *addr
>> drivers/staging/kpc2000/kpc2000_i2c.c:141:14: sparse:    got void *
>> drivers/staging/kpc2000/kpc2000_i2c.c:150:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
>> drivers/staging/kpc2000/kpc2000_i2c.c:150:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:150:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:151:18: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:151:18: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:151:18: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:172:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:174:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:177:18: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:177:18: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:177:18: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:181:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:181:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:181:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:200:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:200:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:200:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:201:18: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:201:18: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:201:18: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:224:5: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:224:5: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:224:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:229:18: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:229:18: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:229:18: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:237:5: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:237:5: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:237:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:251:18: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:251:18: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:251:18: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:258:5: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:258:5: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:258:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:268:5: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:268:5: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:268:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:273:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:273:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:273:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:275:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:275:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:275:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:285:15: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:285:15: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:285:15: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:292:34: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:292:34: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:292:34: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:316:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:316:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:316:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:317:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:317:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:317:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:334:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:334:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:334:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:337:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:337:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:337:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:343:22: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:343:22: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:343:22: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:351:19: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:351:19: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:351:19: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:355:24: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:355:24: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:355:24: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:356:21: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:356:21: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:356:21: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:358:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:358:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:358:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:366:30: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:366:30: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:366:30: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:369:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:369:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:369:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:372:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:372:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:372:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:382:5: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:383:10: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:383:10: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:383:10: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:455:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:455:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:455:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:461:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:461:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:461:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:463:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:463:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:463:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:469:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:469:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:469:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:470:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:470:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:470:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:472:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:472:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:472:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:478:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:478:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:478:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:479:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:479:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:479:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:481:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:481:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:481:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:482:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:482:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:482:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:488:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:488:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:488:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:489:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:489:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:489:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:496:13: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:496:13: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:496:13: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:500:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:500:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:500:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:502:17: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:502:17: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:502:17: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:513:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:516:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse:    expected void volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:533:9: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:552:26: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:552:26: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:552:26: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:556:26: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:556:26: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:556:26: sparse:    got void *
   drivers/staging/kpc2000/kpc2000_i2c.c:556:53: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const volatile [noderef] <asn:2> *addr @@    got n:2> *addr @@
   drivers/staging/kpc2000/kpc2000_i2c.c:556:53: sparse:    expected void const volatile [noderef] <asn:2> *addr
   drivers/staging/kpc2000/kpc2000_i2c.c:556:53: sparse:    got void *
>> drivers/staging/kpc2000/kpc2000_i2c.c:580:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:581:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:583:73: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:585:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:586:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:587:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:588:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:589:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:590:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:591:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:592:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:593:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:601:42: sparse: sparse: dubious: x | !y
   drivers/staging/kpc2000/kpc2000_i2c.c:602:42: sparse: sparse: dubious: x | !y
>> drivers/staging/kpc2000/kpc2000_i2c.c:617:5: sparse: sparse: symbol 'pi2c_probe' was not declared. Should it be static?
>> drivers/staging/kpc2000/kpc2000_i2c.c:682:17: sparse: sparse: Using plain integer as NULL pointer
   drivers/staging/kpc2000/kpc2000_i2c.c:684:36: sparse: sparse: Using plain integer as NULL pointer
>> drivers/staging/kpc2000/kpc2000_i2c.c:667:5: sparse: sparse: symbol 'pi2c_remove' was not declared. Should it be static?
>> drivers/staging/kpc2000/kpc2000_i2c.c:690:24: sparse: sparse: symbol 'i2c_plat_driver_i' was not declared. Should it be static?

vim +141 drivers/staging/kpc2000/kpc2000_i2c.c

7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  132  
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  133  /* Make sure the SMBus host is ready to start transmitting.
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  134     Return 0 if it is, -EBUSY if it is not. */
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  135  static int i801_check_pre(struct i2c_device *priv)
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  136  {
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  137      int status;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  138      
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  139      dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  140      
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19 @141      status = inb_p(SMBHSTSTS(priv));
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  142      if (status & SMBHSTSTS_HOST_BUSY) {
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  143          dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  144          return -EBUSY;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  145      }
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  146      
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  147      status &= STATUS_FLAGS;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  148      if (status) {
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  149          //dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19 @150          outb_p(status, SMBHSTSTS(priv));
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  151          status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  152          if (status) {
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  153            dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  154            return -EBUSY;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  155          }
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  156      }
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  157      return 0;
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  158  }
7dc7967f drivers/staging/kpc2000/kpc_i2c/i2c_driver.c Greg Kroah-Hartman 2019-04-19  159  

:::::: The code at line 141 was first introduced by commit
:::::: 7dc7967fc39af81191558f63eeaf3d2b83899b1c staging: kpc2000: add initial set of Daktronics drivers

:::::: TO: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
