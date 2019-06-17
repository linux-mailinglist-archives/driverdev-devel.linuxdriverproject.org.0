Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6427047798
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 03:26:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4107686F88;
	Mon, 17 Jun 2019 01:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9b56PJDAFMp; Mon, 17 Jun 2019 01:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 520E586947;
	Mon, 17 Jun 2019 01:26:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4FB1BF42D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 01:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B70C8558D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 01:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-Eve3OrW4CI for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 01:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B74384F5A
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 01:26:14 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3281799FBA00CC102677;
 Mon, 17 Jun 2019 09:26:11 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 17 Jun 2019 09:26:05 +0800
Subject: Re: [PATCH] staging: iio: adt7316: Add missing include files
To: Jonathan Cameron <jic23@kernel.org>
References: <20190614152846.28108-1-yuehaibing@huawei.com>
 <20190616141137.254a1291@archlinux>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <9732d7dc-a9a3-ee19-51fc-3aa8322423f3@huawei.com>
Date: Mon, 17 Jun 2019 09:26:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190616141137.254a1291@archlinux>
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, stefan.popa@analog.com,
 Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/6/16 21:11, Jonathan Cameron wrote:
> On Fri, 14 Jun 2019 23:28:46 +0800
> YueHaibing <yuehaibing@huawei.com> wrote:
> 
>> Fix build error:
>>
>> drivers/staging/iio/addac/adt7316.c: In function adt7316_store_update_DAC:
>> drivers/staging/iio/addac/adt7316.c:949:3: error: implicit declaration of
>>  function gpiod_set_value; did you mean gpio_set_value? [-Werror=implicit-function-declaration]
>>    gpiod_set_value(chip->ldac_pin, 0);
>>
>> drivers/staging/iio/addac/adt7316.c: In function adt7316_setup_irq:
>> drivers/staging/iio/addac/adt7316.c:1807:13: error: implicit declaration of
>>  function irqd_get_trigger_type; did you mean devm_iio_trigger_free? [-Werror=implicit-function-declaration]
>>   irq_type = irqd_get_trigger_type(irq_get_irq_data(chip->bus.irq));
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Fixes: 7f6b6d553df7 ("Staging: iio: adt7316: Add all irq related code in adt7316_irq_setup()")
>> Fixes: c63460c4298f ("Staging: iio: adt7316: Use device tree data to set ldac_pin")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> Hi yuehaibing,
> 
> You were second to send a fix for this. I've had it in my
> fixes branch since last week, but not done a pull request quite yet.
> I'll probably send it out later today.

Sorry, our robot report this again and I forgot this ...

> 
> https://patchwork.kernel.org/patch/10978301/
> 
> Thanks,
> 
> Jonathan
> 
>> ---
>>  drivers/staging/iio/addac/adt7316.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
>> index 37ce563..9d3d159 100644
>> --- a/drivers/staging/iio/addac/adt7316.c
>> +++ b/drivers/staging/iio/addac/adt7316.c
>> @@ -16,6 +16,8 @@
>>  #include <linux/i2c.h>
>>  #include <linux/rtc.h>
>>  #include <linux/module.h>
>> +#include <linux/irq.h>
>> +#include <linux/gpio/consumer.h>
>>  
>>  #include <linux/iio/iio.h>
>>  #include <linux/iio/events.h>
> 
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
