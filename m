Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 401483413CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 04:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B08DF4EC41;
	Fri, 19 Mar 2021 03:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8CY8g-vxArt0; Fri, 19 Mar 2021 03:49:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1A1B470D7;
	Fri, 19 Mar 2021 03:49:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5B111BF976
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 03:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B441F470D7
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 03:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a_ES4i4Ja49C for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 03:48:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7393446963
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 03:48:52 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id m6so6855435ilh.6
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 20:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hxhh6pAeMJKWUC39tUcChryYGa8hpOFSDYpkxrgsErw=;
 b=r7sclbCMB6a+rHNtxfflluf2hpMjzxuVu1a7hdqZd5jXMrWUt2WTn8GArdJ/jdpzLC
 ohmLlSuPzlBFZbj51NN1Vc0OmH9T1dQRacneLDlK+z8ew9xEQukaIPInps3HZ4rZibgi
 a5sHBa2Ga5gj4pJ9CerRhsI4G8q0JMGoJknzgFb3zfd/bX5yUbcfMzTR9VeCV5JsWkik
 1pakKGoi2p4u+plpVDTojy+fGm1P7fIqQuKlIa9xXz4Pz151v3GPGz6P6B7T0j+5Od0a
 oIL7yeUjOHjdXBu5jE8wodzCQTcBVxgGO+pWH3nQYeX7U1LR+xLm3PAheZWdUl9PoWyJ
 yjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hxhh6pAeMJKWUC39tUcChryYGa8hpOFSDYpkxrgsErw=;
 b=bIuM0xEnoX6LZqD7zYBYuwI9Drm1yDXucN6MjhFRdAtHDewjzypqqKqqstXnK5XEtu
 GJVjbXvVkP7SIyliDXiVi2yec7Pxv2MXyqY9VsKJYgsP3maTWhJELGC9mSkVLur2wuH+
 1SXTpYy/h2sFiqIJbsmOlPrHwS/wG6p3rJyN8fuUHKnmY7aTaKi3VsT9aPGCZ4tFzfmV
 8V/7zBtfk2o0mqDSlTxtntN1I6giSeJnRdHJ+V5XmUV55OcYlYhIt6lh+w98SlK04m9b
 tMO24nV4iNn7Icpb5MRW+zoQvNImJG1bUTprf+yaWwiwMLd9N6ZsQMNo9lzqv6EJqgIg
 n5FQ==
X-Gm-Message-State: AOAM531Z31Z7brRaL/hsUOrzvq8mFNUfQtyuXvlP1x2P6kxc/InIrhhX
 hlw8byzyUxEMzxVs9tv1XQGVNC4W9gtt6v49iEg=
X-Google-Smtp-Source: ABdhPJx+za7yvjtEOGs82SfNoIJ06p8nDAtIhJnWshOarUMCa64x/w6TPO7B0QLa3rbZbLqmZgMeJpKv8Yu6qj1gQCM=
X-Received: by 2002:a92:5214:: with SMTP id g20mr1212495ilb.260.1616125731645; 
 Thu, 18 Mar 2021 20:48:51 -0700 (PDT)
MIME-Version: 1.0
References: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
 <20210316224227.348310-1-ztong0001@gmail.com>
 <8c65b02e-4315-153f-de2c-153862f195be@mev.co.uk>
In-Reply-To: <8c65b02e-4315-153f-de2c-153862f195be@mev.co.uk>
From: Tong Zhang <ztong0001@gmail.com>
Date: Thu, 18 Mar 2021 23:48:41 -0400
Message-ID: <CAA5qM4BvHNT9YboUnKXwQcqHVBMSiAXS16Y9ogLk+pHCk+O4FA@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: das800: fix request_irq() warn
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
Cc: devel@driverdev.osuosl.org, open list <linux-kernel@vger.kernel.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thank you all,
I fixed the commit log and resent as v2.
Thanks,
- Tong

On Wed, Mar 17, 2021 at 8:48 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> On 16/03/2021 22:42, Tong Zhang wrote:
> > request_irq() wont accept a name which contains slash so we need to
> > repalce it with something else -- otherwise it will trigger a warning
> > and the entry in /proc/irq/ will not be created
> > since the .name might be used by userspace and we don't want to break
> > userspace, so we are changing the parameters passed to request_irq()
> >
> > Suggested-by: Ian Abbott <abbotti@mev.co.uk>
> > Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> > ---
> >   drivers/staging/comedi/drivers/das800.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/das800.c b/drivers/staging/comedi/drivers/das800.c
> > index 2881808d6606..bc08324f422f 100644
> > --- a/drivers/staging/comedi/drivers/das800.c
> > +++ b/drivers/staging/comedi/drivers/das800.c
> > @@ -668,7 +668,7 @@ static int das800_attach(struct comedi_device *dev, struct comedi_devconfig *it)
> >       dev->board_name = board->name;
> >
> >       if (irq > 1 && irq <= 7) {
> > -             ret = request_irq(irq, das800_interrupt, 0, dev->board_name,
> > +             ret = request_irq(irq, das800_interrupt, 0, "das800",
> >                                 dev);
> >               if (ret == 0)
> >                       dev->irq = irq;
> >
>
> Looks good (apart from the minor spelling niggle spotted by Dan
> Carpenter), thanks!
>
> Reviewed-by: Ian Abbott <abbotti@mev.co.uk>
>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
