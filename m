Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B51D211F14
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 10:43:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E77B38B295;
	Thu,  2 Jul 2020 08:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHfbmbuE2b3d; Thu,  2 Jul 2020 08:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0D9D8B2AB;
	Thu,  2 Jul 2020 08:43:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE9EC1BF3C1
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB165891AB
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qcz7INSiJjD6 for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 08:43:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F315889186
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 08:43:14 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1593679394; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Gt6gtySvQvf4hvmvslOeFNuAum0rAOJn0h3FMcdMzrM=;
 b=CUJYgIo7qe58VcHzEmHETJJXrrZpRJM3Wf6N4QWbSXVB/olGPRyzA3IjyUbwv5i1ri2tR/+D
 9ODxCb4k+dOBfk8sHI2Qt8x+CVJIm6ORoHxC/UPdDZ7zQERtR/DzMICSN4VpkC0XyGaF8Nsp
 FFmBvEskD2CVWe1RJrvezgeNN9w=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-east-1.postgun.com with SMTP id
 5efd9e22c76a4e7a2aafe805 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 02 Jul 2020 08:43:14
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 36C59C433C6; Thu,  2 Jul 2020 08:43:13 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6D3BDC433C8;
 Thu,  2 Jul 2020 08:43:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6D3BDC433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
 <875zb6e6zr.fsf@tynnyri.adurom.net>
 <a09157e8-6464-9d48-5d5d-fc168e1b85dc@microchip.com>
Date: Thu, 02 Jul 2020 11:43:07 +0300
In-Reply-To: <a09157e8-6464-9d48-5d5d-fc168e1b85dc@microchip.com> (Ajay
 Kathat's message of "Thu, 2 Jul 2020 07:30:31 +0000")
Message-ID: <875zb6b944.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<Ajay.Kathat@microchip.com> writes:

> On 02/07/20 12:30 pm, Kalle Valo wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you
>> know the content is safe
>> 
>> <Ajay.Kathat@microchip.com> writes:
>> 
>>> From: Ajay Singh <ajay.kathat@microchip.com>
>>>
>>> WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
>>> WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
>>> processors with minimal resource requirements with a simple
>>> SPI/SDIO-to-Wi-Fi interface.
>>>
>>> WILC1000 driver has been part of staging for few years. With
>>> contributions from the community, it has improved significantly. Full
>>> driver review has helped in achieving the current state.
>>> The details for those reviews are captured in 1 & 2.
>>>
>>> [1].
>>> https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>>> [2].
>>> https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>>>
>>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>>> ---
>>>
>>> As suggested, keeping all the changes in single commit with file rename
>>> so it's easy to move out of staging [3].
>>>
>>> Please choose whichever option you prefer between the git mv or patch series
>>> sent last Tuesday. The resulting driver is the same as no patch has been
>>> queued in between.
>>>
>>> [3].
>>> https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/
>> 
>> As discussed with Greg I created an immutable branch for this and merged
>> the branch to wireless-drivers-next:
>
> Thanks Kalle.
>
> If my understanding is correct, we have to use 'wireless-driver-next'
> master branch to submit new patches for wilc1000. right?

Correct. And I also suggest to get familiar with the linux-wireless
patchwork to follow patch status, more info in the link below.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
