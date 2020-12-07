Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 565A72D12B1
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 14:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C316F2E24D;
	Mon,  7 Dec 2020 13:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vx54F5uu7+dq; Mon,  7 Dec 2020 13:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC1EB2E221;
	Mon,  7 Dec 2020 13:57:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6BEA1BF408
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 13:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E2ED986F0C
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 13:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olXvS2MH9WbD for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 13:57:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D24286CBF
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 13:57:13 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id x13so4963412oto.8
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 05:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C33bHxxR4g/9b0/Zr55LvuCnxHT3TuFTMBhCCuM0XuA=;
 b=cgc/z9PZQHWVbAXDoGd9iGNhUQNLMVW7XT1xrCC6GQ9kq3CIV3XXE08EOyjhfYPVnN
 2JzRb3yEaUAeWRr38RAhI3DRxqBflNw2L1EQxd4jEY3PAdptLRdP4UIIr3mlG5d9zW5r
 T2HrHsnMHSljhXIc+K02sm1h0QMVwzO799rH0hZaFs8MZk8b7F8mLL9mG+9q8JYiI/c5
 kOlZFznHEBJTdtxdbdJc7V/1140Y4Ox0hWOFJFziXUs5+EvTB5VTx53SPb21nop583Ja
 P+b05PwOcbV5GFLPl/WEvhKt98KaKQCFVrRRQV/L4A0zu8l/K171qXVc9B7YIQ163VLl
 xACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C33bHxxR4g/9b0/Zr55LvuCnxHT3TuFTMBhCCuM0XuA=;
 b=fRvTnC4nsDgPAEV3fZG95GY0BMCA6UoSUQ0o2u7czvTH+JotR2DK/LaHKu4yxjfnVQ
 wLw+/pPSK7EwOCoEnYdGPCoMhok1dEa/gDTBChN0yv82IzCCWjZUUi/aXQF6np/JbGg1
 6ECCjZ4LMd/tT8Gg3Sdphc0UE0gow0WLQeuQggKr1LTajEI1hhBEDZhDn3h9aQ+WWZbx
 p86+ZHLGwxsUPwNAIicsUQFKc37ZOlNrpiEoPJa+5/0tW0gDww24BiWyKnSM1wQw8v9j
 DiMW41o4VpcgwagcF6FEOsvq3BI7goG+o569n/YplQEoc2e1saRx3uiI4RAoisKhV0p4
 BFcA==
X-Gm-Message-State: AOAM531+6Yu5lSN4TiTGaeKoqMQ5KgJopRbXAxdqvfs5/akPppVs0dP7
 JthF6sOsvV/4XTcvzyMH3A3Hdk2m34XZThLTrjw=
X-Google-Smtp-Source: ABdhPJyrd+sl+eq302PHNI/nRVLq7hv+JAN0mt4kNkZ1Qv4/OSgovVXuP67eD1695iZPDT3KQ5gjqHBQ6Dfm1mNAkIo=
X-Received: by 2002:a9d:589:: with SMTP id 9mr13290078otd.72.1607349432605;
 Mon, 07 Dec 2020 05:57:12 -0800 (PST)
MIME-Version: 1.0
References: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
 <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
In-Reply-To: <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 7 Dec 2020 14:57:01 +0100
Message-ID: <CAMhs-H_R5dp14_8OG=Mh2kfRG3SXGGAcAhY8NF0sd4M8mk6nWQ@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: stop using the deprecated
 'pinctrl_add_gpio_range'
To: Linus Walleij <linus.walleij@linaro.org>
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
Cc: Weijie Gao <hackpascal@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Linus,

On Mon, Dec 7, 2020 at 2:05 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Dec 6, 2020 at 11:53 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
>
> > If the gpio DT node has the 'gpio-ranges' property, the range will be
> > added by the gpio core and doesn't need to be added by the pinctrl
> > driver.
> >
> > By having the gpio-ranges property, we can map every pin between
> > gpio node and pinctrl node and we can stop using the deprecated
> > pinctrl_add_gpio_range() function.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> After this I think the driver looks good and can graduate from staging.
> Can you send a patch to move this to drivers/pinctrl next

>
> I think drivers/pinctrl/pinctrl-rt2880.c since we don't expect a lot
> more of them.


Perfect, let me write the bindings yaml file and send the patch moving this.

What git tree do you prefer the patch to be rebased onto?

>
> Yours,
> Linus Walleij

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
