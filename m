Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3464128D53C
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 22:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D133487689;
	Tue, 13 Oct 2020 20:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B+lkF1XM5C5L; Tue, 13 Oct 2020 20:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D71AC86AED;
	Tue, 13 Oct 2020 20:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD41C1BF422
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6DB22E199
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6IwllV-vmbB for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 20:12:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 66AAF2E191
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 20:11:59 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B38C220BED;
 Tue, 13 Oct 2020 20:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602619918;
 bh=Xx6L1F9q0rYk23T9RdX/EZiahjuKdggxm/95WJY7k1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=quf1aUTWtiJWP9gzQhM9tUT5ZNpsaiIWJzQ8aymChlKiuZNmYrql8y+1QSNL/njA+
 3yvTgSu3IJdBQApEYTWORO765YMLT2bM4OPKBLU+UeAYXKGZMMFytpZkgm4LyF2sUu
 IBBj8FR6Ltxkc1ObX9wEhwYRucjlRInSOicna5oo=
Received: by pali.im (Postfix)
 id 6A24F589; Tue, 13 Oct 2020 22:11:56 +0200 (CEST)
Date: Tue, 13 Oct 2020 22:11:56 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 07/23] wfx: add bus_sdio.c
Message-ID: <20201013201156.g27gynu5bhvaubul@pali>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <20201012104648.985256-8-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012104648.985256-8-Jerome.Pouiller@silabs.com>
User-Agent: NeoMutt/20180716
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello!

On Monday 12 October 2020 12:46:32 Jerome Pouiller wrote:
> +#define SDIO_VENDOR_ID_SILABS        0x0000
> +#define SDIO_DEVICE_ID_SILABS_WF200  0x1000
> +static const struct sdio_device_id wfx_sdio_ids[] = {
> +	{ SDIO_DEVICE(SDIO_VENDOR_ID_SILABS, SDIO_DEVICE_ID_SILABS_WF200) },

Please move ids into common include file include/linux/mmc/sdio_ids.h
where are all SDIO ids. Now all drivers have ids defined in that file.

> +	// FIXME: ignore VID/PID and only rely on device tree
> +	// { SDIO_DEVICE(SDIO_ANY_ID, SDIO_ANY_ID) },

What is the reason for ignoring vendor and device ids?

> +	{ },
> +};
> +MODULE_DEVICE_TABLE(sdio, wfx_sdio_ids);
> +
> +struct sdio_driver wfx_sdio_driver = {
> +	.name = "wfx-sdio",
> +	.id_table = wfx_sdio_ids,
> +	.probe = wfx_sdio_probe,
> +	.remove = wfx_sdio_remove,
> +	.drv = {
> +		.owner = THIS_MODULE,
> +		.of_match_table = wfx_sdio_of_match,
> +	}
> +};
> -- 
> 2.28.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
