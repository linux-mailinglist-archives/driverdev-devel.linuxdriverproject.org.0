Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19F18F3AE
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 12:31:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24B3187DFE;
	Mon, 23 Mar 2020 11:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D5ZmbbbX6wvq; Mon, 23 Mar 2020 11:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA1387DC2;
	Mon, 23 Mar 2020 11:31:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1E31BF487
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 11:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7909587EAA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 11:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sq197g9C6VyU
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 11:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8053C87B96
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 11:31:20 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id k9so1747898oia.8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 04:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8j092YaIysEVivFQPNowv8I9XIy/vAo7g3qjqV6ZXIg=;
 b=GgS2/5YtYoSLnIG9X6VTM3I3qxgTSzjp0azOZC1hO+XtmZzwL+hrf6/m+f99RVHw1o
 4g6Ati+V+RH7IRkceyM1K0AT5f/CJkgf2d+NaVOpTyWUMDhmLAu6EgKIrzyDrbCTawSw
 fJ+BfR4P0mquX7pWql9mPGmwXzrvCOvxE3flBhnEGTMDGUvdXrKckfFYcpC0pLF2bBrg
 G0KspkeAnBiNFBggCDxgcaiyTNPx9mZlsvwMAnOKOWfgMIBX6Rl1zlAq/rlHj3b/IW1X
 0NoVWf2Eg04PUDCMyX0D+Dd1bCSrEqnHzA9W79bZVDSxFEXxY4hbezpsAyE92NLFX8KC
 xXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8j092YaIysEVivFQPNowv8I9XIy/vAo7g3qjqV6ZXIg=;
 b=RrSMZqd6biqGlrd/cSiRSvjQRfJpJeAsXMAteJTLus/CfJTakafZjaXyJSGMiPuRGX
 AR2skB8urX8wkZZpzrWdONtHaJbPEvTYjTi3+Ne2GKGcVmfUmqAD6FR2M40GkzwgKvt9
 FgcKrSsCH4jF7B9tf8tgT0/vcv580H7sXxLUwtCClT3NvfGtIaNKQTj7fS3H5UzmfAlq
 9iTI+q3vVoieEgkGD7/66uZiwS2EutQEeI3QY2kMm1BjStq8EZVtY0v5ytZQdGTc230M
 Usi0rDD87Zrvy2e536d65rXEjdVmlPP5F+tZv9aTNlHAQRMIk1oBH3nMM7nhnry6Xgv+
 lw2A==
X-Gm-Message-State: ANhLgQ0X8LV9mYZh9eF8VV8tXroDzxAUDc/4/Bf5oi+YiXEOwJU7g/CE
 GCUeSDbwQiv/HkV/n4hZ+xILj/94IWsE5pbmFmuR0A==
X-Google-Smtp-Source: ADFU+vuS8zWhDHoBN8BH9yfa/Svv1eQD54X9dxG79Uqfeo+rKhD7WNuyRjv/UOeOsuaQsWcItr+hRAiWVFl8rM5BHek=
X-Received: by 2002:aca:4a56:: with SMTP id x83mr5177909oia.166.1584963079657; 
 Mon, 23 Mar 2020 04:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
 <20200321133624.31388-2-sergio.paracuellos@gmail.com>
 <20200323103227.GA433808@kroah.com>
In-Reply-To: <20200323103227.GA433808@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 23 Mar 2020 12:31:08 +0100
Message-ID: <CAMhs-H9iO4=bQU9WRHX-J+dNKM9u48xH+27ooif6NXuHUmt38w@mail.gmail.com>
Subject: Re: [PATCH 2/4] staging: mt7621-pci: add myself as a contributor of
 the driver
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Mon, Mar 23, 2020 at 11:32 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Mar 21, 2020 at 02:36:22PM +0100, Sergio Paracuellos wrote:
> > During a long time I have been cleaning and fixing this driver
> > in order to use current kernel's apis and try to get it out of
> > the staging area. At the end the driver is mt7621 specific and
> > has been completely re-written. Hence, add myself to the header
> > as a contributor of this driver.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  drivers/staging/mt7621-pci/pci-mt7621.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> > index b8065b777ff6..5e80479ce653 100644
> > --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> > +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> > @@ -13,6 +13,9 @@
> >   *
> >   * May 2011 Bruce Chang
> >   * support RT6855/MT7620 PCIe
> > + *
> > + * 2018-2020 Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > + * Re-write the driver for SoC mt7621
>
> That's what the maintainers file is for, and the changelog, we don't add
> new items to the top of files for this, otherwise that would just be all
> the kernel consists of :)
>

Pretty clear, thanks for letting me know.

> thanks,
>
> greg k-h

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
