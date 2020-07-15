Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A84220A35
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 12:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF26C8AC1B;
	Wed, 15 Jul 2020 10:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2OJqgQsp0mZJ; Wed, 15 Jul 2020 10:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 677E58ABC8;
	Wed, 15 Jul 2020 10:39:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 968461BF282
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 10:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 879B42278E
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 10:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhDACZJfDtfz for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 10:39:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from m1546.mail.126.com (m1546.mail.126.com [220.181.15.46])
 by silver.osuosl.org (Postfix) with ESMTPS id BD62522786
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 10:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=l+5iM
 3D5BnZ7Ni0vfl5SLJydG/G2uh+bEcSaCcktys4=; b=P7aCLf3QDNRvyuYSKbNhk
 ijQm42qzc2bYSDhSR4CQm0/iNRuBbm2TnirFPzChQAdU5XuA2MckMhBWLRDOxSFs
 cGy3e2aiO7kE2eWxgc9MDFT7blCAekQe4zDuLm0RFC4EckMmmziyaaXslHuchMom
 XO6CNBy4sIdKJNNtAdH7BM=
Received: from zhixu001$126.com ( [209.8.147.252] ) by ajax-webmail-wmsvr46
 (Coremail) ; Wed, 15 Jul 2020 18:38:55 +0800 (CST)
X-Originating-IP: [209.8.147.252]
Date: Wed, 15 Jul 2020 18:38:55 +0800 (CST)
From: Zhao  <zhixu001@126.com>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
In-Reply-To: <20200617191002.GP4151@kadam>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200617191002.GP4151@kadam>
MIME-Version: 1.0
Message-ID: <782deb83.5bf6.173520e4cef.Coremail.zhixu001@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LsqowAB3zgXA3A5fkwrRAA--.31047W
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiZwBifF16eYfrGQAAsS
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Joe Perches <joe@perches.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At 2020-06-18 03:10:02, "Dan Carpenter" <dan.carpenter@oracle.com> wrote:
>On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
>> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
>> index 67325fbaf760..28dab302183b 100644
>> --- a/drivers/staging/gasket/gasket_core.c
>> +++ b/drivers/staging/gasket/gasket_core.c
>> @@ -261,6 +261,7 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
>>  	const struct gasket_driver_desc *driver_desc =
>>  		internal_desc->driver_desc;
>>  	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
>                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>Get rid of this as well (below).
>
>> +	struct gasket_bar_data *data;
>>  	int ret;
>>  
>>  	if (desc_bytes == 0)
>> @@ -270,31 +271,32 @@ static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
>>  		/* not PCI: skip this entry */
>>  		return 0;
>>  	}
>> +
>> +	data = &gasket_dev->bar_data[bar_num];
>
>It would be better to do this in the declaration block so you can change
>the earlier two uses in this function:
>
>+	struct gasket_bar_data *data = &gasket_dev->bar_data[bar_num];
>-	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
>+	ulong desc_bytes = data->size;
>
>...
>
>-	if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
>+	if (data->type != PCI_BAR) {
>
>regards,
>dan carpenter

This issue has been resolved in  https://lore.kernel.org/lkml/20200618140327.GS4151@kadam/

Zhixu
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
