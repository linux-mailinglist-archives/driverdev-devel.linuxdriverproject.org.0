Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DAF211C56
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 09:02:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FF0326426;
	Thu,  2 Jul 2020 07:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKaF-Rf9NaLI; Thu,  2 Jul 2020 07:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B90E22634A;
	Thu,  2 Jul 2020 07:02:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 139201BF5F5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1062788D23
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkRHoxBwibTn for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 07:01:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info
 [104.130.122.29])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BB6688A7E
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 07:01:55 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593673318; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=vV+WEa9lR4z9vQ/BiZfiSTXTYWp+rAsHXFb2XHfCL/c=;
 b=C5nMJne0ififfUm9pUVsb6ZLPO8+fIgbBDmJyPLcmc5yuKHFFpWlBmk9o1bv1ytU94YamgMn
 B5fiZ1+krSpVVeVhoqvhkn/juKrWaLMKrxjiDZNVsfN1YDEoCwNlXkb9zeBXo06opY4Mh7Ag
 8d5kwbsHtNzGBlcw5q/ufHASN/c=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5efd861ef3deea03f39121f2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 02 Jul 2020 07:00:46
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9B456C433C8; Thu,  2 Jul 2020 07:00:46 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6DB04C433C6;
 Thu,  2 Jul 2020 07:00:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6DB04C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
Date: Thu, 02 Jul 2020 10:00:40 +0300
In-Reply-To: <20200625123712.14156-1-ajay.kathat@microchip.com> (Ajay Kathat's
 message of "Thu, 25 Jun 2020 12:37:23 +0000")
Message-ID: <875zb6e6zr.fsf@tynnyri.adurom.net>
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
> ---
>
> As suggested, keeping all the changes in single commit with file rename
> so it's easy to move out of staging [3].
>
> Please choose whichever option you prefer between the git mv or patch series
> sent last Tuesday. The resulting driver is the same as no patch has been
> queued in between.
>
> [3]. https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/

As discussed with Greg I created an immutable branch for this and merged
the branch to wireless-drivers-next:

5625f965d764 wilc1000: move wilc driver out of staging

Greg, here's the location of the immutable branch:

git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git wilc1000-move-out-of-staging

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
