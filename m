Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D9B5A99E
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 10:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E0468826E;
	Sat, 29 Jun 2019 08:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHm63F622l17; Sat, 29 Jun 2019 08:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FFEB878EA;
	Sat, 29 Jun 2019 08:38:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF2BD1BF348
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 08:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1C1585F8E
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 08:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPHnYAevzxt3 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 08:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C32A685F7C
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 08:38:49 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 41C8D1123E9AD6730A49;
 Sat, 29 Jun 2019 16:38:46 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 29 Jun
 2019 16:38:39 +0800
Subject: Re: [PATCH] staging: erofs: don't check special inode layout
To: Yue Hu <zbestahu@gmail.com>, Gao Xiang <gaoxiang25@huawei.com>
References: <20190628034234.8832-1-zbestahu@gmail.com>
 <276837dc-b18a-6f20-fc33-d988dff5ae9f@huawei.com>
 <20190628121952.000028fc.zbestahu@gmail.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <a3743d00-a5c8-6e2a-7b1b-f5111ca59009@huawei.com>
Date: Sat, 29 Jun 2019 16:38:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190628121952.000028fc.zbestahu@gmail.com>
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
 linux-erofs@lists.ozlabs.org, linux-kernel@vger.kernel.org, huyue2@yulong.com,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/6/28 12:19, Yue Hu wrote:
> On Fri, 28 Jun 2019 11:50:21 +0800
> Gao Xiang <gaoxiang25@huawei.com> wrote:
> 
>> Hi Yue,
>>
>> On 2019/6/28 11:42, Yue Hu wrote:
>>> From: Yue Hu <huyue2@yulong.com>
>>>
>>> Currently, we will check if inode layout is compression or inline if
>>> the inode is special in fill_inode(). Also set ->i_mapping->a_ops for
>>> it. That is pointless since the both modes won't be set for special
>>> inode when creating EROFS filesystem image. So, let's avoid it.
>>>
>>> Signed-off-by: Yue Hu <huyue2@yulong.com>  
>>
>> Have you test this patch with some actual image with legacy mkfs since
>> new mkfs framework have not supported special inode...
> 
> Hi Xiang,
> 
> I'm studying the testing :)
> 
> However, already check the code handling for special inode in leagcy mkfs as below:
> 
> ```c
>                 break;
>         case EROFS_FT_BLKDEV:
>         case EROFS_FT_CHRDEV:
>         case EROFS_FT_FIFO:
>         case EROFS_FT_SOCK:
>                 mkfs_rank_inode(d);
>                 break;
> 
>         default:
>                 erofs_err("inode[%s] file_type error =%d",
>                           d->i_fullpath,
> ```
> 
> No special inode layout operations, so this change should be fine.
> 
> Thx.
> 
>>
>> I think that is fine in priciple, however, in case to introduce some potential
>> issues, I will test this patch later. I will give a Reviewed-by tag after I tested
>> this patch.

This patch looks good to me, if this won't fail any tests from Xiang, you can add:

Reviewed-by: Chao Yu <yuchao0@huawei.com>

Thanks,

> 
> Thanks.
> 
>>
>> Thanks,
>> Gao Xiang
>>
>>> ---
>>>  drivers/staging/erofs/inode.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
>>> index 1433f25..2fe0f6d 100644
>>> --- a/drivers/staging/erofs/inode.c
>>> +++ b/drivers/staging/erofs/inode.c
>>> @@ -205,6 +205,7 @@ static int fill_inode(struct inode *inode, int isdir)
>>>  			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
>>>  			inode->i_op = &erofs_generic_iops;
>>>  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
>>> +			goto out_unlock;
>>>  		} else {
>>>  			err = -EIO;
>>>  			goto out_unlock;
>>>   
> 
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
