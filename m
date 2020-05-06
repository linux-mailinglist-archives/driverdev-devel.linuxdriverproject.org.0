Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3895A1C716E
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 15:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C018587466;
	Wed,  6 May 2020 13:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AzyO23rAus17; Wed,  6 May 2020 13:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B53C386A07;
	Wed,  6 May 2020 13:09:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 765CF1BF866
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 13:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70D1F885ED
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 13:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4q2snHiZhSUP for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 13:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74063885E0
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 13:09:00 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 20AA4CDD63EF55DEFD2A;
 Wed,  6 May 2020 21:08:55 +0800 (CST)
Received: from [10.166.215.142] (10.166.215.142) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 6 May 2020
 21:08:51 +0800
Subject: Re: [PATCH -next] staging: kpc2000: fix error return code in
 kp2000_pcie_probe()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200506125255.90336-1-weiyongjun1@huawei.com>
 <20200506125723.GL1992@kadam>
From: Wei Yongjun <weiyongjun1@huawei.com>
Message-ID: <4dd9b3d1-37cf-e016-c14b-02f9e529e611@huawei.com>
Date: Wed, 6 May 2020 21:08:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506125723.GL1992@kadam>
X-Originating-IP: [10.166.215.142]
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2020/5/6 20:57, Dan Carpenter wrote:
> On Wed, May 06, 2020 at 12:52:55PM +0000, Wei Yongjun wrote:
>> Fix to return a negative error code from the error handling
>> case instead of 0, as done elsewhere in this function. Also
>> removed var 'rv' since we can use 'err' instead.
>>
>> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Also could you add a Fixes tag?  This goes all the way back to the
> original commit:
> 
> Fixes: 7dc7967fc39a ("staging: kpc2000: add initial set of Daktronics drivers")
> 

Will fix both of your comments in next version, thanks.

Regards,
Wei Yongjun
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
