Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E44C2D1DE5
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 00:00:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95FCD87664;
	Mon,  7 Dec 2020 23:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s69WYZsb_ip3; Mon,  7 Dec 2020 23:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A0638764D;
	Mon,  7 Dec 2020 23:00:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1D21BF312
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 23:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BA8B8764D
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 23:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eFq6xTxdSLut for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 23:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A067986E4E
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 23:00:47 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id a8so5720187lfb.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 15:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MRIaz/QqwQXKXSXb3nYPYT/g6KDa16uGLes5GkMKucw=;
 b=I3Yudz7nX7p+tWeGi5ph2E0TAva8TL/UBIq0ubmfa3xumuDzsXpp/l8ed6YuW6hNac
 eRz3/aE2Z/qMBQivOjEKOmfa467OY6IEMa4mxTbxHNLjAj3deqCdAfHCcttajzl3B7RT
 IzieTMJEE3NdR6H3itBuhVmVdROVBej5UIN/aPAoEJONTo+lgNjMQgee7f3PWy/6aWvg
 NmOQHSmXAnnjdz93N4lWIxa7Veb2oHKwMJKoud+BhGEHX4fH6VswVWWXsRhhmkLTeXAU
 i5xD/t+14ys1OE2nwpSKhnGXsfnOciVSbamtMQxvIFyoTkcXy7lF5msRj19DT+gt0e6t
 pXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MRIaz/QqwQXKXSXb3nYPYT/g6KDa16uGLes5GkMKucw=;
 b=AtwoEuMXHM+n36sZ/UdEjufzRB48qXptgSjDR6rKW+HnMNNa+n3ep194BOAW/RzENR
 tLWBI47ycxEQ7d5LEotTOxnMdkvCMdH6CKysNJdtgcgy/BIaBqeECvwuLKBcz3Hm5gPu
 ArPKSf5gvNGk4FTCSI44V+v/VcSym9FTPt4ZnIx0D4J78ujVt5DIeZVl+r8VjCa5yU3a
 acSMyJ9VA2z+VErsoau1BOL+SeYuI7K+yg4ghCWA+aKO1v9zTZwW4wY1KKt7nVlygf2d
 AnLTQbsgxJ3ASmjFw+FAdP7Gp7ZHxTrYX1WUKCT4wr7rf2ZaXPohno7Y65YtFpRECx99
 9+/A==
X-Gm-Message-State: AOAM533/o0IhLI3qUBRMySWIG59zaFCYjvEiLGLThlwNSDIkL2qGPCqC
 766u8shy56tfw7359UjxQ10wBLYwasvAEkHU31cpub0R4UN2/VLi
X-Google-Smtp-Source: ABdhPJy2sUGuSdRe+WHjDjkACjfv4ZbpS4pEOJB0KAz1DrrDHq1eFB3zVzh2Pu7z8R1AeVPsyMxOi0snYGph3Deuutk=
X-Received: by 2002:a19:cb45:: with SMTP id b66mr2646521lfg.441.1607382045497; 
 Mon, 07 Dec 2020 15:00:45 -0800 (PST)
MIME-Version: 1.0
References: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
 <20201207192104.6046-3-sergio.paracuellos@gmail.com>
In-Reply-To: <20201207192104.6046-3-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Dec 2020 00:00:34 +0100
Message-ID: <CACRpkdagTdkMbg=nw-N9KQhsWXqLxofzpD_9YLgpKPBxo0vyhQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: ralink: add a pinctrl driver for the rt2880
 family
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Serigio,

I dug around some to try to understand the patch I think I get
it now :)

Squash this with the third patch so it becomes a
"move" of this file, preserving history. With that:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I have ideas, but it is better to move the driver out
of staging and improve it in pinctrl.

Since there might be many sub-SoCs for this pin
controller, what about creating
drivers/pinctrl/ralink/* for this at the same time?

On Mon, Dec 7, 2020 at 8:21 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> pin individually, these socs have mux groups that when set will effect 1-N pins.
> Pin groups have a 2, 4 or 8 different muxes.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
(...)
> +#include <asm/mach-ralink/ralink_regs.h>
> +#include <asm/mach-ralink/pinmux.h>
> +#include <asm/mach-ralink/mt7620.h>

I think in the next step we should move the contents of
rt2880_pinmux_data into this driver, then we can drop these
mach-headers and show the way for the rest of the ralink
chips to push their data down into this driver (or subdrivers)
and depopulate mach-ralink a bit.

> +       p->groups = rt2880_pinmux_data;

So this is where the driver actually gets a pointer to all
groups and functions, and these groups and functions all
come from arch/mips/ralink/mt7621.c right?

I think after this first step we should move mt7621.c
to pinctrl and become a subdriver for this pin controller
and then we can hopefully move the rest as well once
you set the pattern for how we do this.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
