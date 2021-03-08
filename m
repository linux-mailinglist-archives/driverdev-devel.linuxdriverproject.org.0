Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C0C331422
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 18:07:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D73CA400E3;
	Mon,  8 Mar 2021 17:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0hMklV-wYpI; Mon,  8 Mar 2021 17:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CAE7400D6;
	Mon,  8 Mar 2021 17:07:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 050C71BF3A9
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 17:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E783783863
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 17:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=metafoo.de
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31wVr8s0e4EZ for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 17:07:26 +0000 (UTC)
X-Greylist: delayed 00:25:14 by SQLgrey-1.8.0
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04BDA81CDB
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 17:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=TzaqzNZ5/Fp8lTYyeKtH9GBmnc2sIncwn71iQvdnlBA=; b=fQ5ZX63LM3J4j/xr/WKkGBW97u
 pLCR+JdYGE5oAFeNLpqhzoYZmzEKLwmerJmarikSJ/sHl9o8wvZ/OUOLPnFqLa/cuV/+wxylNSzb9
 wnb1a7viLJ4fXVqTqDEixl3P4vzVN/a0CT71oj3R1+4sMNkkZDHKM6yNyRSGN+uey08bF2pURA5pC
 guXumxSvr4e2ALghBd4BLRxe+WEW6wgx+atUQHIZu09Jp6F+x5o9a8QZ1hXwqqKh1eQXcYxrfUtzn
 SxC76aTOTVL0RbTfdN1Cis0i0MP87mmnfPGihVQuiPDfKroXcsrM68S9pqDeYVpGVi+VbgAomQ+Oq
 uFrjkRwQ==;
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1lJIxL-0007HI-1U; Mon, 08 Mar 2021 17:42:07 +0100
Received: from [62.216.202.180] (helo=[192.168.178.20])
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1lJIxK-000WTg-OM; Mon, 08 Mar 2021 17:42:06 +0100
Subject: Re: [PATCH 01/10] spi: spi-axi-spi-engine: remove usage of delay_usecs
To: Alexandru Ardelean <aardelean@deviqon.com>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org, linux-tegra@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-2-aardelean@deviqon.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <8a6ec9a1-71f8-ce1d-600a-66eba9244a54@metafoo.de>
Date: Mon, 8 Mar 2021 17:42:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210308145502.1075689-2-aardelean@deviqon.com>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.102.4/26102/Mon Mar  8 13:03:13 2021)
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, vireshk@kernel.org, f.fainelli@gmail.com,
 linux@deviqon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/8/21 3:54 PM, Alexandru Ardelean wrote:
> The 'delay_usecs' field was handled for backwards compatibility in case
> there were some users that still configured SPI delay transfers with
> this field.
>
> They should all be removed by now.
>
> Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
> ---
>   drivers/spi/spi-axi-spi-engine.c | 12 ++++--------
>   1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
> index af86e6d6e16b..80c3e38f5c1b 100644
> --- a/drivers/spi/spi-axi-spi-engine.c
> +++ b/drivers/spi/spi-axi-spi-engine.c
> @@ -170,14 +170,10 @@ static void spi_engine_gen_sleep(struct spi_engine_program *p, bool dry,
>   	unsigned int t;
>   	int delay;
>   
> -	if (xfer->delay_usecs) {
> -		delay = xfer->delay_usecs;
> -	} else {
> -		delay = spi_delay_to_ns(&xfer->delay, xfer);
> -		if (delay < 0)
> -			return;
> -		delay /= 1000;
> -	}
> +	delay = spi_delay_to_ns(&xfer->delay, xfer);
> +	if (delay < 0)
> +		return;

Bit of a nit, but this could be `delay <= 0` and then drop the check for 
`delay == 0` below.

> +	delay /= 1000;
>   
>   	if (delay == 0)
>   		return;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
