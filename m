Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6F339846
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 21:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0163F4EDA5;
	Fri, 12 Mar 2021 20:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hu4AgetLEQUu; Fri, 12 Mar 2021 20:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BC114ED51;
	Fri, 12 Mar 2021 20:26:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 363F31BF580
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 20:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FDC143083
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 20:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MAbtdb548Ijh for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 20:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65290414D8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 20:26:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3DDC264F80;
 Fri, 12 Mar 2021 20:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615580807;
 bh=fClDrsALBmh9tvjCmxe91v+bcUgFM/0XI3KAbS/DwUk=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=J89ia1smuAVNw+Ham5CkN9E+TsyEee/yOZ1YGI/0kD5t+umiwvXDbOczcpWx9C0/b
 zEk1VqFBCgGswy3Ha0ljx0v+OT1EGCWjYi0eHC4XYyI118UDACzzWSslzUMal1Me9f
 1Dl6PGJnYInxJrJlRoG3ntlJDHOK+eanNQEVqEuwrbq6dUGfTtmma2tNaaer3536K3
 8flkresG5nywocNPGAB2CQgypHc3puB9GLaUh6U/uKN6D3+N3CN3axgL7Sems9fio+
 M3sjUrsObIX1LoxfDOt8qNQ+P6cqtRMvpiLEGMrsRuMT7qsMpJrarOZDJxx1/fXQNG
 OzaN3x3YXuR2g==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-tegra@vger.kernel.org, Alexandru Ardelean <aardelean@deviqon.com>,
 bcm-kernel-feedback-list@broadcom.com
In-Reply-To: <20210308145502.1075689-1-aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
Subject: Re: [PATCH 00/10] spi: finalize 'delay_usecs' removal/transition
Message-Id: <161558072332.11700.3899329199367246111.b4-ty@kernel.org>
Date: Fri, 12 Mar 2021 20:25:23 +0000
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
Cc: elder@kernel.org, vireshk@kernel.org, johan@kernel.org,
 jonathanh@nvidia.com, ldewangan@nvidia.com, thierry.reding@gmail.com,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 8 Mar 2021 16:54:52 +0200, Alexandru Ardelean wrote:
> A while back I started the introduction of the 'spi_delay' data type:
>   https://lore.kernel.org/linux-spi/20190926105147.7839-1-alexandru.ardelean@analog.com/
> 
> Users of the 'delay_usecs' were removed from drivers.
> 
> Now it's time to remove the 'delay_usecs' from the SPI subsystem and use
> only the 'delay' field.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[01/10] spi: spi-axi-spi-engine: remove usage of delay_usecs
        commit: 93c941448994a728e691f7dce9ea6475e352b09c
[02/10] spi: bcm63xx-spi: don't check 'delay_usecs' field
        commit: e7f2d4c6aacd0a2cded363bb14ef9b6e752798fd
[03/10] spi: spi-bcm-qspi: replace 'delay_usecs' with 'delay.value' check
        commit: 66a3aadec42aa001c62ae9a637398d853880a02b
[04/10] spi: spi-sh: replace 'delay_usecs' with 'delay.value' in pr_debug
        commit: 506d1a1b441e058e318d8d81141295ff76927367
[05/10] spi: spi-tegra20-flash: don't check 'delay_usecs' field for spi transfer
        commit: 7ca660f8212b2fbeb0f3133c3a6fa8805777a877
[06/10] staging: greybus: spilib: use 'spi_delay_to_ns' for getting xfer delay
        commit: 33a23423ca0a08b488791fc9d4ca53f4bea4e45b
[07/10] spi: spi-falcon: remove check for 'delay_usecs'
        commit: a886010c69718988756fd7873522caa0f26af398
[08/10] spi: fsl-espi: remove usage of 'delay_usecs' field
        commit: 55a47532fa4c5dc3291d796dd21cc80034b5d067
[09/10] spi: core: remove 'delay_usecs' field from spi_transfer
        commit: 3ab1cce553378fc0df1b1d26d7e23d03bd4dd3b6
[10/10] spi: docs: update info about 'delay_usecs'
        commit: 05d8a019eb057d14cdf9483318a7ee8b35a69cda

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
