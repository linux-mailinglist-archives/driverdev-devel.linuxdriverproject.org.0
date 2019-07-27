Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4737759B
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 03:33:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98C2C88C13;
	Sat, 27 Jul 2019 01:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LOXy-dIbm0L; Sat, 27 Jul 2019 01:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3367788BB8;
	Sat, 27 Jul 2019 01:33:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE3031BF280
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 01:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB19C88BB8
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 01:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dun8JrO7iHGy for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 01:33:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 962C788ACB
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 01:33:34 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 20E38F91DBEA4105D4E7;
 Sat, 27 Jul 2019 09:33:31 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 27 Jul 2019 09:33:29 +0800
Subject: Re: [PATCH v2 -next] staging: vc04_services: fix
 used-but-set-variable warning
To: Stefan Wahren <wahrenst@gmx.net>, <eric@anholt.net>,
 <gregkh@linuxfoundation.org>, <inf.braun@fau.de>, <nishkadg.linux@gmail.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190726092621.27972-1-yuehaibing@huawei.com>
 <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <25f56fd6-17b7-a8aa-6a51-97677eb8785f@huawei.com>
Date: Sat, 27 Jul 2019 09:33:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 2019/7/26 23:57, Stefan Wahren wrote:
> Hi Yue,
> 
> Am 26.07.19 um 11:26 schrieb YueHaibing:
>> Fix gcc used-but-set-variable warning:
> 
> just a nit. It is call "unused-but-set-variable"

Oh, yes, thanks!

> 
> Acked-by: Stefan Wahren <wahrenst@gmx.net>
> 
>>
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>>  variable local_uc set but not used [-Wunused-but-set-variable]
>>
>> Remove the unused variables 'local_entity_uc' and 'local_uc'
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
