Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB00CE8BB8
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 16:22:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFC9D879B8;
	Tue, 29 Oct 2019 15:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bci-kTHbEox3; Tue, 29 Oct 2019 15:22:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05FF387934;
	Tue, 29 Oct 2019 15:22:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AD3C1BF3F7
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 15:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5782A2051C
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 15:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZES0fNXR2yK for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 15:22:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 533642039B
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 15:22:28 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c22so2862406wmd.1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 08:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=734NRPXgAYnnoaK0bvSdeqVDUGQF7yU76dpnnD5fv0Q=;
 b=tVAZyxTpjFjDlOz5gxjL+cD/NIZdzQ8iGZcBDftXC9WI/Ntnb+Ka/RGAL7slxUPV0e
 /2+oWcw0juA2F9d/FUXHnX6QHjk3qiIcBdpfBNzbid/UmtIqMliunrp9+oXi7tOwRJOW
 O7LEM3A3a9oP+8nl+oXRPVg967ViQGXIbBhPiC78JbMEBPTLDmuhQdxh2dldUOjs/lJA
 BMzWF/rRP/cUBIsAY4LGKrZnGU704+6LslLJuPHvnJxoW7/UHWxCqa/j88O9VF0sFfYe
 0iVMmRAGoViUICUog8v6uXjg3g93KvHMXUtBq7IYu+2UQS4WZ1zH+JGRCdtafKErta8L
 +uGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=734NRPXgAYnnoaK0bvSdeqVDUGQF7yU76dpnnD5fv0Q=;
 b=N5sJP53MBfEFJzzuXk/Jy3ZEjWpGTa0W7VjZQ63NnwwGG8Ff5X/RZDuHYias8GqFWW
 phgPlF9zOrh+LeicnhOFj9Bze9LEtX3ClHU+MLZKg8bKKsZYmLQw5eSUdpQR1qK7+KVP
 3peHX7F7yp+mjn2fufL5CJK0BV0C8VoafEknUED9Zf1Z/c5g93X4RV/RxhjFCzBwhB/E
 87FYsQ/fDZnlW8ERazpM6TwsMw3HksP5CDaGTO8sr+wBk6FRDA2QzPPYQ4V7U3TWd2h7
 kRhfWImTaVftMW38j7n16VqaC/M3VE1WMS6W0KjFwP4Hu8CRlUeTvmpFf8pGgnN/wT63
 Lb0A==
X-Gm-Message-State: APjAAAUyLuQL3SbJVVqUGzc28/RdiZIN/SW+j2tES7AzPponubvHJIDV
 lMGkp04zJ6Oa/+bQOb+R+eY=
X-Google-Smtp-Source: APXvYqyzYdTNlb3awoWZWSzAlm5z0ON3TRTPeYkLuzqe71IbLTdH1gtoM2nJuROYdVkInkZ4LI+5+g==
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr4453131wmc.118.1572362546784; 
 Tue, 29 Oct 2019 08:22:26 -0700 (PDT)
Received: from sivanov-pc ([92.247.20.94])
 by smtp.gmail.com with ESMTPSA id y128sm3474902wmg.10.2019.10.29.08.22.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 29 Oct 2019 08:22:26 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:22:24 +0200
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] Staging: gasket: implement apex_get_status() to
 check driver status
Message-ID: <20191029152224.GA9523@sivanov-pc>
References: <20191028225926.8951-1-samuil.ivanovbg@gmail.com>
 <20191028225926.8951-2-samuil.ivanovbg@gmail.com>
 <20191029081007.GA520581@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029081007.GA520581@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, rspringer@google.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 29, 2019 at 09:10:07AM +0100, Greg KH wrote:
> On Tue, Oct 29, 2019 at 12:59:25AM +0200, Samuil Ivanov wrote:
> > >From the TODO:
> > - apex_get_status() should actually check status
> > 
> > The function now checkes the status of the driver
> > 
> > Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
> > ---
> >  drivers/staging/gasket/apex_driver.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> > index 46199c8ca441..a5dd6f3c367d 100644
> > --- a/drivers/staging/gasket/apex_driver.c
> > +++ b/drivers/staging/gasket/apex_driver.c
> > @@ -247,6 +247,9 @@ module_param(bypass_top_level, int, 0644);
> >  static int apex_get_status(struct gasket_dev *gasket_dev)
> >  {
> >  	/* TODO: Check device status. */
> > +	if (gasket_dev->status == GASKET_STATUS_DEAD)
> > +		return GASKET_STATUS_DEAD;
> > +
> 
> Have you tested this to verify that this is what is needed here?
> 
> thanks,
> 
> greg k-h

Hello Greg,

After going through the code again, I am sure this not what is needed here.

I thought that gasket_dev->status is already set to either
GASKET_STATUS_ALIVE of GASKET_STATUS_DEAD,
and all I needed to do is check it. It turns out that status
has to be set before that.

So what I found is that function gasket_get_hw_status()
in file gasket_core.c is used to determine the health of the Gasket device,
and other function use it to set gasket_dev->status and then check
the device status.

I think it should be something like this.
...
gasket_dev->status = gasket_get_hw_status(gasket_dev);
if (gasket_dev->status == GASKET_STATUS_DEAD) {
        dev_dbg(gasket_dev->dev, "Device reported as dead.\n");
        return -EINVAL;
}
return GASKET_STATUS_ALIVE;
...

I can try this, but I have no means of testing it.

Grt,
Samuil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
