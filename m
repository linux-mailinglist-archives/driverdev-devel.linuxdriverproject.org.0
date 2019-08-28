Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FDAA05BB
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 17:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E945523340;
	Wed, 28 Aug 2019 15:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xKyOGQb0vhmf; Wed, 28 Aug 2019 15:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 221A522E20;
	Wed, 28 Aug 2019 15:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B89BB1BF574
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5B1988575
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I0qsdWLqDnhU for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 15:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7559088551
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 15:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8YFvl0cLJd1ogxe77UjD+VFVK3dmu+mmfBCxAM+r4ro=; b=Vy8s6/PwyPpx7KsYu0/eABwEF
 OS+B1MbhlGcq7Qn4LhpOzipqdFfdd2NLvYf6rjq9y5ncbJf6Mh4Z0dJ7HugjoehduIPd+4Hn/LSRb
 0AUCxmbCMhGO3R5y0NnKgngxbfQKjA9OBuPbVzJ4oK2x5UNfiTckkogPjyNPcyltc2E1zEeAtd6gd
 1n6AGck5A4hPtGIO/9xxKJ7paQIJ1UlS2cIxWC4ZuBfessz4XdJ8xwOxd6sqMgjQiagXAzkgCz49N
 Pei5iRq7/cGpWNrLX0+FKDCzbJ5sCIAtAk679sP6SirDpnuQkZIR0xebfqAmPoBuvIikdKc1RAmXI
 WIWJuD5GQ==;
Received: from [2601:1c0:6200:6e8::4f71]
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zZq-0004zO-Pw; Wed, 28 Aug 2019 15:09:38 +0000
Subject: Re: [PATCH v2] staging: greybus: add missing includes
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rui Miguel Silva <rui.silva@linaro.org>
References: <20190827205917.8308-1-rui.silva@linaro.org>
 <20190828083519.GA29752@kroah.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0b740eb9-5ef4-8346-aa78-6b07bb060e7b@infradead.org>
Date: Wed, 28 Aug 2019 08:09:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828083519.GA29752@kroah.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/28/19 1:35 AM, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 09:59:17PM +0100, Rui Miguel Silva wrote:
>> Before moving greybus core out of staging and moving header files to
>> include/linux some greybus header files were missing the necessary
>> includes. This would trigger compilation faillures with some example
>> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
>>
>> So, add the necessary headers to compile clean before relocating the
>> header files.
>>
>> ./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
>>   int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
>> ./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
>>   __u8 data[0];
>>   ^~~~
>> ./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
>>   int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
>> ./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
>>   int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
>> ./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
>>   int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
>> ./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
>> u8 phase, unsigned int timeout);
>>      ^~
>> ./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
>>   int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
>> ./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
>>      size_t peer_space, unsigned int timeout);
>>      ^~~~~~
>> ./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
>> ./include/linux/greybus/hd.h:1:1:
>> +#include <stddef.h>
>>  /* SPDX-License-Identifier: GPL-2.0 */
>> ./include/linux/greybus/hd.h:29:5:
>>      size_t peer_space, unsigned int timeout);
>>      ^~~~~~
>> ./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
>>   int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
>> ./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
>>   int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
>> ./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
>> struct gb_message *message, gfp_t gfp_mask); ^~~~~
>> ./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
>>   int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);
>>
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Reported-by: Gao Xiang <hsiangkao@aol.com>
>> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
>> Acked-by: Alex Elder <elder@kernel.org>
>> ---
>>
>> v1->v2:
>> lkp@intel:
>>   - added greybus_protocols.h include to svc.h header
>> Alex Elder:
>>   - remove extra line in operation.h
>>
>> Looks like lkp can now find missing headers that we can not :),
>> it must be the config. but it is right.
>>
>> Greg please note the new include in svc.h may need to be changed
>> when moving headers to include/linux
> 
> As a version of your first patch is already in my tree, this one will
> not apply :(
> 
> Can you just send a fix-up patch against my staging-next branch instead?
> 
> thanks,
> 
> greg k-h
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> 

linux-next of 20190828 has these warnings:

./../include/linux/greybus/svc.h:91:18: warning: 'struct gb_svc_l2_timer_cfg' declared inside parameter list will not be visible outside of this definition or declaration
./../include/linux/greybus/operation.h:188:34: warning: 'struct gb_host_device' declared inside parameter list will not be visible outside of this definition or declaration


Are they fixed by some of these patches?

thanks.
-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
