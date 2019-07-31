Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B287C0C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 14:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FD1485EF3;
	Wed, 31 Jul 2019 12:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42X57iCoxQ0W; Wed, 31 Jul 2019 12:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C789985EAE;
	Wed, 31 Jul 2019 12:10:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8108B1BF32A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7DBE285EC0
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myo8csPoETQd for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 12:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A21985E65
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 12:10:51 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1A25B41E2D691E92CF1D;
 Wed, 31 Jul 2019 20:10:48 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 20:10:40 +0800
Subject: Re: [PATCH 08/22] staging: erofs: kill CONFIG_EROFS_FS_IO_MAX_RETRIES
To: Gao Xiang <gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-9-gaoxiang25@huawei.com>
 <1c979e3f-54ec-cce8-650c-39e060e72169@huawei.com>
 <2d7abbad-61d0-df2b-6a42-26f2606d775a@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <985b3ca7-afee-006e-a367-98a865995246@huawei.com>
Date: Wed, 31 Jul 2019 20:10:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2d7abbad-61d0-df2b-6a42-26f2606d775a@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
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

Hi Xiang,

On 2019/7/31 15:11, Gao Xiang wrote:
> Hi Chao,
> 
> On 2019/7/31 15:05, Chao Yu wrote:
>> On 2019/7/29 14:51, Gao Xiang wrote:
>>> CONFIG_EROFS_FS_IO_MAX_RETRIES seems a runtime setting
>>> and users have no idea about the change in behaviour.
>>>
>>> Let's remove the setting currently and fold it into code,
>>> turn it into a module parameter if it's really needed.
>>>
>>> Suggested-by: David Sterba <dsterba@suse.cz>
>>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>>
>> It's fine to me, but I'd like to suggest to add this as a sys entry which can be
>> more flexible for user to change.
> 
> I think it can be added in the later version, the original view
> from David is that he had question how users using this option.
> 
> Maybe we can use the default value and leave it to users who
> really need to modify this value (real requirement).

I think we need to decide it in this version, otherwise it may face backward
compatibility issue if we change module argument to sys entry later.

Maybe just leave it as an fixed macro is fine, since there is actually no
requirement on this.

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>>
>> Thanks
>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
