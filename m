Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6502121AC2
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 21:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C2168826F;
	Mon, 16 Dec 2019 20:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMCzRRg6Y+zL; Mon, 16 Dec 2019 20:18:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8788686A14;
	Mon, 16 Dec 2019 20:18:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 226FA1BF3EE
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 20:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E6FB8672E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 20:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXwjgbPjh48L for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 20:18:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED730860C8
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 20:18:47 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id s15so3398427iln.1
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 12:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KyCUVV3rdpr7tDeSg76g9nK9b781278O7KA2xbZ0dR0=;
 b=iHHL7O+as7eWolVxsmxzpxUyxvjNe8LFILfa7HkOK3iS7jup4IU/ntb2NK2sS1LAdZ
 YUvpju6Hy0xYjRvu0i18C3RxHU8A4ywJcP213xDCLThJteRskHpFGfq4zC9blpJzR8e5
 Kd43QUsSdDR3WU4L/dLU5D8TX6fJvEHMgUcFLH3bJdI35YopTcDXxT64L7GxyLjs4++W
 eWMlt8U5wKEs5/QFSgJhG79Qg4Pj5iqPMJ+MQet720XPq4NfPpcO5DuDuZ8qhrC7eVDn
 r+UWbDsF1gLq8Z2P+t8FLkB1Y5Vhj2/ZIQ2aob4JBnVSZy5cUTfiF06/fbyqSld4PJLe
 QfIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KyCUVV3rdpr7tDeSg76g9nK9b781278O7KA2xbZ0dR0=;
 b=IC78EwNtlAOBeIR5ERMlK3S2otXM54jFea/Y4d+s9OIRPW+0OmiLjMbRTC6YFXDceQ
 invwpgp6h1vVJ8jW+voU3NR7WSbYijNmTTNP9YPTT2bsRBbaQwrJF5t6VJMd+BKTBQZH
 QwAUMiB3Ppr68YdisgJHokFTVBv3R2IBOc0ho2DbB8VNUiUly8MYY5LJvirrCzaHiBqX
 xf2zlMGod9N4DZEbL3lzuhEfhw3MrNF59Bo/qoJlrPaC/qq2QX/tNgD4/lkCSxK1wFpR
 DArsCrQY3OSt13DD0ipTc3VNCL90qs7l09hNardsDBgnu3GTVADUxk9TqlBBbJUVcKfm
 Sftw==
X-Gm-Message-State: APjAAAVir5+tSCwwCSoL1UJVI0tfDJny6r3mMDTi3PK2Da6JqGdTljur
 BXvbXSeN2qK2KjQ3LOsg0gITnb0KIbMOBPq4hCY=
X-Google-Smtp-Source: APXvYqzSEzu9t2auDYj+3nxgS4a5/G+lOTRzSkjO0L50ebyLT6+kDt8bpDOMCXv7X1n602yk6tYppRZnPhdejAau5WY=
X-Received: by 2002:a92:89c2:: with SMTP id w63mr13740064ilk.252.1576527527066; 
 Mon, 16 Dec 2019 12:18:47 -0800 (PST)
MIME-Version: 1.0
References: <20191215013306.18880-1-navid.emamdoost@gmail.com>
 <6159c10a-2f5f-e6ef-7a64-4b613e422efa@mev.co.uk>
In-Reply-To: <6159c10a-2f5f-e6ef-7a64-4b613e422efa@mev.co.uk>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 16 Dec 2019 14:18:35 -0600
Message-ID: <CAEkB2ERefAPHerg=F2V_-OHDH4P8sq2QjiP8+W=0HVgcCQNscw@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: drivers: Fix memory leak in
 gsc_hpdi_auto_attach
To: Ian Abbott <abbotti@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, Navid Emamdoost <emamd001@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ian, thanks for your feedback.

On Mon, Dec 16, 2019 at 4:36 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> On 15/12/2019 01:33, Navid Emamdoost wrote:
> > In the implementation of gsc_hpdi_auto_attach(), the allocated dma
> > description is leaks in case of alignment error, or failure of
> > gsc_hpdi_setup_dma_descriptors() or comedi_alloc_subdevices(). Release
> > devpriv->dma_desc via dma_free_coherent().
> >
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
>
> Actually, there is no memory leak (although there is another problem
> that I'll mention below).  If the "auto_attach" handler
> gsc_hpdi_auto_attach() returns an error, then the "detach" handler
> gsc_hpdi_detach() will be called automatically to clean up.  (This is
> true for all comedi drivers).  gsc_hpdi_detach() calls
> gsc_hpdi_free_dma() to free the DMA buffers and DMA descriptors.
>
I was aware that comedi_alloc_devpriv() is a resource managed
allocation, but was not sure how subsequent dma_desc allocation will
be handled when device detach.

> > ---
> >   drivers/staging/comedi/drivers/gsc_hpdi.c | 16 +++++++++++++---
> >   1 file changed, 13 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
> > index 4bdf44d82879..c0c7047a6d1b 100644
> > --- a/drivers/staging/comedi/drivers/gsc_hpdi.c
> > +++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
> > @@ -633,16 +633,17 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
> >       if (devpriv->dma_desc_phys_addr & 0xf) {
> >               dev_warn(dev->class_dev,
> >                        " dma descriptors not quad-word aligned (bug)\n");
> > -             return -EIO;
> > +             retval = -EIO;
> > +             goto release_dma_desc;
> >       }
> >
> >       retval = gsc_hpdi_setup_dma_descriptors(dev, 0x1000);
> >       if (retval < 0)
> > -             return retval;
> > +             goto release_dma_desc;
> >
> >       retval = comedi_alloc_subdevices(dev, 1);
> >       if (retval)
> > -             return retval;
> > +             goto release_dma_desc;
> >
> >       /* Digital I/O subdevice */
> >       s = &dev->subdevices[0];
> > @@ -660,6 +661,15 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
> >       s->cancel       = gsc_hpdi_cancel;
> >
> >       return gsc_hpdi_init(dev);
> > +
> > +release_dma_desc:
> > +     if (devpriv->dma_desc)
> > +             dma_free_coherent(&pcidev->dev,
> > +                               sizeof(struct plx_dma_desc) *
> > +                             NUM_DMA_DESCRIPTORS,
> > +                             devpriv->dma_desc,
> > +                             devpriv->dma_desc_phys_addr);
> > +     return retval;
> >   }
> >
> >   static void gsc_hpdi_detach(struct comedi_device *dev)
> >
>
> This patch could actually result in devpriv->dma_desc being freed twice
> - once in the 'release_dma_desc:' code and again when gsc_hpdi_detach()
> is called externally as part of the clean-up.
>
> The real bug in the original code is that it does not check whether any
> of the calls to dma_alloc_coherent() returned NULL.  If any of the calls
> to dma_alloc_coherent() returns NULL, gsc_hpdi_auto_attach() needs to
> return an error (-ENOMEM).  The subsequent call to gsc_hpdi_detach()
> will then free whatever DMA coherent buffers where allocated.
>
Yes, this potential null deref is another type of bug, which I will
send a patch for separately.

> --
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-



-- 
Navid.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
