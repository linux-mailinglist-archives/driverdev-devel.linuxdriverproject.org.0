Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9534B67C66
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 01:06:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B790877DB;
	Sat, 13 Jul 2019 23:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkKvofFuCc04; Sat, 13 Jul 2019 23:06:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2AE084BF0;
	Sat, 13 Jul 2019 23:06:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97DC21BF326
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 23:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94A1085082
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 23:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psG0rAklIO-k for <devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 23:06:06 +0000 (UTC)
X-Greylist: delayed 00:07:19 by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1909485065
 for <devel@driverdev.osuosl.org>; Sat, 13 Jul 2019 23:06:06 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id v18so5376428uad.12
 for <devel@driverdev.osuosl.org>; Sat, 13 Jul 2019 16:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=tMVaEtsma6gM3qxAeq2DWlq9ccipMteWpzx1QSsbtJxp1KQsgpUK1O3Xm3rUL7U5d6
 7HIlcZjebo4lVO1eu7C9v7gvyXfkALLm01JlnyVN1tom+hEFpiwojkqysbG+gMY8eAFU
 19eHob+krzEh4d+U1Rt3N+ZUqIK0qMaXE6YwJAClmNlCZvYNRPxV/qsRQUnAPU3nqWd5
 tL6X3DfIXabcYmh0gJ8H2oOt2n0UMY5pkjVBuG/IN7GzDV502O1UVmZehdQQIDupVzto
 9in+iY7dMAO36YkrkXzPqfuQtXMBScjUQpLZBG7jDuXub8zkFyZa4zLDdSnd322Pjcq0
 8L1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=djGFJWEeuAwhVP6gHglDcgh6N1DNB7qw2Of1KmFJkluKPuBOgqReNsjgioS0PQFbf0
 1c1LN8O3KTTfiveyH3uBa93dSl5Sn4ThMKppGKku8nHymb3IU9EIDDNOB2lvRj3RxbFE
 0T5ZTES4QbFU5R/6qgUPyYrtCBmzwMW9TP23LhrKjDSknQA9B9Apb0XwqsuP/x8psG2Z
 2qZWVl5JDH2FD4DXXKwfQ1Z3DTuUh6oIiuO1AdTTm//1cc7Dn9CEqq4bfPvD9BbXS+MH
 EAjRL8yXxtzR25EkVZyIXsucYAYWJDrdqGASAoFvdH+QaJbLxspC3/KHT+SQJcaNAZK4
 uNcg==
X-Gm-Message-State: APjAAAWDBb5Wnei0jr03Rpih3fByrddGFDII0Tg4wIHbvyonl9EBYGQS
 aT+yOZwzCI/j5ncgzJJA8I1GYIGnpd5mvmRzFEY=
X-Google-Smtp-Source: APXvYqy9iyOxbGuuKGCYA7P9x4/jCssoGs1MvrDafxGacYP2yXkE8lKvX3eDFZmQr3u0yULaYS1miZoz7xW6gN4q6+4=
X-Received: by 2002:ab0:2a49:: with SMTP id p9mr12794749uar.0.1563058726092;
 Sat, 13 Jul 2019 15:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
 <2648434.ut0pN6mfR1@phil> <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
In-Reply-To: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 13 Jul 2019 19:58:38 -0300
Message-ID: <CAAEAJfAeZaT5wd4k8Lkf6T3G7LpK5LmOOG2ZbVJAQ6Xb7Wtdcw@mail.gmail.com>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
To: Alex Dewar <alex.dewar@gmx.co.uk>
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
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 13 Jul 2019 at 13:43, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
>
> On 13/07/2019 16:17, Heiko Stuebner wrote:
> > Hi,
> >
> > Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> >> I initially thought my machine was failing to boot entirely, but it
> >> turns out it was just failing to start the display manager. I managed to
> >> escape to a tty by hammering the keyboard a bit.
> >>
> >> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> >> which has been renamed to hantro in this merge window. When I run startx
> >> from a terminal, X fails to start and Xorg segfaults (log here:
> >> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> >> issues in v5.1.
> >
> > 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> > sure if it already can support X11 yet and your X11 log mentions
> > libglamoregl in the segfault stack trace.
> >
> > Apart from it bisect that Greg suggested you could also just try
> > blacklisting either panfrost or vpu kernel modules
> > /etc/udev/somewhere . This would prevent them from loading
> >
> > Hope that helps
> > Heiko
> >
> >
>
> Hi Heiko,
>
> Thanks for this. I blacklisted the panfrost driver and X magically
> started working again.
>
> I'll try to do a bisect later to find the offending commit though.
>
> In related news, it also seems that the sound and wifi drivers aren't
> working either in 5.2 (although I need to do a bit more testing to
> confirm the latter).
>

Adding myself and Tomeu.

Perhaps we need to disable Panfrost from defconfig from now?

Regards,
Eze
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
