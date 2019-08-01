Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A77D2DC
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 03:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CB7D86B9E;
	Thu,  1 Aug 2019 01:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pRukTye5sOlL; Thu,  1 Aug 2019 01:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01C1F86B0E;
	Thu,  1 Aug 2019 01:31:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84A231BF5A6
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 01:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81A1586B0E
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 01:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 20lUpTw3P7bB for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 01:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1AC3485C3B
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 01:31:33 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E2944ED38F34723C517A;
 Thu,  1 Aug 2019 09:31:30 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.209) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 1 Aug 2019
 09:31:23 +0800
Subject: Re: [PATCH 07/22] staging: erofs: remove redundant #include
 "internal.h"
To: Gao Xiang <gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-8-gaoxiang25@huawei.com>
 <bae5fc5b-b2e1-0d74-6374-b1ae5835cbb9@huawei.com>
 <52072867-a9ae-5730-0ce4-47dd8dcb2d8c@huawei.com>
 <b261d2bf-bdc0-a418-1cac-dc142c7dc467@huawei.com>
 <14ac0fe7-1742-875b-b01a-78b49cae303a@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <efc9e26a-1a01-af2b-0e48-90b255b98348@huawei.com>
Date: Thu, 1 Aug 2019 09:31:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <14ac0fe7-1742-875b-b01a-78b49cae303a@huawei.com>
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

On 2019/7/31 20:54, Gao Xiang wrote:
> 
> 
> On 2019/7/31 20:07, Chao Yu wrote:
>> Hi Xiang,
>>
>> On 2019/7/31 15:08, Gao Xiang wrote:
>>> Hi Chao,
>>>
>>> On 2019/7/31 15:03, Chao Yu wrote:
>>>> On 2019/7/29 14:51, Gao Xiang wrote:
>>>>> Because #include "internal.h" is included in xattr.h
>>>>
>>>> I think it would be better to remove "internal.h" in xattr.h, and include them
>>>> both in .c file in where we need xattr definition.
>>>
>>> It seems that all xattr related source files needing internal.h,
>>> and we need "EROFS_V(inode)", "struct erofs_sb_info", ... stuffs in xattr.h,
>>> which is defined in internal.h...
>>
>> Since I checked f2fs', it looks it's okay to don't include internal.h for
>> xattr.h, if .c needs xattr.h, we can just include interanl.h and xattr.h in the
>> head of it, it's safe.
> 
> I think xattr.h should be used independently (all dependencies of xattr.h should
> be included in xattr.h, most of include files behave like that)... Maybe it is
> not a good way to follow f2fs...

Yes, I've confirmed it's fine to do this, let's go ahead. :)

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>>
>> Thanks,
>>
>>>
>>> Thanks,
>>> Gao Xiang
>>>
>>>>
>>>> Thanks,
>>>>
>>> .
>>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
