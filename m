Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE05312F7F
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 11:52:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09695868D0;
	Mon,  8 Feb 2021 10:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdSihq6TIr48; Mon,  8 Feb 2021 10:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BE2F867E0;
	Mon,  8 Feb 2021 10:52:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6671BF3C9
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D1DD86F9F
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHIsY4whmrAk for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 10:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 66B8A86F77
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 10:52:08 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DZ2qk2zrjzjKdR;
 Mon,  8 Feb 2021 18:50:42 +0800 (CST)
Received: from [127.0.0.1] (10.69.38.196) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.498.0; Mon, 8 Feb 2021
 18:51:58 +0800
Subject: Re: [PATCH 2/4] hwmon: Use subdir-ccflags-* to inherit debug flag
To: Bjorn Helgaas <helgaas@kernel.org>, Guenter Roeck <linux@roeck-us.net>
References: <20210205200859.GA193526@bjorn-Precision-5520>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <2513dca6-2460-5f9d-c482-ff2c179d9c94@hisilicon.com>
Date: Mon, 8 Feb 2021 18:51:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20210205200859.GA193526@bjorn-Precision-5520>
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
 michal.lkml@markovi.net, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2021/2/6 4:08, Bjorn Helgaas wrote:
> On Fri, Feb 05, 2021 at 10:28:32AM -0800, Guenter Roeck wrote:
>> On Fri, Feb 05, 2021 at 05:44:13PM +0800, Yicong Yang wrote:
>>> From: Junhao He <hejunhao2@hisilicon.com>
>>>
>>> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
>>> settings from Kconfig when traversing subdirectories.
>>>
>>> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
>>> Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
>>> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
>>
>> What problem does this fix ? Maybe I am missing it, but I don't see
>> DEBUG being used in a subdirectory of drivers/hwmon.
> 
> It's my fault for raising this question [1].  Yicong fixed a real
> problem in drivers/pci, where we are currently using
> 
>   ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
> 
> so CONFIG_PCI_DEBUG=y turns on debug in drivers/pci, but not in the
> subdirectories.  That's surprising to users.
> 
> So my question was whether we should default to using subdir-ccflags
> for -DDEBUG in general, and only use ccflags when we have
> subdirectories that have their own debug options, e.g.,
> 
>   drivers/i2c/Makefile:ccflags-$(CONFIG_I2C_DEBUG_CORE) := -DDEBUG
>   drivers/i2c/algos/Makefile:ccflags-$(CONFIG_I2C_DEBUG_ALGO) := -DDEBUG
>   drivers/i2c/busses/Makefile:ccflags-$(CONFIG_I2C_DEBUG_BUS) := -DDEBUG
>   drivers/i2c/muxes/Makefile:ccflags-$(CONFIG_I2C_DEBUG_BUS) := -DDEBUG
> 
> I mentioned drivers/hwmon along with a few others that have
> subdirectories, do not have per-subdirectory debug options, and use
> ccflags.  I didn't try to determine whether those subdirectories
> currently use -DDEBUG.
> 
> In the case of drivers/hwmon, several drivers do use pr_debug(),
> and CONFIG_HWMON_DEBUG_CHIP=y turns those on.  But if somebody
> were to add pr_debug() to drivers/hwmon/occ/common.c, for example,
> CONFIG_HWMON_DEBUG_CHIP=y would *not* turn it on.  That sounds
> surprising to me, but if that's what you intend, that's totally fine.

i thought CONFIG_HWMON_DEBUG_CHIP=y means to enable debug including the
subdirectories, so use subdir-ccflags-* will make sure the debug
message on in the subdirectories, if there will be.

please let me know if i understand wrong.

Thanks,
Yicong

> 
> [1] https://lore.kernel.org/r/20210204161048.GA68790@bjorn-Precision-5520
> 
>>> ---
>>>  drivers/hwmon/Makefile | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
>>> index 09a86c5..1c0c089 100644
>>> --- a/drivers/hwmon/Makefile
>>> +++ b/drivers/hwmon/Makefile
>>> @@ -201,5 +201,5 @@ obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
>>>  obj-$(CONFIG_SENSORS_OCC)	+= occ/
>>>  obj-$(CONFIG_PMBUS)		+= pmbus/
>>>  
>>> -ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>>> +subdir-ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>>>  
>>> -- 
>>> 2.8.1
>>>
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
