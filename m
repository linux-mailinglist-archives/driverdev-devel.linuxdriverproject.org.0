Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E338C5BA
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 03:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A3BF204AA;
	Wed, 14 Aug 2019 01:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNBVs+IE06ep; Wed, 14 Aug 2019 01:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6051920478;
	Wed, 14 Aug 2019 01:56:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A22EC1BF297
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 01:56:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F82F2035B
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 01:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-n917L-+RdG for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:56:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D09E20116
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 01:56:12 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B77759B7A0E52C4F5EDB;
 Wed, 14 Aug 2019 09:56:08 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.207) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 09:55:58 +0800
Subject: Re: [PATCH] staging: erofs: removing an extra call to iloc() in
 fill_inode()
To: Gao Xiang <gaoxiang25@huawei.com>, Pratik Shinde
 <pratikshinde320@gmail.com>
References: <20190813203840.13782-1-pratikshinde320@gmail.com>
 <20190814015944.GA11254@138>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <418907b6-0b6b-3b08-c6fd-939a206f061f@huawei.com>
Date: Wed, 14 Aug 2019 09:56:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190814015944.GA11254@138>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/8/14 9:59, Gao Xiang wrote:
> Hi Pratik,
> 
> On Wed, Aug 14, 2019 at 02:08:40AM +0530, Pratik Shinde wrote:
>> in fill_inode() we call iloc() twice.Avoiding the extra call by
>> storing the result.
>>
>> Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>
> 
> I have no objection of this patch, but I'd like to
> hear Chao/Greg's idea about this...

It looks more clean. :)

Nitpick, maybe change 'inode_loc' to shorter 'iloc' will be better.

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,

> 
> Thanks,
> Gao Xiang
> 
>> ---
>>  drivers/staging/erofs/inode.c | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
>> index 4c3d8bf..d82ba6c 100644
>> --- a/drivers/staging/erofs/inode.c
>> +++ b/drivers/staging/erofs/inode.c
>> @@ -167,11 +167,12 @@ static int fill_inode(struct inode *inode, int isdir)
>>  	int err;
>>  	erofs_blk_t blkaddr;
>>  	unsigned int ofs;
>> +	erofs_off_t inode_loc;
>>  
>>  	trace_erofs_fill_inode(inode, isdir);
>> -
>> -	blkaddr = erofs_blknr(iloc(sbi, vi->nid));
>> -	ofs = erofs_blkoff(iloc(sbi, vi->nid));
>> +	inode_loc = iloc(sbi, vi->nid);
>> +	blkaddr = erofs_blknr(inode_loc);
>> +	ofs = erofs_blkoff(inode_loc);
>>  
>>  	debugln("%s, reading inode nid %llu at %u of blkaddr %u",
>>  		__func__, vi->nid, ofs, blkaddr);
>> -- 
>> 2.9.3
>>
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
