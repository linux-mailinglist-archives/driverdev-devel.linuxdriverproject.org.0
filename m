Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ED93132F1
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 14:09:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38572868C4;
	Mon,  8 Feb 2021 13:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIFForcHTiK0; Mon,  8 Feb 2021 13:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED1AC867B0;
	Mon,  8 Feb 2021 13:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B00F1BF39C
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7732485A57
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdJHw7nD968j for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 13:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2344859D5
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 13:09:40 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DZ5tN1XMdz164TN;
 Mon,  8 Feb 2021 21:08:12 +0800 (CST)
Received: from [127.0.0.1] (10.69.38.196) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.498.0; Mon, 8 Feb 2021
 21:09:29 +0800
Subject: Re: [PATCH 1/4] driver core: Use subdir-ccflags-* to inherit debug
 flag
To: Greg KH <gregkh@linuxfoundation.org>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-2-git-send-email-yangyicong@hisilicon.com>
 <YB0Vk6ERJ3lFc3WD@kroah.com>
 <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
 <YCEWtxYgbRPET4Sr@kroah.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <1f0b2f37-db56-c220-dfe1-8c376031404f@hisilicon.com>
Date: Mon, 8 Feb 2021 21:09:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <YCEWtxYgbRPET4Sr@kroah.com>
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
 masahiroy@kernel.org, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2021/2/8 18:47, Greg KH wrote:
> On Mon, Feb 08, 2021 at 06:44:52PM +0800, Yicong Yang wrote:
>> Hi Greg,
>>
>> On 2021/2/5 17:53, Greg KH wrote:
>>> On Fri, Feb 05, 2021 at 05:44:12PM +0800, Yicong Yang wrote:
>>>> From: Junhao He <hejunhao2@hisilicon.com>
>>>>
>>>> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
>>>> settings from Kconfig when traversing subdirectories.
>>>
>>> That says what you do, but not _why_ you are doing it.
>>
>> i'll illustrate the reason and reword the commit.
>>
>>>
>>> What does this offer in benefit of the existing way?  What is it fixing?
>>> Why do this "churn"?
>>
>> currently we have added ccflags-$(CONFIG_DEBUG_DRIVER) := -DDEBUG in the Makefile
>> of driver/base and driver/base/power, but not in the subdirectory
>> driver/base/firmware_loader. we cannot turn the debug on for subdirectory
>> firmware_loader if we config DEBUG_DRIVER and there is no kconfig option
>> for the it.
> 
> Is that necessary?  Does that directory need it?

there are several debug prints in firmware_loader/main.c:

./main.c:207:   pr_debug("%s: fw-%s fw_priv=%p\n", __func__, fw_name, fw_priv);
./main.c:245:                   pr_debug("batched request - sharing the same struct fw_priv and lookup for multiple requests\n");
./main.c:269:   pr_debug("%s: fw-%s fw_priv=%p data=%p size=%u\n",
./main.c:594:   pr_debug("%s: fw-%s fw_priv=%p data=%p size=%u\n",
./main.c:605:           pr_debug("%s: fw_name-%s devm-%p released\n",
./main.c:1175:  pr_debug("%s: %s\n", __func__, fw_name);
./main.c:1181:  pr_debug("%s: %s ret=%d\n", __func__, fw_name, ret);
./main.c:1214:  pr_debug("%s: %s\n", __func__, fw_name);
./main.c:1272:          pr_debug("%s: fw: %s\n", __func__, name);
./main.c:1389:  pr_debug("%s\n", __func__);
./main.c:1415:  pr_debug("%s\n", __func__);


> 
> thanks,
> 
> greg k-h
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
