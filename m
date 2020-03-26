Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B559A1939C4
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 08:46:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD1DA25EA9;
	Thu, 26 Mar 2020 07:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qhoyf-NkdKBK; Thu, 26 Mar 2020 07:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8EFB521FA8;
	Thu, 26 Mar 2020 07:45:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 359191BF36A
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 07:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31D5F21537
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 07:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6muwN+M10LcB for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 07:45:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail27.static.mailgun.info (mail27.static.mailgun.info
 [104.130.122.27])
 by silver.osuosl.org (Postfix) with ESMTPS id 04A592045B
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 07:45:50 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585208753; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=ofNam/A9mK9m4P86u/2kTjqxbhuy862zWmIh3TjFQ6M=;
 b=nEU5qmYl3z3w04/jxztPnNwI3nRVisiH7I4Eq3Yo7UmmM51S4MNg3GsOJkf7DrtKBwfBXNpC
 Ohc1Ums0ddpNuXjg4kEG2r/qLIKkY1oaeBvzMTierOianMKxh6uYA2AdUNtCLQFoOrN5EXdF
 XlBGXrdXcHeixWS27QHXb8vEBQg=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c5d9a.7f0d3b293a40-smtp-out-n04;
 Thu, 26 Mar 2020 07:45:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D5449C43636; Thu, 26 Mar 2020 07:45:29 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5D007C433D2;
 Thu, 26 Mar 2020 07:45:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5D007C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH] staging: wilc1000: remove label from examples in DT
 binding documentation
References: <20200325164234.14146-1-ajay.kathat@microchip.com>
Date: Thu, 26 Mar 2020 09:45:22 +0200
In-Reply-To: <20200325164234.14146-1-ajay.kathat@microchip.com> (Ajay Kathat's
 message of "Wed, 25 Mar 2020 16:42:39 +0000")
Message-ID: <87v9mrpnjh.fsf@tynnyri.adurom.net>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, robh@kernel.org,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<Ajay.Kathat@microchip.com> writes:

> From: Ajay Singh <ajay.kathat@microchip.com>
>
> Remove labels and not relevant property from DT binding documentation
> examples as suggested in [1].
>
> 1. https://patchwork.ozlabs.org/patch/1252837

Just a nitpick but patchwork links are not that reliable in the long
run. Instead using a lore link is better as the message id is visible
directly from the URL.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
