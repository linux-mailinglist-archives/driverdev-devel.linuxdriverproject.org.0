Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE693126865
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 18:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 358902372E;
	Thu, 19 Dec 2019 17:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcRhfb8mcsg6; Thu, 19 Dec 2019 17:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2C3823509;
	Thu, 19 Dec 2019 17:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68B0C1BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 659AC886A4
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3M7BxIpqFljz for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 17:48:10 +0000 (UTC)
X-Greylist: delayed 00:07:19 by SQLgrey-1.7.6
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.142])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 01EFB88687
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 17:48:09 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 14D762400FC
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 18:40:47 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 47dzgL4SfTz9rxM;
 Thu, 19 Dec 2019 18:40:46 +0100 (CET)
Date: Thu, 19 Dec 2019 18:40:45 +0100 (CET)
From: Marc Dietrich <marvin24@gmx.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Xidong Wang <wangxidong_97@163.com>
Subject: Re: [PATCH 1/1] staging: nvec: check return value
In-Reply-To: <1576648598-12257-1-git-send-email-wangxidong_97@163.com>
Message-ID: <alpine.OSX.2.21.1912191837580.5811@macbook-pro.fritz.box>
References: <1576648598-12257-1-git-send-email-wangxidong_97@163.com>
User-Agent: Alpine 2.21 (OSX 202 2017-01-01)
MIME-Version: 1.0
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
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 ac100@lists.launchpad.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Xidong,

On Wed, 18 Dec 2019, Xidong Wang wrote:

> In nvec_kbd_probe(), the return value of devm_input_allocate_device()
> should be checked before it is used.
>
> Signed-off-by: Xidong Wang <wangxidong_97@163.com>

looks good to me. Thanks!

Acked-by: Marc Dietrich <marvin24@gmx.de>

> ---
> drivers/staging/nvec/nvec_kbd.c | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
> index 01dbb66..386d619 100644
> --- a/drivers/staging/nvec/nvec_kbd.c
> +++ b/drivers/staging/nvec/nvec_kbd.c
> @@ -123,6 +123,8 @@ static int nvec_kbd_probe(struct platform_device *pdev)
> 		keycodes[j++] = extcode_tab_us102[i];
>
> 	idev = devm_input_allocate_device(&pdev->dev);
> +	if (!idev)
> +		return -ENOMEM;
> 	idev->name = "nvec keyboard";
> 	idev->phys = "nvec";
> 	idev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_REP) | BIT_MASK(EV_LED);
> -- 
> 2.7.4
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
