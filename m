Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA1233BF78
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 16:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94B3B6F581;
	Mon, 15 Mar 2021 15:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0a4a8jV0EqW; Mon, 15 Mar 2021 15:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2D74605BB;
	Mon, 15 Mar 2021 15:12:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 832811BF338
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 15:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F2BA475AA
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 15:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s9mGVYDkaAFU for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 15:11:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C207747488
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 15:11:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD03B64DF0;
 Mon, 15 Mar 2021 15:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615821116;
 bh=L7mnfgF+lb3L7iB9rSiuo2URmRNaFyzItGPOorf386w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QVtsZts/cibSxdjb/Jr3vi8PXgNlYqDm55wHi7LqMy+T8agsvjuRMA+tQDeN+jlyq
 O6r7vWYrtQ/zQRIH2ECqR7bKeAmZD7zO+ftKuY9dEoNpOVX9t1ECuUc+uNzibBSQ6q
 NwD45oywH1vZddYlES25P956rTE6lENmxejcS1csz0UuW1iMg3XLGQb2CGCexAk0HA
 tvdzBh/9KlhbnGlIFm2pm8aSL5BO9/GVWw8VBlrGKWRUsGnfhOJOcAWOke17+PKwRk
 /2YwNxDmaJdhIo0qwkIwI9aygAK/B9byS2SneQHGeV1yVTyuFSK58tARWt0esHEiE/
 eOT1ucJaKb9NQ==
Date: Mon, 15 Mar 2021 17:11:52 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v5 03/24] wfx: add Makefile/Kconfig
Message-ID: <YE95OCx5hWRedi+W@unreal>
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <20210315132501.441681-4-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315132501.441681-4-Jerome.Pouiller@silabs.com>
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
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 02:24:40PM +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
>
> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/net/wireless/silabs/wfx/Kconfig  | 12 +++++++++++
>  drivers/net/wireless/silabs/wfx/Makefile | 26 ++++++++++++++++++++++++
>  2 files changed, 38 insertions(+)
>  create mode 100644 drivers/net/wireless/silabs/wfx/Kconfig
>  create mode 100644 drivers/net/wireless/silabs/wfx/Makefile
>
> diff --git a/drivers/net/wireless/silabs/wfx/Kconfig b/drivers/net/wirele=
ss/silabs/wfx/Kconfig
> new file mode 100644
> index 000000000000..3be4b1e735e1
> --- /dev/null
> +++ b/drivers/net/wireless/silabs/wfx/Kconfig
> @@ -0,0 +1,12 @@
> +config WFX
> +	tristate "Silicon Labs wireless chips WF200 and further"
> +	depends on MAC80211
> +	depends on MMC || !MMC # do not allow WFX=3Dy if MMC=3Dm
> +	depends on (SPI || MMC)
> +	help
> +	  This is a driver for Silicons Labs WFxxx series (WF200 and further)
> +	  chipsets. This chip can be found on SPI or SDIO buses.
> +
> +	  Silabs does not use a reliable SDIO vendor ID. So, to avoid conflicts,
> +	  the driver won't probe the device if it is not also declared in the
> +	  Device Tree.
> diff --git a/drivers/net/wireless/silabs/wfx/Makefile b/drivers/net/wirel=
ess/silabs/wfx/Makefile
> new file mode 100644
> index 000000000000..f399962c8619
> --- /dev/null
> +++ b/drivers/net/wireless/silabs/wfx/Makefile
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Necessary for CREATE_TRACE_POINTS
> +CFLAGS_debug.o =3D -I$(src)

I wonder if it is still relevant outside of the staging tree.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
