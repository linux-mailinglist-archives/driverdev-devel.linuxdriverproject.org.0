Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7EE2D14E6
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 16:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 833382E4E6;
	Mon,  7 Dec 2020 15:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CF0BUfTj3yD2; Mon,  7 Dec 2020 15:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 49F502E252;
	Mon,  7 Dec 2020 15:40:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DA471BF28A
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 15:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A46A872F1
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 15:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cS5rxpb0TBhL for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 15:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49007872DC
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 15:40:19 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id u9so13194871lfm.1
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 07:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ERXDHD6xNdtxKJuDwwGy+M6VGjMYSg+Jpr9IvoQGnWk=;
 b=ggR6GgSF2T6tHHE00M7/peM3EELApPpCYGKqY/YXyJupj5WMA/bOAvSwU9aMQbrObN
 s/56NuuDlNZK1eDGPq4vna+N/3vAuTa30wdqM4kTf6qUWTSQAJ9sYeis026WpeRur5VO
 28FKL/nvlWktv27m6HR+Ad6jrFe3d7MmH70SWDBWmMstSLemFwq4Vx9YfZ+7AbB0baRg
 HsS/llyjL4+nRZfe6C2l7AkDqCNpl6u7BvWjuEFx9mGx8AUW6qHm52jTXlXVb+OzWbXY
 X4QFL9fiCmavcXXYJ+Bs2+gqwMg2irRxSqnc0UK77DPRjsrMmg8hBJJeiicbjw7BYhEw
 yfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ERXDHD6xNdtxKJuDwwGy+M6VGjMYSg+Jpr9IvoQGnWk=;
 b=sUggDY0OyUIhz/dwrS/sL/7z3uRbw06rf6kvBgThDrq3ASAEt2D51qiD5PGZ/sFQAa
 EXM99LpI2owaaiGLvV4e2bfA34+xbucIdIjPNh/fyaMl/NUO5vsks8ctmflGElRrbIRC
 NeJa5FVANmoULFuth47DRU9bAU9GNG/bXu6zgY+WRUiPeDdIBOvSnNL3naRF3mdTTggR
 TdQOjmbQvPoy7rDr7K3/vhFpAX/8zTwPrD/RoGjQYfOdyVFbZgKnZlxwEg9hNLdneIKn
 +LHouRttFhgMfUb0+6jvEWZOXDQOfQm0Lxh0qQqbYDKO3V5ipBvrOTbfJKeshCKUfCs2
 IPRg==
X-Gm-Message-State: AOAM5337Wxhesy2eVleBiDa7Kn0YTSJiiZuPs45+X86DGg+lWnUJlDJr
 cHmvK4DtTWZjDupG53GyCA+r9i3zdAwaQiMz4M2m2g==
X-Google-Smtp-Source: ABdhPJz0maO890Z7//Jr05Sbvc0b8E841fnw9y0YdD98qGRGptl341fI004ei00X8CIVZRnMAk2YllgDM9vnuG/YMRE=
X-Received: by 2002:ac2:4308:: with SMTP id l8mr8075483lfh.260.1607355617281; 
 Mon, 07 Dec 2020 07:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
 <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
 <CAMhs-H_R5dp14_8OG=Mh2kfRG3SXGGAcAhY8NF0sd4M8mk6nWQ@mail.gmail.com>
In-Reply-To: <CAMhs-H_R5dp14_8OG=Mh2kfRG3SXGGAcAhY8NF0sd4M8mk6nWQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 7 Dec 2020 16:40:06 +0100
Message-ID: <CACRpkdafXZJ5W9Z0LJv3p7htP12o2mULgHhFa8kmnT+LWJhh0A@mail.gmail.com>
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
Cc: Weijie Gao <hackpascal@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 7, 2020 at 2:57 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> On Mon, Dec 7, 2020 at 2:05 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> > After this I think the driver looks good and can graduate from staging.
> > Can you send a patch to move this to drivers/pinctrl next
> >
> > I think drivers/pinctrl/pinctrl-rt2880.c since we don't expect a lot
> > more of them.
>
> Perfect, let me write the bindings yaml file and send the patch moving this.
>
> What git tree do you prefer the patch to be rebased onto?

I suppose Gregs since he has some changes to it that it need to
be based on. After v5.11-rc1 it could be the pinctrl tree as well.
I don't know if Greg has a favourite way to de-stage drivers?

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
