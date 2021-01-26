Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFE73045A7
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 18:47:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF601867D1;
	Tue, 26 Jan 2021 17:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id szgKVg29y3mu; Tue, 26 Jan 2021 17:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B6D9867B6;
	Tue, 26 Jan 2021 17:47:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF131BF2EF
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16B6A2049F
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bf43LpL+7VvT for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 17:47:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3264D2026D
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:47:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4AC6522210;
 Tue, 26 Jan 2021 17:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611683241;
 bh=QSjIGuM+C7xQtQ14wnMWe+u6NdcYkUxatuTFVksOG3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Geex34o5uUaWTbBVZucPZI2Ib3kgkcnIa+9Dfi4qkRH+mZ4XQbGEETqDD2J0mtTMD
 2DPI39krNL7x7OYED8/yjB4wDxxseOhsvgpFVpxGsknHvGa+z0NrX/lyP8Jf0Amzl2
 8mE+2/3HIkCZuCZyoExOoitRzEnwv9rKofAVxRrY=
Date: Tue, 26 Jan 2021 18:47:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v7 07/11] staging: vchiq: Release firmware handle on unbind
Message-ID: <YBBVp4Miin2uT8tF@kroah.com>
References: <20210118123244.13669-1-nsaenzjulienne@suse.de>
 <20210118123244.13669-8-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118123244.13669-8-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, linus.walleij@linaro.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 bgolaszewski@baylibre.com, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 18, 2021 at 01:32:40PM +0100, Nicolas Saenz Julienne wrote:
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
