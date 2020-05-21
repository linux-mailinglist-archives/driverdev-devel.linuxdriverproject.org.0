Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E751DC38B
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 02:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2671524C10;
	Thu, 21 May 2020 00:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tluEeUa07Zg; Thu, 21 May 2020 00:24:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D668C203DD;
	Thu, 21 May 2020 00:24:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 978161BF4D8
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 00:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 930AE86F28
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 00:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ILhRf9JOL65w for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 00:24:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B22886E7E
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 00:24:21 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15881205CB;
 Thu, 21 May 2020 00:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590020661;
 bh=so+02LeLE1MjLDY4FVscmq2Bc9Vlqajs1T7f42XyVzU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=plmatdw9xMdFVvPnxMzUj7O296h9pEw9c2BEakKQ2nbJJ2lhlCq6CRIJ3QKgPgEyS
 uoGKwyCYmYXxv+L9AURVWQxZPE6f1rktSaHCjzPVgoSn3tcsaOrpLCRgdEiczwfMNr
 u7kswe98o2IVWBhLnROPkuxl+PNB+aqZ5Ab4N56U=
Date: Wed, 20 May 2020 20:24:20 -0400
From: Sasha Levin <sashal@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH AUTOSEL 5.6 16/62] most: core: use function
 subsys_initcall()
Message-ID: <20200521002420.GH33628@sasha-vm>
References: <20200514185147.19716-1-sashal@kernel.org>
 <20200514185147.19716-16-sashal@kernel.org>
 <20200515065914.GB1006524@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515065914.GB1006524@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Christian Gromm <christian.gromm@microchip.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 08:59:14AM +0200, Greg Kroah-Hartman wrote:
>On Thu, May 14, 2020 at 02:51:01PM -0400, Sasha Levin wrote:
>> From: Christian Gromm <christian.gromm@microchip.com>
>>
>> [ Upstream commit 5e56bc06e18dfc8a66180fa369384b36e2ab621a ]
>>
>> This patch replaces function module_init() with subsys_initcall().
>> It is needed to ensure that the core module of the driver is
>> initialized before a component tries to register with the core. This
>> leads to a NULL pointer dereference if the driver is configured as
>> in-tree.
>>
>> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Link: https://lore.kernel.org/r/1587741394-22021-1-git-send-email-christian.gromm@microchip.com
>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>  drivers/staging/most/core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
>> index 0c4ae6920d77d..409c48c597f2f 100644
>> --- a/drivers/staging/most/core.c
>> +++ b/drivers/staging/most/core.c
>> @@ -1484,7 +1484,7 @@ static void __exit most_exit(void)
>>  	ida_destroy(&mdev_id);
>>  }
>>
>> -module_init(most_init);
>> +subsys_initcall(most_init);
>>  module_exit(most_exit);
>>  MODULE_LICENSE("GPL");
>>  MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
>
>This is not needed in 5.6 and older kernels due to the most/core.c code
>being in staging for these releases.  It only became an issue when it
>moved out of staging.
>
>So please drop this from here and any older trees you might have
>selected it for.

Now dropped, thanks!

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
