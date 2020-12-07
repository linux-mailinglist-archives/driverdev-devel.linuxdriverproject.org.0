Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3EC2D114E
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 14:05:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B17EF2E201;
	Mon,  7 Dec 2020 13:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sna8Pk47kxO4; Mon,  7 Dec 2020 13:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 374C42E1FA;
	Mon,  7 Dec 2020 13:05:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD0C51BF408
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 13:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B7281864E5
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 13:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0003+jXjairL for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 13:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA5CC86246
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 13:05:23 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e7so4617170ljg.10
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 05:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=thODs0G7sVeGHsCZeLmBuh5bMyVyWdEtWrf2l2T/ctU=;
 b=Z8JwOHJHGz8cjTbs0Y84Z+7h4btBrLs7H+IWr6yzjFmV4gjWmo4ctYwn49VHYMVZUF
 f7l8wrRj6o30M6DWv1UVM022QYglnDzZFag3gwJmE2ipneTHvu5gZI/pMFqcX983jS9f
 yCxApjXc4DkHrNabg8gMe5mXtUS7z9RW884o/ySsYYldDoIEin7ZtK3r5rOjFG6Hc/9o
 iHpMkzaMklxHqvaRsNvEBfXqnR5Yt9dbkyzuL2wOmmNOY//t6SquCjTyNnBxX1ypegud
 ZKm4UtQufLEp4RutNAw4Cxm3r0rD4eoQo+Lr16pprbp1DGkhkSFzcIqzpcTl69DtOw6b
 GKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thODs0G7sVeGHsCZeLmBuh5bMyVyWdEtWrf2l2T/ctU=;
 b=AP3BD2/HCVBz4cSZjx6ULRGIMjWsR7X4gStINOPJRNzo3+KaPlqbLYqhDVveuVclPu
 2MeAtH5YCwTLF/0fqSnx/HAeP8uiylm3f4PSKVfCiaK7DS3amFHldxdXTPwbpKZcGgGQ
 kK5Izd4xh2MBT0sL07EXnkRxLvkAkRCs6f3UPlgWUZqvsevelQ/XuACD8/beX/LYoiRc
 62XO1Ml97kFrrnZbtIEcMSiMm17WQMP3tmH41r6+MWkC789X2Eq7mteiLn7bdBsQXAL5
 Sr424j49XyJ6QTcAXmKZtZAPTRTPtc983rsd1L038ADK0gb+wteCVjAfTBb7t8zoRPFZ
 9SoQ==
X-Gm-Message-State: AOAM531IgWpPwoyJV1ka/ZOaIYhKqeAbk6P16Mi8VjcaPWPVNQKqNOTg
 HKuzLReFNl3GEgvEUVeiCxngWHSJJeUvixr4fkvIIw==
X-Google-Smtp-Source: ABdhPJzHS7I9mI9WCOPokeyHeXuQZo1wVmuaCtmNh2OTM4UQ0APzEJdK7RWE36VolUsLmyiF4aCRDxqnsDlMOrFgGfE=
X-Received: by 2002:a2e:9ad3:: with SMTP id p19mr3497972ljj.286.1607346321658; 
 Mon, 07 Dec 2020 05:05:21 -0800 (PST)
MIME-Version: 1.0
References: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 7 Dec 2020 14:05:10 +0100
Message-ID: <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: stop using the deprecated
 'pinctrl_add_gpio_range'
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 6, 2020 at 11:53 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> If the gpio DT node has the 'gpio-ranges' property, the range will be
> added by the gpio core and doesn't need to be added by the pinctrl
> driver.
>
> By having the gpio-ranges property, we can map every pin between
> gpio node and pinctrl node and we can stop using the deprecated
> pinctrl_add_gpio_range() function.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

After this I think the driver looks good and can graduate from staging.
Can you send a patch to move this to drivers/pinctrl next?

I think drivers/pinctrl/pinctrl-rt2880.c since we don't expect a lot
more of them.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
