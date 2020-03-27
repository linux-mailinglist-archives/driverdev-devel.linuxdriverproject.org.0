Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3343419561E
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 12:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D14BD895A1;
	Fri, 27 Mar 2020 11:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DD5L5UHEc8D8; Fri, 27 Mar 2020 11:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 244CF89570;
	Fri, 27 Mar 2020 11:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A48151BF371
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 11:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6241F26319
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 11:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-wpmJQV5zu6 for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 11:16:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info
 [104.130.122.26])
 by silver.osuosl.org (Postfix) with ESMTPS id ED059204D3
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 11:16:10 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585307774; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=9LK10OXgzi/rnLsXdPOkiREm+deDTcfebaSPGXR+HEQ=;
 b=ATCoxYH4zwh44HXUEZ8mAR9N5jl3v0iDg2WcEqDnFGVXQa3pT7AM4xJkqufMt7UuObFliNcg
 JG1a4ROoLKsjN6TBigfQkMR4SOhQ6e/lU/7c9xfNZjBe5hkJQW5QvB/G3Akbg39VivH1FyQJ
 EMa+zECyJe1BmH9sjPSltKoR1YM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7de076.7facd49ebce0-smtp-out-n02;
 Fri, 27 Mar 2020 11:16:06 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4B7D9C433F2; Fri, 27 Mar 2020 11:16:06 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D3418C433D2;
 Fri, 27 Mar 2020 11:16:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D3418C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH v6 00/17] wilc1000: move out of staging
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
Date: Fri, 27 Mar 2020 13:16:01 +0200
In-Reply-To: <20200327063302.20511-1-ajay.kathat@microchip.com> (Ajay Kathat's
 message of "Fri, 27 Mar 2020 06:33:07 +0000")
Message-ID: <87ftduoxou.fsf@tynnyri.adurom.net>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<Ajay.Kathat@microchip.com> writes:

> From: Ajay Singh <ajay.kathat@microchip.com>
>
> This patch series is to review and move wilc1000 driver out of staging.
> Most of the review comments received in [1] & [2] are addressed in the
> latest code. Please review and provide your inputs.
>
> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>
> Changes since v5:
>  - handle DT binding review comments suggested in below link:
>   * https://lore.kernel.org/driverdev-devel/20200320175920.GA31641@bogus
>  - merged latest driver from staging which contains few cleanup patches
>    and changes to use crc7 from existing library instead of having
>    private implementation.

This is already the third version this month, please avoid spamming the
list unnecessarily. What you can do to speed up the acceptance is to get
Reviewed-by tags from people, the more I see those the more confident I
get about the driver. I will also review this again once I find some
free time, but don't know when that will happen.

But it would be good to document in the cover letter what commit id are
you using as the baseline. That way it's easy to review rest of the
changes Greg has applied separately and you don't need to resend the
whole driver everytime.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
