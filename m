Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F4211C23
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 08:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B4B0263D9;
	Thu,  2 Jul 2020 06:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSREnyZzA0UR; Thu,  2 Jul 2020 06:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A486B253CA;
	Thu,  2 Jul 2020 06:49:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B14C1BF5F5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 06:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 175598AA8E
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 06:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SN6xzEOkHCje for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 06:49:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E4C08A932
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 06:49:13 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593672556; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Z1FQKJa+CcrDHMyZpRsA52XudrtWn5rPp4C8kePR6JE=;
 b=GYqJ5eLDv+8xBkmbjBxYdycb4fbgfaZatQDk6CC/0MVuVPgOBooaJ/jB3Wi2mOYyGOrLwImG
 wjQMcoHiVxWVXKIDKFbD3t0OxAoXAFLQz+f9fJ6GcO/VreElFNg1AhC39Ovw+GJI5RyalAoQ
 xGpDNpamjcBRtnvwUA9OCCmy92g=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5efd8363117610c7ff8f3d59 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 02 Jul 2020 06:49:07
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C95F2C433CA; Thu,  2 Jul 2020 06:49:06 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 317DDC433C6;
 Thu,  2 Jul 2020 06:49:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 317DDC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Nicolas.Ferre@microchip.com>
Subject: Re: [PATCH] staging/wilc1000: let wilc_mac_xmit() to NETDEV_TX_OK
References: <20200628183237.74749-1-luc.vanoostenryck@gmail.com>
 <8a2f50dc-2cbe-64e4-438c-4320bb574f4f@microchip.com>
Date: Thu, 02 Jul 2020 09:48:59 +0300
In-Reply-To: <8a2f50dc-2cbe-64e4-438c-4320bb574f4f@microchip.com> (Nicolas
 Ferre's message of "Mon, 29 Jun 2020 07:58:09 +0000")
Message-ID: <87eepubeec.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, adham.abozaeid@microchip.com,
 luc.vanoostenryck@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<Nicolas.Ferre@microchip.com> writes:

> Luc,
>
> Thanks for your patch...
>
> On 28/06/2020 at 20:32, Luc Van Oostenryck wrote:
>> The method ndo_start_xmit() is defined as returning an 'netdev_tx_t',
>> which is a typedef for an enum type defining 'NETDEV_TX_OK' but this
>> driver returns '0' instead of 'NETDEV_TX_OK'.
>> 
>> Fix this by returning ''NETDEV_TX_OK' instead of 0.
>> 
>> Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
>> ---
>>   drivers/staging/wilc1000/netdev.c | 6 +++---
>
> ... would it be possible that you re-spin it so that it applies to the 
> new location of this driver:
> drivers/net/wireless/microchip/wilc1000/netdev.c
>
> You can rebase your patch on the wireless-driver-next tree with 
> wilc1000-move-out-of-staging branch:
>
> tree: 
> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git
> branch: wilc1000-move-out-of-staging
>
> (Then you can also review the subject line of your patch, BTW)

And also cc linux-wireless so that our patchwork sees it (not sure if
the original patch had it or not, just making sure), more info in the
link below.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
