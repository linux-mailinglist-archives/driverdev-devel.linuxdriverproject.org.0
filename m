Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CF57C24E
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 14:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 963D48609C;
	Wed, 31 Jul 2019 12:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqdErohS-KMt; Wed, 31 Jul 2019 12:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8216D85E14;
	Wed, 31 Jul 2019 12:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A25BE1BF32A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FEB222049
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 12:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2BoT-y6NTBV4 for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 12:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id ABC672155F
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 12:54:36 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7A644391BE5A35679B38;
 Wed, 31 Jul 2019 20:54:33 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 20:54:26 +0800
Subject: Re: [PATCH 07/22] staging: erofs: remove redundant #include
 "internal.h"
To: Chao Yu <yuchao0@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
 <20190729065159.62378-8-gaoxiang25@huawei.com>
 <bae5fc5b-b2e1-0d74-6374-b1ae5835cbb9@huawei.com>
 <52072867-a9ae-5730-0ce4-47dd8dcb2d8c@huawei.com>
 <b261d2bf-bdc0-a418-1cac-dc142c7dc467@huawei.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <14ac0fe7-1742-875b-b01a-78b49cae303a@huawei.com>
Date: Wed, 31 Jul 2019 20:54:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b261d2bf-bdc0-a418-1cac-dc142c7dc467@huawei.com>
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



On 2019/7/31 20:07, Chao Yu wrote:
> Hi Xiang,
> 
> On 2019/7/31 15:08, Gao Xiang wrote:
>> Hi Chao,
>>
>> On 2019/7/31 15:03, Chao Yu wrote:
>>> On 2019/7/29 14:51, Gao Xiang wrote:
>>>> Because #include "internal.h" is included in xattr.h
>>>
>>> I think it would be better to remove "internal.h" in xattr.h, and include them
>>> both in .c file in where we need xattr definition.
>>
>> It seems that all xattr related source files needing internal.h,
>> and we need "EROFS_V(inode)", "struct erofs_sb_info", ... stuffs in xattr.h,
>> which is defined in internal.h...
> 
> Since I checked f2fs', it looks it's okay to don't include internal.h for
> xattr.h, if .c needs xattr.h, we can just include interanl.h and xattr.h in the
> head of it, it's safe.

I think xattr.h should be used independently (all dependencies of xattr.h should
be included in xattr.h, most of include files behave like that)... Maybe it is
not a good way to follow f2fs...

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
>>> Thanks,
>>>
>> .
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
