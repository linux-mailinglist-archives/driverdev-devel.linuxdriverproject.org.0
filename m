Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCA83239F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 10:56:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40A2B4309A;
	Wed, 24 Feb 2021 09:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mo8donq2tiTN; Wed, 24 Feb 2021 09:56:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 951504308C;
	Wed, 24 Feb 2021 09:56:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7801A1BF82B
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 09:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6711D606E0
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 09:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTQE-fhp4bfi for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 09:56:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4D396F5F0
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 09:56:38 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Dlrqx6LFrzjRHk;
 Wed, 24 Feb 2021 17:54:53 +0800 (CST)
Received: from [127.0.0.1] (10.69.38.196) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.498.0; Wed, 24 Feb 2021
 17:56:20 +0800
Subject: Re: [PATCH 1/4] driver core: Use subdir-ccflags-* to inherit debug
 flag
To: Daniel Thompson <daniel.thompson@linaro.org>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-2-git-send-email-yangyicong@hisilicon.com>
 <YB0Vk6ERJ3lFc3WD@kroah.com>
 <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
 <YCEWtxYgbRPET4Sr@kroah.com>
 <1f0b2f37-db56-c220-dfe1-8c376031404f@hisilicon.com>
 <20210210114203.jvhst2veqbx73r5g@maple.lan>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <ea4ff7f8-11c8-010c-7b6e-f7faa4e14db4@hisilicon.com>
Date: Wed, 24 Feb 2021 17:56:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20210210114203.jvhst2veqbx73r5g@maple.lan>
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
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2021/2/10 19:42, Daniel Thompson wrote:
> On Mon, Feb 08, 2021 at 09:09:20PM +0800, Yicong Yang wrote:
>> On 2021/2/8 18:47, Greg KH wrote:
>>> On Mon, Feb 08, 2021 at 06:44:52PM +0800, Yicong Yang wrote:
>>>> On 2021/2/5 17:53, Greg KH wrote:
>>>>> What does this offer in benefit of the existing way?  What is it fixing?
>>>>> Why do this "churn"?
>>>>
>>>> currently we have added ccflags-$(CONFIG_DEBUG_DRIVER) := -DDEBUG in the Makefile
>>>> of driver/base and driver/base/power, but not in the subdirectory
>>>> driver/base/firmware_loader. we cannot turn the debug on for subdirectory
>>>> firmware_loader if we config DEBUG_DRIVER and there is no kconfig option
>>>> for the it.
>>>
>>> Is that necessary?  Does that directory need it?
>>
>> there are several debug prints in firmware_loader/main.c:
>>
>> ./main.c:207:   pr_debug("%s: fw-%s fw_priv=%p\n", __func__, fw_name, fw_priv);
>> ./main.c:245:                   pr_debug("batched request - sharing the same struct fw_priv and lookup for multiple requests\n");
>> <snip>
> 
> Even if these are not in scope for CONFIG_DEBUG_DRVIER there is a
> config option that would allow you to observe them without changing
> any code (CONFIG_DYNAMIC_DEBUG).
> 

yes. they're two mechanisms of debug. i think it's the right thing to make
both work properly.

> 
> Daniel.
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
