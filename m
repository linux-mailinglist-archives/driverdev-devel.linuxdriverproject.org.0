Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0288AF49
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 08:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BA2122708;
	Tue, 13 Aug 2019 06:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id maYy2aGpR09n; Tue, 13 Aug 2019 06:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 114B3226E5;
	Tue, 13 Aug 2019 06:10:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42BE31BF31C
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 06:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3BE8987E54
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 06:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nqf3XJdiwoSX for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D9A7387E41
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 06:10:43 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 48E537F3B8CC13C0C464;
 Tue, 13 Aug 2019 14:10:40 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.205) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 13 Aug
 2019 14:10:32 +0800
Subject: Re: [PATCH 3/3] staging: erofs: xattr.c: avoid BUG_ON
To: Gao Xiang <gaoxiang25@huawei.com>
References: <20190813023054.73126-1-gaoxiang25@huawei.com>
 <20190813023054.73126-3-gaoxiang25@huawei.com>
 <84f50ca2-3411-36a6-049a-0d343d8df325@huawei.com>
 <20190813035754.GA23614@138>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <aa7660a6-b8a9-f22f-2616-f51c45dd52ac@huawei.com>
Date: Tue, 13 Aug 2019 14:10:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190813035754.GA23614@138>
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
 Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xiang,

On 2019/8/13 11:57, Gao Xiang wrote:
> Hi Chao,
> 
> On Tue, Aug 13, 2019 at 11:20:22AM +0800, Chao Yu wrote:
>> On 2019/8/13 10:30, Gao Xiang wrote:
>>> Kill all the remaining BUG_ON in EROFS:
>>>  - one BUG_ON was used to detect xattr on-disk corruption,
>>>    proper error handling should be added for it instead;
>>>  - the other BUG_ONs are used to detect potential issues,
>>>    use DBG_BUGON only in (eng) debugging version.
>>
>> BTW, do we need add WARN_ON() into DBG_BUGON() to show some details function or
>> call stack in where we encounter the issue?
> 
> Thanks for kindly review :)
> 
> Agreed, it seems much better. If there are no other considerations
> here, I can submit another patch addressing it later or maybe we
> can change it in the next linux version since I'd like to focusing
> on moving out of staging for this round...

No problem, we can change it in a proper time.

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>>
>>>
>>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
>>
>> Reviewed-by: Chao Yu <yuchao0@huawei.com>
>>
>> Thanks,
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
