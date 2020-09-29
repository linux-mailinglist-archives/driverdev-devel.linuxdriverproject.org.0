Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C027B92B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 03:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6FFC20551;
	Tue, 29 Sep 2020 01:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHnuCypUE2jw; Tue, 29 Sep 2020 01:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E08F20523;
	Tue, 29 Sep 2020 01:01:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6901BF97C
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 01:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 67D5E85C97
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 01:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLn9c0PGrGEI for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 01:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4BDD385A76
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 01:01:21 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 77560ED12442A06B7F78;
 Tue, 29 Sep 2020 09:01:17 +0800 (CST)
Received: from [10.174.178.248] (10.174.178.248) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 29 Sep
 2020 09:01:15 +0800
Subject: Re: [PATCH] staging: most: don't access hdm_ch before checking it
 valid
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200928104838.189639-1-jingxiangfeng@huawei.com>
 <20200928114857.GR4282@kadam>
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
Message-ID: <5F72875A.8020900@huawei.com>
Date: Tue, 29 Sep 2020 09:01:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20200928114857.GR4282@kadam>
X-Originating-IP: [10.174.178.248]
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
Cc: devel@driverdev.osuosl.org, keescook@chromium.org,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 christian.gromm@microchip.com, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2020/9/28 19:48, Dan Carpenter wrote:
> On Mon, Sep 28, 2020 at 06:48:38PM +0800, Jing Xiangfeng wrote:
>> In try_start_dim_transfer(), pointer hdm_ch is accessed before checking.
>> This may lead to a potential null pointer dereference. Fix this by
>> dereferencing hdm_ch after calling BUG_ON().
>>
>> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
>> ---
>>   drivers/staging/most/dim2/dim2.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
>> index 509c8012d20b..ccd7cc7545e4 100644
>> --- a/drivers/staging/most/dim2/dim2.c
>> +++ b/drivers/staging/most/dim2/dim2.c
>> @@ -148,7 +148,7 @@ void dimcb_on_error(u8 error_id, const char *error_message)
>>   static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
>>   {
>>   	u16 buf_size;
>> -	struct list_head *head = &hdm_ch->pending_list;
> This is not a dereference, it's just pointer math.  In other words:
>
> 	struct list_head *head = hdm_ch + offsetof(struct hdm_channel, pending_list);
Thanks for correcting!

>
> So the commit message is wrong because this cannot lead to a NULL
> dereference.  It's better to just delete the BUG_ON().  We don't really
> like BUG_ON().  Checkpatch will complain about them.  An Oops gives
> basically the same information as a BUG_ON() without completely killing
> the kernel so just dereferencing a NULL is preferable.  Finally, we can
> see from the callers that "hdm_ch" is never NULL.
>
> regards,
> dan carpenter
>
> .
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
