Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555AC26DE57
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 16:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3EC38762E;
	Thu, 17 Sep 2020 14:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahJ62XIrYSy8; Thu, 17 Sep 2020 14:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69C85875A1;
	Thu, 17 Sep 2020 14:36:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 378FD1BF399
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3373F875A1
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfz62kvLlYg4 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 14:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F6F98759D
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 14:36:21 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k13so821007pfg.1
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 07:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q8jrz6uWJjZDV5osg8THNEfIWCpsd8KCJUTVbj5qsm0=;
 b=SNst3m0v1mqRhl2zQtDQSsgxFQI03f/4abAenMcrtiZa3F20Ldtk5p950SXqNvzohh
 9eG7P3yvILc/52txWdh3OUJ23SaQr7B5/TFalX4QW9btcWzWNkVSoOcdHcnW6DrmgKNU
 gBHF/78VXjeadWrs7z+rVXCzFWo9JyRcmdUQIlV9ewnOiJVWPzAB86Woqm+b7a9L30HX
 yod5fx91qCtk1/19XDlTTtK+dbmTSmpye6G6yCiIH/hrbLlZeezGLwlprIXR1e68ZPpu
 aTG2Og7+W1/iBbLSszbja1sVSYHDParWBDC5SUV82ySP8+g9DtFLlgYQbj4PyDXTBqy+
 UZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q8jrz6uWJjZDV5osg8THNEfIWCpsd8KCJUTVbj5qsm0=;
 b=kjk6YA9TlA+2n1bw9v4ojFTE1QTLNLrvD5Si8pFciiDIRH5fLtT3EoXU3ydVUMnFUA
 5owNEviXOMaVsC6dzzNA4v8FmzkgpCC0tYu6KmfZzpeA4oiyzYca4nmk3lg7QogO77rq
 avWzVbpPqkAkfBuZKMTB5FOw/Psw7h8kMJHZziePVWz4jVjFavw9w0tUXnJJcRGnRt3Y
 0ZB56TUFNoH3Zu7gbMeSDwwMWp1jUbCu/bh3iIGxGVCwxAUUTVxtTnALl1NnR729Uamv
 onSGcZcVnIGic4T3UBlPBVf4jFUgohspgpsNcj0a0jT/71duulAZJoq7o8xrVEcZOTCJ
 qpXQ==
X-Gm-Message-State: AOAM533T2GYlqTXccWQATzMfdvfXHx11u2tOGwKKTgATbVkGjSDrRmFk
 /rjVZc7v+ydlqnbjilJjCeoZaFl20Gcg2BLFs70=
X-Google-Smtp-Source: ABdhPJwoGicLiaC6w05McLgvuCi15yGa4WMG7a4CIxJz55Pw3FYa5lbkadDow5+1sPXEbSjRU9z7QiGiI86iOFyWa9s=
X-Received: by 2002:a63:c543:: with SMTP id g3mr23214145pgd.203.1600353381129; 
 Thu, 17 Sep 2020 07:36:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917075356.GA3333802@kroah.com>
 <d97fb93f-5258-b654-3063-863e81ae7298@gmail.com>
 <53787a36-4473-9336-6719-270930db2735@ideasonboard.com>
 <CAHp75VcjSZC7BG9ckFTogTK0xXog9tev8i3w=P0iN4JRQY05XQ@mail.gmail.com>
 <f48ec4c5-0674-2e43-cbd8-f5dcc4bf5b15@ideasonboard.com>
In-Reply-To: <f48ec4c5-0674-2e43-cbd8-f5dcc4bf5b15@ideasonboard.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 17 Sep 2020 17:36:03 +0300
Message-ID: <CAHp75VcsDVe8RzPT9pWE1v7rX6yCysmV5tNR9q09UR_sHDfBaA@mail.gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: kieran.bingham@ideasonboard.com
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
 Rob Herring <robh@kernel.org>, jorhand@linux.microsoft.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Scally <djrscally@gmail.com>, Tsuchiya Yuto <kitakar@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Yong Zhi <yong.zhi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 5:19 PM Kieran Bingham
<kieran.bingham@ideasonboard.com> wrote:
> On 17/09/2020 15:08, Andy Shevchenko wrote:

...

> Ayee, ok so we have 'half' the driver for IPU3 out of staging.

Correct. And your below analysis is correct.

> From my understanding, the IPU3 consists of two components, the CIO2
> (CSI2 capture), and the IMGU (the ISP).
>
> - drivers/media/pci/intel/ipu3
>
> This is indeed the CIO2 component (config VIDEO_IPU3_CIO2), and that is
> the part that this bridge relates to, so in fact this cio2-bridge should
> probably go there indeed. No need to go through staging.
>
> The files remaining at:
>
> - drivers/staging/media/ipu3
>
> are in fact also for the IPU3 but the ISP component (VIDEO_IPU3_IMGU).
>
> I'm sorry for the confusion, I knew that the ISP was still in staging, I
> hadn't realised the CSI2 receiver (CIO2) was not.
>
> >> Hopefully with more users of the IPU3 brought in by this cio2-bridge,
> >> that will help gather momentum to get the IPU3 developments required
> >> completed and moved into drivers/media.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
