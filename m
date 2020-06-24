Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906DC206F64
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 10:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A6198937B;
	Wed, 24 Jun 2020 08:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjwRxHcj27od; Wed, 24 Jun 2020 08:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54E198887C;
	Wed, 24 Jun 2020 08:50:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 435191BF97C
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 08:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C86A860A8
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 08:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1KpIMxfQoqH2 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 08:50:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A3AC87D9D
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:50:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592988620; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=VUDZ7CIdCQG2R0dxVIRY2kHAUR5DLpmrneQaOynhiIw=;
 b=O/99HLuvsTsxFFGkVxmLDljq7nPSsXlr5fTNY2VZFNs5Q58kv+N30elXz4scbCwhULpIjdjJ
 aApSrAmDQ6gVLzH2a0HhMbr3d6hnZq5gxF9E8fCj76e6+B2UEOGrCtRQxPadI+puimhBAyoV
 4/I3xTg2V59XirsT4L4/RrlD81Y=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5ef313c63a8a8b20b8351877 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 24 Jun 2020 08:50:14
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 86C3AC433CA; Wed, 24 Jun 2020 08:50:14 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 50C06C43395;
 Wed, 24 Jun 2020 08:50:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 50C06C43395
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
Date: Wed, 24 Jun 2020 11:50:07 +0300
In-Reply-To: <20200623110000.31559-1-ajay.kathat@microchip.com> (Ajay Kathat's
 message of "Tue, 23 Jun 2020 11:00:04 +0000")
Message-ID: <87ftaketkw.fsf@tynnyri.adurom.net>
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
> This patch series is to review and move wilc1000 driver out of staging.
> Most of the review comments received in [1] & [2] are addressed in the
> latest code.
> Please review and provide your inputs.
>
> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>
> Changes since v6:
>  - added Reviewed-by tag received for DT binding document patch earlier.
>    * https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus
>  - merged latest driver and included --base commit as suggested.

Greg, in preparation for moving the driver to drivers/net/wireless can I
ask you to not to take wilc1000 patches for the time being? I think that
way it would be easier to move the driver between trees if there are no
changes after v5.8-rc1. Or is there a better way handle the move?

I have not reviewed the latest version yet but I'm hoping it's ready
now. I would also appreciate comments from other people about the
readiness of this driver.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
