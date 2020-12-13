Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FAF2D8B5A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 06:12:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2120685F0E;
	Sun, 13 Dec 2020 05:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6OqBL56O9Ly; Sun, 13 Dec 2020 05:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F102685E06;
	Sun, 13 Dec 2020 05:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 806DC1BF4DD
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6DFD52E10C
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0KUIlnMI3wOQ for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 05:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A3EC220487
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 05:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607836341;
 bh=TqzYETjbAAR1v2pDu9TQPnyXw2xJaDm3B4LiTu3mQMM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=QbAqkXZjlL1HfckhuofwW20rTV3ZOXA/K1zeyUSZL7cjLcSMAKH2WAzCZRpQB19aT
 XzFukeUduJLDbh5Uhl6ORk9IE81+uQCuhIw7zCc+yTuYMVwsbd0z2ntZlysAEpxMwV
 77jRtq9rPTy1YOY5hBvo+csOOyocfHrt42Zfjv/zLyNeD3FXzEyNGWZ29mZHMO/TFJ
 Pi17yB8s0Alj02B/bCifDguVgSUvYWBgpdTUzh7tIe1NytFyfFHIgWxX1xUCpkQfGh
 +LA3AzFzRJE3uA5/o+dVrDxzMYtLqUaZ99uUZEHNkO1u6k3zgluOOZRohgMlDSXWPI
 0+d0hS/06Z5hA==
MIME-Version: 1.0
In-Reply-To: <20201211164801.7838-4-nsaenzjulienne@suse.de>
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-4-nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 03/11] clk: bcm: rpi: Release firmware handle on unbind
From: Stephen Boyd <sboyd@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Date: Sat, 12 Dec 2020 21:12:19 -0800
Message-ID: <160783633985.1580929.12212485236101493377@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
 devicetree@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 dmitry.torokhov@gmail.com, linux-gpio@vger.kernel.org,
 andy.shevchenko@gmail.com, Michael Turquette <mturquette@baylibre.com>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Nicolas Saenz Julienne (2020-12-11 08:47:52)
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
