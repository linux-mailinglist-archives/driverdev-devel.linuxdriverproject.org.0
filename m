Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D27A333649
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 08:21:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 263BE4EC57;
	Wed, 10 Mar 2021 07:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6QXwrkH0I3F; Wed, 10 Mar 2021 07:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC7624EC1A;
	Wed, 10 Mar 2021 07:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DE581BF47E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 07:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CA6C6F48A
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 07:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=metafoo.de
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4UovPbUx6nAG for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 07:21:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D5516F488
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 07:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=qz+v/U8OfCpTcBxQ524rjA3+edB4w4v2XAKWVao9tZw=; b=NOcAydZc5yBZM0Muwj7fz+C8N6
 MLVX5u/dL4dKLslXt9sIydO9khfqiXZy8yYjcv1kT6LDVjL/8hiWkYVoIrzv4E/HCeSH7Qjdz3Fa0
 jVoOH/9yqvIniidnNF7Nsziu54b/eKK9jz9QFQVAO2ICDFZypDI04wgSKrt1D5SX06TIqupGjiq6y
 d/71t5fC8hQOTrGNz6/jHWJmo37Ix9C6lsRdQx8RKT+nwmWuuCdc8beN5t4DnJemOfoxj8mzUEYlh
 XWZvpdDGVsG/PFnkQFgSwOylKlq7ODZf4TnzXtJn691AbSdy+LIzbbdsAJlFF4pFr1zkpUDM83kqI
 /BUNDg1g==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1lJt9f-0001ZM-Fz; Wed, 10 Mar 2021 08:21:15 +0100
Received: from [62.216.202.180] (helo=[192.168.178.20])
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1lJt9f-00041w-55; Wed, 10 Mar 2021 08:21:15 +0100
Subject: Re: [PATCH 01/10] spi: spi-axi-spi-engine: remove usage of delay_usecs
To: Alexandru Ardelean <aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-2-aardelean@deviqon.com>
 <8a6ec9a1-71f8-ce1d-600a-66eba9244a54@metafoo.de>
 <CAASAkoZ+3T27KK0HN6YikKczUFS15xSpOssaOmx4NtDQKiKvHQ@mail.gmail.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <bafbb401-d563-dafc-ff11-9fbfd33709a4@metafoo.de>
Date: Wed, 10 Mar 2021 08:21:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAASAkoZ+3T27KK0HN6YikKczUFS15xSpOssaOmx4NtDQKiKvHQ@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.102.4/26103/Tue Mar  9 13:03:37 2021)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 ldewangan@nvidia.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-spi@vger.kernel.org, greybus-dev@lists.linaro.org, broonie@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, vireshk@kernel.org,
 linux-tegra@vger.kernel.org, f.fainelli@gmail.com, johan@kernel.org,
 thierry.reding@gmail.com, linux@deviqon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/10/21 8:16 AM, Alexandru Ardelean wrote:
> On Mon, 8 Mar 2021 at 18:42, Lars-Peter Clausen <lars@metafoo.de> wrote:
>> On 3/8/21 3:54 PM, Alexandru Ardelean wrote:
>>> The 'delay_usecs' field was handled for backwards compatibility in case
>>> there were some users that still configured SPI delay transfers with
>>> this field.
>>>
>>> They should all be removed by now.
>>>
>>> Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
>>> ---
>>>    drivers/spi/spi-axi-spi-engine.c | 12 ++++--------
>>>    1 file changed, 4 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
>>> index af86e6d6e16b..80c3e38f5c1b 100644
>>> --- a/drivers/spi/spi-axi-spi-engine.c
>>> +++ b/drivers/spi/spi-axi-spi-engine.c
>>> @@ -170,14 +170,10 @@ static void spi_engine_gen_sleep(struct spi_engine_program *p, bool dry,
>>>        unsigned int t;
>>>        int delay;
>>>
>>> -     if (xfer->delay_usecs) {
>>> -             delay = xfer->delay_usecs;
>>> -     } else {
>>> -             delay = spi_delay_to_ns(&xfer->delay, xfer);
>>> -             if (delay < 0)
>>> -                     return;
>>> -             delay /= 1000;
>>> -     }
>>> +     delay = spi_delay_to_ns(&xfer->delay, xfer);
>>> +     if (delay < 0)
>>> +             return;
>> Bit of a nit, but this could be `delay <= 0` and then drop the check for
>> `delay == 0` below.
> hmm, that's a bit debatable, because the `delay == 0` check comes
> after `delay /= 1000` ;
> to do what you're suggesting, it would probably need a
> DIV_ROUND_UP(delay, 1000) to make sure that even sub-microsecond
> delays don't become zero;

Ah, true. Lets keep the code as it is.

On the other hand you could argue that we should round up to ensure the 
delay is at least as long as requested. But that is something that 
should be changed independently from this series.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
