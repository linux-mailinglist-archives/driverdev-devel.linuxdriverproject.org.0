Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56922220A64
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 12:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21372893E4;
	Wed, 15 Jul 2020 10:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gaqd8vkI1qXu; Wed, 15 Jul 2020 10:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D0BF893E6;
	Wed, 15 Jul 2020 10:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 192A31BF282
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 10:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F4CF8A99B
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 10:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbmaUl5Go8NI for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 10:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m1546.mail.126.com (m1546.mail.126.com [220.181.15.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F9338A994
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 10:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=mzvz0
 4rM4BvMtyWqIGQECIt7tv5mDfJVjcsxyqY3H0w=; b=qNZeMWYCP4rUjNwW77aMr
 qbGJyq14PmXoECL0tiUlo3dTL4htcqVYKCtMVNms2ZXxa7VBkCLt0w5qq43q3Cwi
 QiqHQKmw8dBgzQd9SCa103QnGa1RZXzpRkO6WoAmBFDmjzRJSaa1ETK9eqBzzq0B
 POGTQIQ6zajAFIqh4IX/bg=
Received: from zhixu001$126.com ( [209.8.147.252] ) by ajax-webmail-wmsvr46
 (Coremail) ; Wed, 15 Jul 2020 18:45:21 +0800 (CST)
X-Originating-IP: [209.8.147.252]
Date: Wed, 15 Jul 2020 18:45:21 +0800 (CST)
From: Zhao  <zhixu001@126.com>
To: "Joe Perches" <joe@perches.com>, "Dan Carpenter" <dan.carpenter@oracle.com>,
 "Greg KH" <gregkh@linuxfoundation.org>
Subject: Re:Re: [PATCH v2] staging: gasket: core: Fix a coding style issue
 in gasket_core.c
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
In-Reply-To: <128a9f7de9885257736b3bb2648ea90bcbc2c760.camel@perches.com>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
 <20200715071748.GC2305231@kroah.com>
 <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
 <20200715075755.GA2516028@kroah.com> <20200715083727.GY2549@kadam>
 <128a9f7de9885257736b3bb2648ea90bcbc2c760.camel@perches.com>
MIME-Version: 1.0
Message-ID: <7d0444ff.5c46.17352142e11.Coremail.zhixu001@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LsqowADnPQVB3g5f9grRAA--.30433W
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiZwBifF16eYfrGQACsQ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
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
Cc: devel@driverdev.osuosl.org, rcy@google.com, toddpoynor@google.com,
 rspringer@google.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At 2020-07-15 17:04:06, "Joe Perches" <joe@perches.com> wrote:
>On Wed, 2020-07-15 at 11:37 +0300, Dan Carpenter wrote:
>> On Wed, Jul 15, 2020 at 09:57:55AM +0200, Greg KH wrote:
>> > On Wed, Jul 15, 2020 at 12:24:22AM -0700, Joe Perches wrote:
>> > > On Wed, 2020-07-15 at 09:17 +0200, Greg KH wrote:
>> > > > On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
>> > > > > On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
>> > > > > > A coding alignment issue is found by checkpatch.pl.
>> > > > > > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
>> > > > > > 
>> > > > > > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
>> > > > > 
>> > > > > Hi, there~
>> > > > > 
>> > > > > Does anybody have any further comments on this?
>> > > > > Can it be merged?
>> > > > 
>> > > > I never saw the first version of this, are you sure it got sent to the
>> > > > mailing list?  It's not in any archives anywhere.
>> > > 
>> > > I saw it.  It's here:
>> > > https://lore.kernel.org/lkml/20200617161127.32006-1-zhixu001@126.com/
>> > 
>> > Ah, doh, sorry.
>> > 
>> > Zhixu, please address the comments given to you on the series and resend
>> > it as a new version.
>> 
>> He responded but not as a reply to my email.  It turns out I made a
>> mistake.
>> 
>> Anyway, just resend, Zhixu.
>
>It's a pity a resend is being requested.
>
>It'd be a better process if the original patch could
>be applied via the link akin to a git pull.
>

Yes. All comments have been resolved by now. Patch v2 is sufficient.

As Dan said, there was a tailing thread because I mis-replied his mail.
 I just now replied that mail with a reference to the final resolution mail.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
