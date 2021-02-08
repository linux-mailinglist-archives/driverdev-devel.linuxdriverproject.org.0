Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3A8312F56
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 11:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA86485BE4;
	Mon,  8 Feb 2021 10:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YoGYGN3q79py; Mon,  8 Feb 2021 10:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93BD585A57;
	Mon,  8 Feb 2021 10:45:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD8A1BF3C9
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 802B0867B7
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ahcC2Mq0izEN for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 10:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07B86865D0
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 10:45:01 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DZ2gW6mNZz1658y;
 Mon,  8 Feb 2021 18:43:35 +0800 (CST)
Received: from [127.0.0.1] (10.69.38.196) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.498.0; Mon, 8 Feb 2021
 18:44:52 +0800
Subject: Re: [PATCH 1/4] driver core: Use subdir-ccflags-* to inherit debug
 flag
To: Greg KH <gregkh@linuxfoundation.org>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-2-git-send-email-yangyicong@hisilicon.com>
 <YB0Vk6ERJ3lFc3WD@kroah.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
Date: Mon, 8 Feb 2021 18:44:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <YB0Vk6ERJ3lFc3WD@kroah.com>
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

Hi Greg,

On 2021/2/5 17:53, Greg KH wrote:
> On Fri, Feb 05, 2021 at 05:44:12PM +0800, Yicong Yang wrote:
>> From: Junhao He <hejunhao2@hisilicon.com>
>>
>> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
>> settings from Kconfig when traversing subdirectories.
> 
> That says what you do, but not _why_ you are doing it.

i'll illustrate the reason and reword the commit.

> 
> What does this offer in benefit of the existing way?  What is it fixing?
> Why do this "churn"?

currently we have added ccflags-$(CONFIG_DEBUG_DRIVER) := -DDEBUG in the Makefile
of driver/base and driver/base/power, but not in the subdirectory
driver/base/firmware_loader. we cannot turn the debug on for subdirectory
firmware_loader if we config DEBUG_DRIVER and there is no kconfig option
for the it.

as there is no other debug config in the subdirectory of driver/base,
CONFIG_DEBUG_DRIVER may also mean turn on the debug in the subdirectories, so use
subdir-ccflags-* instead for the -DDEBUG will allow us to enable debug for all
the subdirectories.

Thanks,
Yicong

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
