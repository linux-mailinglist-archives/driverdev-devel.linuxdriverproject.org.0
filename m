Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 572BB5F6A7
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 12:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5DEA7860C6;
	Thu,  4 Jul 2019 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p4hSBlowCU_0; Thu,  4 Jul 2019 10:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3608A860CF;
	Thu,  4 Jul 2019 10:31:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24E1C1BF23B
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 10:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B49886DBD
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 10:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKXY-OGRM5t2 for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 10:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AAA3845FD
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 10:31:49 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F1DF11997EE06086CD30;
 Thu,  4 Jul 2019 18:31:45 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 4 Jul 2019
 18:31:38 +0800
Subject: Re: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode
 check in fill_inline_data()
To: Yue Hu <zbestahu@gmail.com>, Greg KH <gregkh@linuxfoundation.org>
References: <20190702025601.7976-1-zbestahu@gmail.com>
 <20190703162038.GA31307@kroah.com>
 <20190704095903.0000565e.zbestahu@gmail.com>
 <20190704052649.GA7454@kroah.com>
 <20190704180207.0000374e.zbestahu@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <fd781a85-10f9-9cbb-9e14-1757153bb9ff@huawei.com>
Date: Thu, 4 Jul 2019 18:31:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190704180207.0000374e.zbestahu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, huyue2@yulong.com, yuchao0@huawei.com,
 linux-erofs@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/4 18:02, Yue Hu wrote:
> On Thu, 4 Jul 2019 07:26:49 +0200
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
>> On Thu, Jul 04, 2019 at 09:59:03AM +0800, Yue Hu wrote:
>>> On Wed, 3 Jul 2019 18:20:38 +0200
>>> Greg KH <gregkh@linuxfoundation.org> wrote:
>>>   
>>>> On Tue, Jul 02, 2019 at 10:56:01AM +0800, Yue Hu wrote:  
>>>>> From: Yue Hu <huyue2@yulong.com>
>>>>>
>>>>> Already check if ->datamode is supported in read_inode(), no need to check
>>>>> again in the next fill_inline_data() only called by fill_inode().
>>>>>
>>>>> Signed-off-by: Yue Hu <huyue2@yulong.com>
>>>>> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
>>>>> Reviewed-by: Chao Yu <yuchao0@huawei.com>
>>>>> ---
>>>>> no change
>>>>>
>>>>>  drivers/staging/erofs/inode.c | 2 --
>>>>>  1 file changed, 2 deletions(-)    
>>>>
>>>> This is already in my tree, right?  
>>>
>>> Seems not, i have received notes about other 2 patches below mergerd:
>>>
>>> ```note1
>>> This is a note to let you know that I've just added the patch titled
>>>
>>>     staging: erofs: don't check special inode layout
>>>
>>> to my staging git tree which can be found at
>>>     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>>> in the staging-next branch.
>>> ```
>>>
>>> ```note2
>>> This is a note to let you know that I've just added the patch titled
>>>
>>>     staging: erofs: return the error value if fill_inline_data() fails
>>>
>>> to my staging git tree which can be found at
>>>     git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>>> in the staging-next branch.
>>> ```
>>>
>>> No this patch in below link checked:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/erofs?h=staging-testing  
>>
>> Then if it is not present, it needs to be rebased as it does not apply.
>>
>> Please do so and resend it.
> 
> Hm, no need to resend since it's included in another patch below.
> 
> ec8c244 staging: erofs: add compacted ondisk compression indexes.

Yes, it seems it was modified by the following patch occasionally months ago.
https://lore.kernel.org/lkml/20190614181619.64905-2-gaoxiang25@huawei.com/

Anyway, thanks for your patch. :)

Thanks,
Gao Xiang

> 
> Thanks.
> 
>>
>> thanks,
>>
>> greg k-h
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
