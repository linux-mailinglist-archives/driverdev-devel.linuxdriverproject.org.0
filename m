Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0A81591EB
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 15:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 619488733C;
	Tue, 11 Feb 2020 14:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 53CnaA9hhb1R; Tue, 11 Feb 2020 14:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 799FD87356;
	Tue, 11 Feb 2020 14:28:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECABE1BF3E6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E954084474
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUQT9cWTI_r7 for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 14:28:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6BE084056
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 14:28:21 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B638F4232B6164BF7E35;
 Tue, 11 Feb 2020 22:28:16 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 11 Feb 2020 22:28:14 +0800
Subject: Re: [PATCH -next] staging: vc04_services: remove set but unused
 variable 'local_entity_uc'
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200211134356.59904-1-yuehaibing@huawei.com>
 <20200211142433.GG1778@kadam>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <85f21dab-b0eb-c416-3434-9a10a00d7f77@huawei.com>
Date: Tue, 11 Feb 2020 22:28:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20200211142433.GG1778@kadam>
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, marcgonzalez@google.com,
 linux-kernel@vger.kernel.org, nachukannan@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, jamal.k.shareef@gmail.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020/2/11 22:24, Dan Carpenter wrote:
> On Tue, Feb 11, 2020 at 09:43:56PM +0800, YueHaibing wrote:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
>>  warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]
>>
>> commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
>> left behind this unused variable.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index c456ced..d30d24d 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>>  	enum vchiq_status ret = VCHIQ_SUCCESS;
>>  	char entity[16];
>>  	int *entity_uc;
>> -	int local_uc, local_entity_uc;
>> +	int local_uc;
>>  
>>  	if (!arm_state)
>>  		goto out;
>> @@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>>  
>>  	write_lock_bh(&arm_state->susp_res_lock);
>>  	local_uc = ++arm_state->videocore_use_count;
>> -	local_entity_uc = ++(*entity_uc);
>                           ^^
> This ++ is required.

oops..., Thanks!

> 
> regards,
> dan carpenter
> 
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
