Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A042E0C98
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 16:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F515861AF;
	Tue, 22 Dec 2020 15:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRYJ4ODwkJV6; Tue, 22 Dec 2020 15:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C9A78600D;
	Tue, 22 Dec 2020 15:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE771BF370
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0522620014
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 15:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 67+B3gRrmxBk for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 15:20:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m43-15.mailgun.net (m43-15.mailgun.net [69.72.43.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 922082000A
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 15:20:53 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1608650453; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=zdYObwsY2r8z2o2KPE7CUgSBuK7IkUOZ8qoqY6T5wcw=;
 b=YcFDGVZ+TmEzJ/qynKnhLSWSUdw9weWe82InmHeV/0GzTcRzZDA49LPV9jwpORk2YclKKUsO
 9X7D3D46z11+o8NweIPQWjQYpOnLh5oeqJglbwMEAo2LXUCfsUPLRXmPGDd1Kg1OVrE055lI
 u/mPxJ9Fj0HDSI4ntd2ZwpDsSH8=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5fe20ed43ac69bd6b8496304 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 22 Dec 2020 15:20:52
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9A240C433ED; Tue, 22 Dec 2020 15:20:51 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4F788C433C6;
 Tue, 22 Dec 2020 15:20:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4F788C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 12/24] wfx: add hif_api_*.h
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-13-Jerome.Pouiller@silabs.com>
Date: Tue, 22 Dec 2020 17:20:46 +0200
In-Reply-To: <20201104155207.128076-13-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 4 Nov 2020 16:51:55 +0100")
Message-ID: <87h7od98a9.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:

> --- /dev/null
> +++ b/drivers/net/wireless/silabs/wfx/hif_api_general.h
> @@ -0,0 +1,267 @@
> +/* SPDX-License-Identifier: Apache-2.0 */
> +/*
> + * WFx hardware interface definitions
> + *
> + * Copyright (c) 2018-2020, Silicon Laboratories Inc.
> + */
> +
> +#ifndef WFX_HIF_API_GENERAL_H
> +#define WFX_HIF_API_GENERAL_H
> +
> +#ifdef __KERNEL__
> +#include <linux/types.h>
> +#include <linux/if_ether.h>
> +#else
> +#include <net/ethernet.h>
> +#include <stdint.h>
> +#define __packed __attribute__((__packed__))
> +#endif

Why check for __KERNEL__ and redefined __packed? These don't belong to a
wireless driver.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
