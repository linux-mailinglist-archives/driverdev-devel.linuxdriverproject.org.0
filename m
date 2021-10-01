Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BDE41EDA8
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 14:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93417614D3;
	Fri,  1 Oct 2021 12:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TssIIFM1rWV; Fri,  1 Oct 2021 12:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF090607DF;
	Fri,  1 Oct 2021 12:39:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F07781BF2B6
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id DF99F40470
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id ANBszrg1GbEq for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 12:39:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id CA15540467
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 12:39:23 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633091965; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=+LA/iPiXIb7Rh6nwCE/NZX+iTrBRh1ILVRGZiiUV9tQ=;
 b=Z+PI5T8GnfV+dm1p9xg/+egh9erhBF54uV+VM4KnpPbU8J651wmfNuYRnIFxaz3eVkknByOH
 RmxI99ypp23EDesbjGoQs4xeIJQX3unH7/D4cbj2yGgJP45R2yoDuw0jO7ZJ34/82JywFoii
 HffhADB33kVSrw6D/mlh7ueHbX8=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 61570171713d5d6f9601b39b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 12:39:13
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 80478C43460; Fri,  1 Oct 2021 12:39:12 +0000 (UTC)
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B2F4FC4338F;
 Fri,  1 Oct 2021 12:39:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org B2F4FC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 09/24] wfx: add hwio.c/hwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-10-Jerome.Pouiller@silabs.com>
 <87k0ixkr6z.fsf@codeaurora.org>
Date: Fri, 01 Oct 2021 15:39:03 +0300
In-Reply-To: <87k0ixkr6z.fsf@codeaurora.org> (Kalle Valo's message of "Fri, 01
 Oct 2021 12:52:20 +0300")
Message-ID: <875yug6hso.fsf@tynnyri.adurom.net>
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

Kalle Valo <kvalo@codeaurora.org> writes:

>> --- /dev/null
>> +++ b/drivers/net/wireless/silabs/wfx/hwio.h
>> @@ -0,0 +1,79 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Low-level I/O functions.
>> + *
>> + * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
>> + * Copyright (c) 2010, ST-Ericsson
>> + */
>> +#ifndef WFX_HWIO_H
>> +#define WFX_HWIO_H
>> +
>> +#include <linux/types.h>
>> +
>> +struct wfx_dev;
>> +
>> +/* Caution: in the functions below, 'buf' will used with a DMA. So, it must be
>> + * kmalloc'd (do not use stack allocated buffers). In doubt, enable
>> + * CONFIG_DEBUG_SG to detect badly located buffer.
>> + */
>> +int wfx_data_read(struct wfx_dev *wdev, void *buf, size_t buf_len);
>> +int wfx_data_write(struct wfx_dev *wdev, const void *buf, size_t buf_len);
>> +
>> +int sram_buf_read(struct wfx_dev *wdev, u32 addr, void *buf, size_t len);
>> +int sram_buf_write(struct wfx_dev *wdev, u32 addr, const void *buf, size_t len);
>> +
>> +int ahb_buf_read(struct wfx_dev *wdev, u32 addr, void *buf, size_t len);
>> +int ahb_buf_write(struct wfx_dev *wdev, u32 addr, const void *buf, size_t len);
>> +
>> +int sram_reg_read(struct wfx_dev *wdev, u32 addr, u32 *val);
>> +int sram_reg_write(struct wfx_dev *wdev, u32 addr, u32 val);
>> +
>> +int ahb_reg_read(struct wfx_dev *wdev, u32 addr, u32 *val);
>> +int ahb_reg_write(struct wfx_dev *wdev, u32 addr, u32 val);
>
> "wfx_" prefix missing from these functions.

I actually saw quite a few functions without wfx_ prefix. My preference
is that all function names would have that prefix.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
