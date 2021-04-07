Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0854F356BAA
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 14:00:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E99F60011;
	Wed,  7 Apr 2021 12:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AxHoqbox0joW; Wed,  7 Apr 2021 12:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCB9960C12;
	Wed,  7 Apr 2021 12:00:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 678B11BF280
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 12:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 63720405F1
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 12:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id pnsVeW38QTcB for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 12:00:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 78E99405DE
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 12:00:33 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1617796836; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=dRkaKojvnawlYO3e1C9wxx79COw07pLsiCqaSEnReIk=;
 b=vFUXFoI28aCcjyRXa6L8ZA0CSx3fiFcDidXafbGCtYU/JVH3DLescdDMQAZHRgYgkOy/Pi/l
 OeT2Tk9P7x3pi7BoHbjeebUexoyDOeYiEkzZkoqtHTMR9l41/RghJzWq5RKhAeo7W1jffTPL
 BX1o/WRNRlrotsO9zlCPWlXEjC0=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 606d9ed7c06dd10a2dbceb84 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 07 Apr 2021 12:00:23
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EA6BBC433ED; Wed,  7 Apr 2021 12:00:22 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 53876C433CA;
 Wed,  7 Apr 2021 12:00:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 53876C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v5 08/24] wfx: add bus_sdio.c
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <4503971.bAhddQ8uqO@pc-42>
 <CAPDyKFoXgV3m-rMKfjqRj91PNjOGaWg6odWG-EGdFKkL+dGWoA@mail.gmail.com>
 <5713463.b6Cmjs1FeV@pc-42>
 <CAPDyKFrONrUvbVVVF9iy4P17jZ_Fq+1pGMmsqM6C1hOXOWQnBw@mail.gmail.com>
Date: Wed, 07 Apr 2021 15:00:17 +0300
In-Reply-To: <CAPDyKFrONrUvbVVVF9iy4P17jZ_Fq+1pGMmsqM6C1hOXOWQnBw@mail.gmail.com>
 (Ulf Hansson's message of "Tue, 23 Mar 2021 20:12:06 +0100")
Message-ID: <87pmz6mhim.fsf@codeaurora.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ulf Hansson <ulf.hansson@linaro.org> writes:

>> If I follow what has been done in other drivers I would write something
>> like:
>>
>>   static int wfx_sdio_suspend(struct device *dev)
>>   {
>>           struct sdio_func *func = dev_to_sdio_func(dev);
>>           struct wfx_sdio_priv *bus = sdio_get_drvdata(func);
>>
>>           config_reg_write_bits(bus->core, CFG_IRQ_ENABLE_DATA, 0);
>>           // Necessary to keep device firmware in RAM
>>           return sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);
>
> This will tell the mmc/sdio core to keep the SDIO card powered on
> during system suspend. Thus, it doesn't need to re-initialize it at
> system resume - and the firmware should not need to be re-programmed.
>
> On the other hand, if you don't plan to support system wakeups, it
> would probably be better to power off the card, to avoid wasting
> energy while the system is suspended. I assume that means you need to
> re-program the firmware as well. Normally, it's these kinds of things
> that need to be managed from a ->resume() callback.

Many mac80211 drivers do so that the device is powered off during
interface down (ifconfig wlan0 down), and as mac80211 does interface
down automatically during suspend, suspend then works without extra
handlers.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
