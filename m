Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E024148C2A9
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 11:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C82F40A19;
	Wed, 12 Jan 2022 10:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cin_E78oA3t; Wed, 12 Jan 2022 10:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76BBD409ED;
	Wed, 12 Jan 2022 10:59:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E77A1BF20B
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C3F409D2
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 10:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C3tQBzd44Lz6 for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 10:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA06340169
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 10:59:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8132C6172A;
 Wed, 12 Jan 2022 10:59:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE218C36AEA;
 Wed, 12 Jan 2022 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641985141;
 bh=CCz9TaBhzlxAUXt2zsk2hkuFbg2xBTs8dNBs1B2KDk0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UznS4jwQpkrbFrZEuqaNLNNh/z0lhS02+fspB5UeJo49CjIt5Zck676z2fYlkQ/AT
 Z727URmzejxLbhgeT+MDTHS5+22oxYVEyAHrdvlI+LoSR9LIsaRDkrStrcT8fMRbjh
 hfWs0s77bzL0lAjcCFyeLLeqV7fY9C18d/z4bTOrK1o3BgQ9ZeO4I2eeMwvqLYj/+1
 +OW5THTBkefTeC4PeorM+TW6bDHQspdXvbcqDEJPMBcQ0uds1ttAQtntC/wpnk0VDP
 mlDWQApr0xVwXJr9O2HxGYP/xLcEAKnRJNOeauChgPNKksyNVdGqBYGABZLtxXdbHE
 FUlckO/TEucgA==
Received: by pali.im (Postfix)
 id 71E3E768; Wed, 12 Jan 2022 11:58:59 +0100 (CET)
Date: Wed, 12 Jan 2022 11:58:59 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
Message-ID: <20220112105859.u4j76o7cpsr4znmb@pali>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 11 January 2022 18:14:08 Jerome Pouiller wrote:
> +static const struct sdio_device_id wfx_sdio_ids[] = {
> +	{ SDIO_DEVICE(SDIO_VENDOR_ID_SILABS, SDIO_DEVICE_ID_SILABS_WF200) },
> +	{ },
> +};

Hello! Is this table still required?

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
> 2.34.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
