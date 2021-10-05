Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17218421E85
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 08:00:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE0B8405FE;
	Tue,  5 Oct 2021 06:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVztgAQY1kzn; Tue,  5 Oct 2021 06:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27056405FD;
	Tue,  5 Oct 2021 06:00:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4454D1BF20F
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 05:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 3281E40116
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 05:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id NTrNudV41_M5 for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 05:59:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id E8344400B9
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 05:59:55 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633413595; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=iMZe94zRRSUpASq/f9N/cvuhpb9OSJlwcSXsTncDWS8=;
 b=eOrDR9WUVWwFhrBlqWee2uCgsgqjSjVBsdaFdiehsGTAyujAAjRHTiN0BQ8lw5y7QxNN7nTF
 npU6AUrlF6pLNd+Y0N5pQ0nmZc2pF/3w90ADa5Mx0hqXASi7tvQRs/n/4OPem2XZoMAAJ/um
 WiU+7PUjAaKb1KJY3A6iNKtTbP4=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 615be9da5f16bce6680cdb6f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Oct 2021 05:59:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E0878C43460; Tue,  5 Oct 2021 05:59:53 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BAB70C4338F;
 Tue,  5 Oct 2021 05:59:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org BAB70C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-9-Jerome.Pouiller@silabs.com>
 <CAPDyKFp2_41mScO=-Ev+kvYD5xjShQdLugU_2FTTmvzgCxmEWA@mail.gmail.com>
 <19731906.ZuIkq4dnIL@pc-42>
 <CAPDyKFpbZypaLVmE2J+rGzAXgdWp1koD8pRxBKo3kFK3NDTFWw@mail.gmail.com>
Date: Tue, 05 Oct 2021 08:59:47 +0300
In-Reply-To: <CAPDyKFpbZypaLVmE2J+rGzAXgdWp1koD8pRxBKo3kFK3NDTFWw@mail.gmail.com>
 (Ulf Hansson's message of "Fri, 1 Oct 2021 17:37:38 +0200")
Message-ID: <87y278f1v0.fsf@codeaurora.org>
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

>> > > +static const struct sdio_device_id wfx_sdio_ids[] = {
>> > > +       { SDIO_DEVICE(SDIO_VENDOR_ID_SILABS, SDIO_DEVICE_ID_SILABS_WF200) },
>> > > +       { },
>> > > +};
>> > > +MODULE_DEVICE_TABLE(sdio, wfx_sdio_ids);
>> > > +
>> > > +struct sdio_driver wfx_sdio_driver = {
>> > > +       .name = "wfx-sdio",
>> > > +       .id_table = wfx_sdio_ids,
>> > > +       .probe = wfx_sdio_probe,
>> > > +       .remove = wfx_sdio_remove,
>> > > +       .drv = {
>> > > +               .owner = THIS_MODULE,
>> > > +               .of_match_table = wfx_sdio_of_match,
>> >
>> > Is there no power management? Or do you intend to add that on top?
>>
>> It seems we already have had this discussion:
>>
>>   https://lore.kernel.org/netdev/CAPDyKFqJf=vUqpQg3suDCadKrFTkQWFTY_qp=+yDK=_Lu9gJGg@mail.gmail.com/#r
>>
>> In this thread, Kalle said:
>> > Many mac80211 drivers do so that the device is powered off during
>> > interface down (ifconfig wlan0 down), and as mac80211 does interface
>> > down automatically during suspend, suspend then works without extra
>> > handlers.
>
> Yeah, it's been a while since I looked at this, thanks for the pointer.

I want to emphasize that what I said above was just a generic comment
about mac80211 drivers and just trying to give some ideas how to solve
this, I did not check how wfx driver behaves in this regard.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
