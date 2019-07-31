Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319987C254
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 14:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F339A87D35;
	Wed, 31 Jul 2019 12:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRKNktF2rKl0; Wed, 31 Jul 2019 12:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E0FF8763F;
	Wed, 31 Jul 2019 12:55:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE731BF32A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C2F885D4B
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-L1qqA4_h-n for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 12:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B44E385CF2
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 12:55:22 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B4C32D6B18BC1BD2DCE3;
 Wed, 31 Jul 2019 20:55:18 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.204) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 20:55:11 +0800
Subject: Re: [PATCH 08/22] staging: erofs: kill CONFIG_EROFS_FS_IO_MAX_RETRIES
To: Chao Yu <yuchao0@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-9-gaoxiang25@huawei.com>
 <1c979e3f-54ec-cce8-650c-39e060e72169@huawei.com>
 <2d7abbad-61d0-df2b-6a42-26f2606d775a@huawei.com>
 <985b3ca7-afee-006e-a367-98a865995246@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <845b43cb-3b9e-1b97-babe-a433078c4f9c@huawei.com>
Date: Wed, 31 Jul 2019 20:55:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <985b3ca7-afee-006e-a367-98a865995246@huawei.com>
X-Originating-IP: [10.151.23.176]
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/31 20:10, Chao Yu wrote:
> Hi Xiang,
> 
> On 2019/7/31 15:11, Gao Xiang wrote:
>> Hi Chao,
>>
>> On 2019/7/31 15:05, Chao Yu wrote:
>>> On 2019/7/29 14:51, Gao Xiang wrote:
>>>> CONFIG_EROFS_FS_IO_MAX_RETRIES seems a runtime setting
>>>> and users have no idea about the change in behaviour.
>>>>
>>>> Let's remove the setting currently and fold it into code,
>>>> turn it into a module parameter if it's really needed.
>>>>
>>>> Suggested-by: David Sterba <dsterba@suse.cz>
>>>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>>>
>>> It's fine to me, but I'd like to suggest to add this as a sys entry which can be
>>> more flexible for user to change.
>>
>> I think it can be added in the later version, the original view
>> from David is that he had question how users using this option.
>>
>> Maybe we can use the default value and leave it to users who
>> really need to modify this value (real requirement).
> 
> I think we need to decide it in this version, otherwise it may face backward
> compatibility issue if we change module argument to sys entry later.
> 
> Maybe just leave it as an fixed macro is fine, since there is actually no
> requirement on this.

OK, will fix it --- leave the fixed macro.

Thanks,
Gao Xiang

> 
> Thanks,
> 
>>
>> Thanks,
>> Gao Xiang
>>
>>>
>>> Thanks
>>>
>> .
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
