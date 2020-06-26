Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A3C20ABF4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 07:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F9908835A;
	Fri, 26 Jun 2020 05:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFRR4hbTLbLW; Fri, 26 Jun 2020 05:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EE3A8816F;
	Fri, 26 Jun 2020 05:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 37F901BF5A1
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 05:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31CDC869F4
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 05:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Drxcv05NUjze for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 05:51:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B1218694A
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 05:51:50 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593150715; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=I+oDje7IH8rGHPsr6BSuIr/mZUO7T7yxK98ZU0LaSJg=;
 b=iZWZso7F+5ekZv2zLFRJKZY5qcnzXM6UIy3AavVokdnh9QepFX3pNFBUFNqVIoJQjL6UtRtJ
 l3JbhTRvsYBRPRGLp9y69coMMtLK8ZO+SGXsCPe8gS47WrpjCJZiVvIRSJTdF0UtgbEKxhHg
 uc286vc64uR3ZHZEDLBBO04EYfg=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n16.prod.us-east-1.postgun.com with SMTP id
 5ef58cf0c76a4e7a2af5f3ee (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Jun 2020 05:51:44
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9E6E2C43395; Fri, 26 Jun 2020 05:51:43 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A6DDAC433C6;
 Fri, 26 Jun 2020 05:51:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A6DDAC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
Date: Fri, 26 Jun 2020 08:51:37 +0300
In-Reply-To: <20200625123712.14156-1-ajay.kathat@microchip.com> (Ajay Kathat's
 message of "Thu, 25 Jun 2020 12:37:23 +0000")
Message-ID: <87a70qe5na.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<Ajay.Kathat@microchip.com> writes:

> From: Ajay Singh <ajay.kathat@microchip.com>
>
> WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
> WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
> processors with minimal resource requirements with a simple
> SPI/SDIO-to-Wi-Fi interface.
>
> WILC1000 driver has been part of staging for few years. With
> contributions from the community, it has improved significantly. Full
> driver review has helped in achieving the current state.
> The details for those reviews are captured in 1 & 2.
>
> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>

[...]

> --- a/drivers/net/wireless/Kconfig
> +++ b/drivers/net/wireless/Kconfig
> @@ -47,6 +47,7 @@ source "drivers/net/wireless/st/Kconfig"
>  source "drivers/net/wireless/ti/Kconfig"
>  source "drivers/net/wireless/zydas/Kconfig"
>  source "drivers/net/wireless/quantenna/Kconfig"
> +source "drivers/net/wireless/microchip/Kconfig"

This should be in alphabetical order.

> --- a/drivers/net/wireless/Makefile
> +++ b/drivers/net/wireless/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_WLAN_VENDOR_ST) += st/
>  obj-$(CONFIG_WLAN_VENDOR_TI) += ti/
>  obj-$(CONFIG_WLAN_VENDOR_ZYDAS) += zydas/
>  obj-$(CONFIG_WLAN_VENDOR_QUANTENNA) += quantenna/
> +obj-$(CONFIG_WLAN_VENDOR_MICROCHIP) += microchip/

And this as well.

I fixed these in the topic branch, please double check:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git/commit/?h=wilc1000-move-out-of-staging&id=5625f965d7644b4dc6a71d74021cfe093ad34eea

I have not pulled that branch yet into master so we can make changes
still.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
