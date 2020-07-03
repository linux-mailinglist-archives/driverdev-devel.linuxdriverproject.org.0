Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFB213430
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 08:30:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0CD988C36;
	Fri,  3 Jul 2020 06:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eAgJFecnrZoq; Fri,  3 Jul 2020 06:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA25388C33;
	Fri,  3 Jul 2020 06:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 580171BF5D7
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 06:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5479687D28
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 06:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cb1MrN0SqKzB for <devel@linuxdriverproject.org>;
 Fri,  3 Jul 2020 06:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B8F4B87D1B
 for <devel@driverdev.osuosl.org>; Fri,  3 Jul 2020 06:30:37 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id m25so16536776vsp.8
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 23:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K4CTOkloIJSngYKP9mYdXYRzGngQiHdh+SB3XRrQL7w=;
 b=RgKdKXB1RGn9Zl3WeaqKIP/k/A+DXNglNKPOVbE9c6+WpA1mM46zKKrY32uDDnrQoA
 YNGiJMVO2zbHDdneDG2dmEYbBAI5TNUrvQ5B6vGd1AYv1VGPANZH510/A/esAHxq/mP6
 CUB5r4WEBRdC8OGLXe+OKs8NWnBnSxfPSrD2ln+8cuzO/5pOrYCBk+u2g6EtB76IBpdF
 K32Wvv58Hm7AsnRiaPd6abKMZNiVaH3O9Yy4KxgMoKoDscu3qimIlf5X9MKPsz/e+xNp
 wKBxrEN9MOQDfEPicfypVgrPfjfUpcwuxSBh3VT69Brq8UEMLHW+g9Ny/jphlwKDlxYP
 LGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K4CTOkloIJSngYKP9mYdXYRzGngQiHdh+SB3XRrQL7w=;
 b=VLD1Rurpf6WD+4wheCwfwNYZF0UqfXRLVK6pgBHjC1My4nQqJp6MIsIOGLfgepOaSu
 1Xv7v/9UHstEKyW4SyixDbBJDahJV+dsJekswACtz4l1lP0DIAAC0bblNU1Z0aErbH3N
 Rr6HeF5q/ynfUNGw4mZSjFH3TInhVVkZOQpLYyDMt6JQG9cxmlga/zs1lA6cqaRn2fQ1
 myVQ7iHgebgnbvhyKiD/pj1rauyZS5jRJcwCcBSvnZ0WwF4lDPCHDVdMGKrTbMi9Mh+W
 wcYn8lFadnvxEeWfiJJC2eNMQ+nrxr/hd3eZVsB1HD/5vctmwqlBBInC9hmj/Uhp3HhI
 U7IQ==
X-Gm-Message-State: AOAM532MeZV8/NfDCuFs48zFuNtWDPzL7oveI/KtpuwdBVYzbBm8x2QH
 1PBq3jAoGYRRNOGDfzY+MWOcjVRNaX/iddkCsGo=
X-Google-Smtp-Source: ABdhPJyFlr0qEIYFkZ5F4P9NqPrjy6PHLc2lkC9tuBddmoGutZTuHxrOvaPN/Mn4860Mx5DPCVFTT9IqZGI4YyfycKU=
X-Received: by 2002:a67:8cc7:: with SMTP id
 o190mr25922203vsd.168.1593757836584; 
 Thu, 02 Jul 2020 23:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1592537217.git.vaibhav.sr@gmail.com>
 <e9aaa09c6688aa5ed8bddf51f5cd402bb8cf39b3.1592537217.git.vaibhav.sr@gmail.com>
 <20200701133655.GA2373798@kroah.com>
In-Reply-To: <20200701133655.GA2373798@kroah.com>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Fri, 3 Jul 2020 12:00:00 +0530
Message-ID: <CAAs3648mdWoeByMP_4s3Rcu4fbbChTW9C8s=DeyQQ=g_=W_EbA@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] staging: greybus: audio: Enable GB codec, audio
 module compilation.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alex Elder <elder@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 01, 2020 at 03:36:55PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Jun 19, 2020 at 04:50:26PM +0530, Vaibhav Agarwal wrote:
> > Currently you can't enable the Gey Bus Audio Codec because there is no
> > entry for it in the Kconfig file. Originally the config name was going
> > to be AUDIO_MSM8994 but that's not correct because other types of
> > hardware are supported now. I have chosen the name AUDIO_APB_CODEC
> > instead.  Also I had to update the dependencies for GREYBUS_AUDIO to
> > make the compile work.
> >
> > Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/greybus/Kconfig  | 14 +++++++++++++-
> >  drivers/staging/greybus/Makefile |  4 ++--
> >  2 files changed, 15 insertions(+), 3 deletions(-)
>
> Can you fix the build issues found by the bot and resend?

Sure Greg, I'll share the updated patch set with fixes for the issues
reported.

--
thanks,
vaibhav

>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
