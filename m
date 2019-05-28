Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F5C2C85A
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 16:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F1F23059A;
	Tue, 28 May 2019 14:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrUaMVmQxXf7; Tue, 28 May 2019 14:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A65FC30048;
	Tue, 28 May 2019 14:10:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF9211BF309
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CBE4484520
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XT_SNDy1jt33 for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 14:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D369784403
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 14:10:52 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B52CB8CCC9D50648A2C0;
 Tue, 28 May 2019 22:10:49 +0800 (CST)
Received: from [127.0.0.1] (10.177.31.96) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 22:10:45 +0800
Subject: Re: [PATCH -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
To: Sven Van Asbroeck <thesven73@gmail.com>
References: <20190528133214.21776-1-yuehaibing@huawei.com>
 <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
From: YueHaibing <yuehaibing@huawei.com>
Message-ID: <a98ba89b-59d6-3a3b-a342-2f3de796c0a2@huawei.com>
Date: Tue, 28 May 2019 22:10:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/5/28 21:41, Sven Van Asbroeck wrote:
> Hello YueHaibing,
> 
> On Tue, May 28, 2019 at 9:33 AM YueHaibing <yuehaibing@huawei.com> wrote:
>>
>> Fix gcc build error while CONFIG_REGMAP_MMIO is not set
>>
>> drivers/staging/fieldbus/anybuss/arcx-anybus.o: In function `controller_probe':
>> arcx-anybus.c:(.text+0x9d6): undefined reference to `__devm_regmap_init_mmio_clk'
>>
>> Select REGMAP_MMIO to fix it.
> 
> Thank you for noticing this, I appreciate it !
> 
> However, when I run this patch through the scripts/checkpatch.pl
> script, it reports
> some issues. Could you fix and post v2 please?
> 
> checkpatch.pl output follows:
> 
> WARNING: Possible unwrapped commit description (prefer a maximum 75
> chars per line)
> #68:
> arcx-anybus.c:(.text+0x9d6): undefined reference to
> `__devm_regmap_init_mmio_clk'
> 
> ERROR: DOS line endings
> #87: FILE: drivers/staging/fieldbus/anybuss/Kconfig:17:
> +^Iselect REGMAP_MMIO^M$
> 
> total: 1 errors, 1 warnings, 0 checks, 7 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inplace.
> 
> Your patch has style problems, please review.

Thanks, will fix it in v2.

> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
