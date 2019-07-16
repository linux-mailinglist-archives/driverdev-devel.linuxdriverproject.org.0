Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D25E6A4E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 11:27:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CCFC21553;
	Tue, 16 Jul 2019 09:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pu8HaHCxv-Us; Tue, 16 Jul 2019 09:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C5E2F204D1;
	Tue, 16 Jul 2019 09:27:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF02E1BF303
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBDCF845D1
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 09:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-qsu541eFjx for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 09:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EFED84581
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:27:33 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C6C0368B39B3421BB8A8;
 Tue, 16 Jul 2019 17:27:30 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 16 Jul
 2019 17:27:22 +0800
Subject: Re: [PATCH] staging: erofs: avoid opened loop codes
To: Gao Xiang <gaoxiang25@huawei.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
References: <20190716085259.103481-1-yuchao0@huawei.com>
 <55609788-6615-72e1-78cc-9eadadce68a7@huawei.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <8f84339b-9300-df41-7d95-bfb344d9c4f3@huawei.com>
Date: Tue, 16 Jul 2019 17:27:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <55609788-6615-72e1-78cc-9eadadce68a7@huawei.com>
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
Cc: chao@kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xiang,

On 2019/7/16 17:12, Gao Xiang wrote:
> Hi Chao,
> 
> On 2019/7/16 16:52, Chao Yu wrote:
>> Use __GFP_NOFAIL to avoid opened loop codes in z_erofs_vle_unzip().
>>
>> Signed-off-by: Chao Yu <yuchao0@huawei.com>
>> ---
>>  drivers/staging/erofs/unzip_vle.c | 17 ++++++++---------
>>  1 file changed, 8 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
>> index f0dab81ff816..3a0dbcb8cc9f 100644
>> --- a/drivers/staging/erofs/unzip_vle.c
>> +++ b/drivers/staging/erofs/unzip_vle.c
>> @@ -921,18 +921,17 @@ static int z_erofs_vle_unzip(struct super_block *sb,
>>  		 mutex_trylock(&z_pagemap_global_lock))
>>  		pages = z_pagemap_global;
>>  	else {
>> -repeat:
>> -		pages = kvmalloc_array(nr_pages, sizeof(struct page *),
>> -				       GFP_KERNEL);
>> +		gfp_t flags = GFP_KERNEL;
>> +
>> +		if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
>> +			flags |= __GFP_NOFAIL;
>> +
>> +		pages = kvmalloc_array(nr_pages, sizeof(struct page *), flags);
> 
> How about omitting variable `flags' since it's only used once, or
> rename it since `flags' is too general?  some thoughts?

That's minor thing, if you do care about this, I guess 'gfp_flags' maybe?

> 
> BTW, This piece of code has been changed in
> "[PATCH v2 00/24] erofs: promote erofs from staging", I will sync the code
> after some guys takes a look at v2....

We have enough time to merge modified staging codes to generic fs one till next
merge window, so don't worry, you can do the merge in batch.

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>>  
>>  		/* fallback to global pagemap for the lowmem scenario */
>>  		if (unlikely(!pages)) {
>> -			if (nr_pages > Z_EROFS_VLE_VMAP_GLOBAL_PAGES)
>> -				goto repeat;
>> -			else {
>> -				mutex_lock(&z_pagemap_global_lock);
>> -				pages = z_pagemap_global;
>> -			}
>> +			mutex_lock(&z_pagemap_global_lock);
>> +			pages = z_pagemap_global;
>>  		}
>>  	}
>>  
>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
