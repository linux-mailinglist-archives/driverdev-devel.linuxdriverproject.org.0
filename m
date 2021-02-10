Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B13131628B
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 10:42:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D31586F676
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8I6OKz2HdTCv for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 09:42:46 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 878946F63D; Wed, 10 Feb 2021 09:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7F346F482;
	Wed, 10 Feb 2021 09:42:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 273011BF3A7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23B7F84BDF
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 09:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbJQQRuxxTLH for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 09:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A50284ABB
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:42:15 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DbFB74MS2z165Dl;
 Wed, 10 Feb 2021 17:40:47 +0800 (CST)
Received: from [127.0.0.1] (10.69.38.196) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.498.0; Wed, 10 Feb 2021
 17:42:01 +0800
Subject: Re: [PATCH v2 2/4] hwmon: Use subdir-ccflags-* to inherit debug flag
To: Guenter Roeck <linux@roeck-us.net>
References: <1612868899-9185-1-git-send-email-yangyicong@hisilicon.com>
 <1612868899-9185-3-git-send-email-yangyicong@hisilicon.com>
 <20210209150658.GA31002@roeck-us.net>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <128d71da-b07b-237c-d6a5-205513f3b093@hisilicon.com>
Date: Wed, 10 Feb 2021 17:42:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20210209150658.GA31002@roeck-us.net>
X-Originating-IP: [10.69.38.196]
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2021/2/9 23:06, Guenter Roeck wrote:
> On Tue, Feb 09, 2021 at 07:08:17PM +0800, Yicong Yang wrote:
>> From: Junhao He <hejunhao2@hisilicon.com>
>>
>> We use ccflags-$(CONFIG_HWMON_DEBUG_CHIP) for the debug
>> message in drivers/hwmon, but the DEBUG flag will not pass to
>> the subdirectory.
>>
>> Considering CONFIG_HWMON_DEBUG_CHIP intends to have DEBUG
>> recursively in driver/hwmon. It will be clearer
>> to use subdir-ccflags-* instead of ccflags-* to inherit
>> the debug settings from Kconfig when traversing subdirectories,
>> and it will avoid omittance of DEBUG define when debug messages
>> added in the subdirectories.
>>
> 
> The above paragraph doesn't add clarity and may as well be dropped.
> On the other side, the commit message still doesn't mention that
> pr_debug depends on DEBUG, which I am sure many people don't know
> or remember. This is the prime reason why this patch is acceptable,
> so it most definitely needs to be mentioned here.

sorry, i didn't realize that you mean this. will impove this in the next
version after the lunar new year holiday over.

Thanks,
Yicong

> 
> Guenter
> 
>> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
>> Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
>> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
>> ---
>>  drivers/hwmon/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
>> index 09a86c5..1c0c089 100644
>> --- a/drivers/hwmon/Makefile
>> +++ b/drivers/hwmon/Makefile
>> @@ -201,5 +201,5 @@ obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
>>  obj-$(CONFIG_SENSORS_OCC)	+= occ/
>>  obj-$(CONFIG_PMBUS)		+= pmbus/
>>  
>> -ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>> +subdir-ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>>  
>> -- 
>> 2.8.1
>>
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
