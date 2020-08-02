Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5812355E9
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 10:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7BE620483;
	Sun,  2 Aug 2020 08:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1tR43e4p+Zc; Sun,  2 Aug 2020 08:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A88220470;
	Sun,  2 Aug 2020 08:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21E641BF354
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 08:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E3562046A
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 08:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ZKoegWUUglk for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 08:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C951420468
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 08:07:25 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 60736160062
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 10:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1596355642; bh=86Z4B7YUBM0X0IAjeyX3W7qBbGjRKRNDaWib5h7AxFU=;
 h=Date:From:To:cc:Subject:From;
 b=nAaJczvcBTNDT9PQPb1zkCv7ppenrnsc9w+6DIC5IxpNSYpLdiWA/IIq4cwGiUKEK
 w4r/5njxcII552dLzSOI30gxlwXe3QOSF/QXluIs94bQfjDNax+MXMeeiK+aqX4Rsx
 b1lsB9zRwKEycgg+MFIGd042FD+EaFVFTfgeUl7GQHcbxvV+/9A77Mqitq6Ukk0ZfD
 /bMngq2VKQuzvTSaWpi1Kch+rfFJSdPp0kLHT4/s0fNxgsgxvgdfEghXabKzsU859n
 +7AtLcRse7oyoghWg3KTLvGRtfoLYl06HIAFoN8044Z/UM2X1Ma1sj1s/MTggWWSFB
 nLWO5t+zdGVQw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4BKDBw6l1zz9rxW;
 Sun,  2 Aug 2020 10:07:20 +0200 (CEST)
Date: Sun, 2 Aug 2020 10:07:20 +0200 (CEST)
From: Marc Dietrich <marvin24@posteo.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: =?ISO-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
In-Reply-To: <20200725125054.GB18633@qmqm.qmqm.pl>
Message-ID: <alpine.OSX.2.23.453.2008021001090.41131@macbook-pro.fritz.box>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
 <20200725120146.GB26689@qmqm.qmqm.pl>
 <5597e949-b93c-9133-efdb-9714637f9ebc@gmail.com>
 <20200725125054.GB18633@qmqm.qmqm.pl>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-1827979472-1596355641=:41131"
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
Cc: devel@driverdev.osuosl.org, Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>,
 gregkh@linuxfoundation.org, Dan Carpenter <dan.carpenter@oracle.com>,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--0-1827979472-1596355641=:41131
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

Hi,

On Sat, 25 Jul 2020, Micha³ Miros³aw wrote:

> On Sat, Jul 25, 2020 at 06:01:19PM +0530, Rohit K Bharadwaj wrote:
>> On 25/07/20 5:31 pm, Micha³ Miros³aw wrote:
>>> On Sat, Jul 25, 2020 at 11:59:39AM +0530, Rohit K Bharadwaj wrote:
>>>> changed usage of slave (which is deprecated) to secondary without breaking the driver
>>>
>>> The relevant I2C and SMBus standards use master/slave terminology. Why are
>>> you changing the names to something unfamiliar?
>>>
>>> If the reason are the recent coding-style changes, then please note they
>>> are about avoiding introducing *NEW* uses of the specific words and not
>>> about blindly replacing existing occurrences.
>>
>> I'm really sorry sir, I didn't knew about this, yes the reason for my change is according to the script checkpatch.pl to suit the coding style, I would try to fix some other coding style related issues if this patch seems to be a bad idea.
>
> I didn't know checkpatch does this (it doesn't in current Linus' master
> tree).  I can see there is a commit in next adding this, but seems that
> it uses a test far from the original coding-style wording...

given the discussion here [1] and also looking at the coding style patch 
here [2], I think this patch should not be applied. The slave term here 
comes from the I2C protocol (which we can't change) which is listed as an 
exception in [2], see below:

"+Exceptions for introducing new usage is to maintain a userspace ABI/API,
+or when updating code for an existing (as of 2020) hardware or protocol
+specification that mandates those terms. For new specifications
+translate specification usage of the terminology to the kernel coding
+standard where possible.
"

Marc

[1] https://lkml.org/lkml/2020/6/11/60
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/Documentation/process/coding-style.rst?id=a5f526ec


--0-1827979472-1596355641=:41131
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0-1827979472-1596355641=:41131--
