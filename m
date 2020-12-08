Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 458392D27B8
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 10:33:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AE7686DE1;
	Tue,  8 Dec 2020 09:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztA75UDLqUdc; Tue,  8 Dec 2020 09:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33A5B86D95;
	Tue,  8 Dec 2020 09:33:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4994A1BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28CF6875A0
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 09:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YasvdPEYSNe0 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 09:33:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C1CB874BD
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 09:33:38 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id o25so18776603oie.5
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 01:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sn6Mvm7ZmrJkPQrGVxcpQJZVeyCsWajsVTNwPKt74sU=;
 b=aC0F/6iu9EwuGc8jmPYxCi2CB5N/zPLlA4IB0bhhlvYRvNoe0YzEs13jDF0aPVdqFE
 OuRjz6q/9B+WfSd9Aez7oDv+kRYaNvAKJAc/2dAkbH93J7M9j+hWCdPqL1SsfOojkaf0
 cLvtXn5Rd/l11BhYJa07xEo5dHYyKm8jP9dEIaziTdGutEs+gCdp6NqwHK39krD/M4CY
 OP84yHsLzf1Ed7mkL9KYpu0GpkE3okt9FO/W8urjNBw+oCrpoUWdz/UjffBBWL/e5QWQ
 DJiyCgcZ4qnHt/hBoqFY8quQhdccqHmV+Y312gXxG3eEuKYIgtMIpLYKz532Ao8+cmxv
 bJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sn6Mvm7ZmrJkPQrGVxcpQJZVeyCsWajsVTNwPKt74sU=;
 b=EwECiIGOagG5mHenhJU4zaurEjL7dw/saZ0crsrK/OUx/eSfS8TBznpJrUUc/Wo7lB
 DppRl0Nlyk1qZu8h5CwRMl+s8JMHBPvBfXGcx+9eryEQZJ2BEch7jr8jgSHnqWZKfFoS
 DhzX+559m9iEbhzgIZnOrXATMI2eClZWTAqWn3ktyfgtFHoKxnWMB4Tdj8q3SYz5pO1q
 4trdjVun/vXuPLvc3K1XlVbU0BaAEi1CfTvGrdmUwTsnEP4ZCwoKF+CxbkW3UVV0l88W
 yMPsgbpSgtjvAcYThK7cQHQx09r7Wu4OES8i4bn6n4KSYmgYawsMMD6aalTALaXf7+I/
 +qKA==
X-Gm-Message-State: AOAM531oz4h7oznXDRR1BOrJy1XY/bIk+0zh3q2V0h0mYlUXp2gFQpOE
 t9xxHJ5XSVmlAjGUKca2r2LJER1D2TQOMAOXQ3Xbwmre
X-Google-Smtp-Source: ABdhPJxnkpUAZAlkDDdw3nw8s6hL//yyR64F45aERlZd75YSXFrAA4SqLcC0/0BsSQcjU7uTwP2w/+dX2MZVoTS/7n4=
X-Received: by 2002:aca:5a86:: with SMTP id o128mr1978305oib.23.1607420017349; 
 Tue, 08 Dec 2020 01:33:37 -0800 (PST)
MIME-Version: 1.0
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
 <20201208075523.7060-3-sergio.paracuellos@gmail.com>
 <CACRpkdY_Me8kO-Fa-vUspJNv+2vy0fswTM-RaUoaZJ5rCfuynA@mail.gmail.com>
 <X89BiDacLNQ7ZQOH@kroah.com>
In-Reply-To: <X89BiDacLNQ7ZQOH@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 8 Dec 2020 10:33:26 +0100
Message-ID: <CAMhs-H9ZW0f9wvjk9OeiZpiHQT+qFFEbvHsH4jxwEa6xYXVy0g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: ralink: add a pinctrl driver for the
 rt2880 family
To: Greg KH <gregkh@linuxfoundation.org>
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
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 8, 2020 at 10:03 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Dec 08, 2020 at 09:21:31AM +0100, Linus Walleij wrote:
> > On Tue, Dec 8, 2020 at 8:55 AM Sergio Paracuellos
> > <sergio.paracuellos@gmail.com> wrote:
> >
> > > These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> > > pin individually, these socs have mux groups that when set will effect 1-N pins.
> > > Pin groups have a 2, 4 or 8 different muxes.
> > >
> > > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> >
> > Greg I'm happy if you just apply this right now for v5.11, as Sergio
> > is obviously on top of things and the DT bindings will get there
> > eventually so I don't see any need to hold back the de-staging just
> > waiting for patch 1 (which I will eventually apply directly anyway).
>
> Now merged into my tree, thanks!
>
> greg k-h

Thanks!

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
