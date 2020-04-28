Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B87CD1BBFE2
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 15:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAF99873C5;
	Tue, 28 Apr 2020 13:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TrAxbdzvoMKG; Tue, 28 Apr 2020 13:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3545F8708C;
	Tue, 28 Apr 2020 13:39:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 847A51BF401
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 13:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 813C5878F1
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 13:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fLOjjfXHXP0 for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 13:39:47 +0000 (UTC)
X-Greylist: delayed 00:18:09 by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B8B68789C
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 13:39:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id d15so23070267wrx.3
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 06:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5a2eKTENfxkdvpOt5VzR6SvytBF+3s88viN7AKjLVdk=;
 b=CVUft4xkdr43lQ63chS++b/oPL3cC02sbzcPM1S7XAKfYEAE1aZF/USAy24HCViPZw
 DSWHX0f5mDhNs8Ool38vGpkU4hX4368gnxAGmo/jMsAHU2HlNK+69FXdImuUQBAu7TG/
 t0TTft/FpaziMmpadn+9kIHSq2bjFJnlj8H+dLhlHY+z2i7IlQg+0VyUry6oEjcz0pWR
 PWgVqUQ/NLrfFLIwVNuxMpB3Odzn7AX5QU4FXhgxSqRXPTtHRRhAteeBOUlJmRRhDiL/
 bl0So/vwTTtO44iTAp0PD45dJbarvu5wnkPFSGIiua9v904trNUesofzeeAjehyw8GUJ
 1XSA==
X-Gm-Message-State: AGi0PuYZxMdn52ciYHC2ZMxAWMUHlgBX7rDGm/b131wLTqH5tJ6aY7Gn
 dD7gEmTOFMTKgJKwFw0j3QDiT0y28iaodNSHMdIr
X-Google-Smtp-Source: APiQypKJ7Znr8xxbFupiDIbeDll7/mUifz2A7jx6hPicMw/uEvMh3pLQxhSgEGbao/4OCBqSoJuvk7DcpKLXX/Mx2Bk=
X-Received: by 2002:adf:fe45:: with SMTP id m5mr35638988wrs.124.1588081185601; 
 Tue, 28 Apr 2020 06:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200426161319.23941-1-john.oldman@polehill.co.uk>
 <20200426170719.GA2138855@kroah.com>
In-Reply-To: <20200426170719.GA2138855@kroah.com>
From: John Oldman <john.oldman@polehill.co.uk>
Date: Tue, 28 Apr 2020 14:39:34 +0100
Message-ID: <CA+JojbrD5F6foCUGZT_fKW+MnJnuQsFH87bfy9V+WUXwxqKyXw@mail.gmail.com>
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma.c: Fix Missing a blank
 line after declarations
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

(this time sent as plain text)

I was not so happy about this one, even though I went and committed it.

Without the blank line checkpatch reports:

WARNING: Missing a blank line after declarations
#160: FILE: drivers/staging/mt7621-dma/mtk-hsdma.c:160:
+ struct tasklet_struct task;
+ volatile unsigned long chan_issued;

So I dumly inserted a blank line to silence checkpatch.

In hindsight maybe a false positive, blank lines in a struct!

Someone may have been there before as there is a previous blank line
in the struct mtk_hsdam_engine :o)

Cheers
John


On Sun, 26 Apr 2020 at 18:07, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Apr 26, 2020 at 05:13:19PM +0100, John Oldman wrote:
> > Fixed coding style issue
>
> No you didn't :)
>
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 14592ed9ce98..dd35d0bce6ca 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
> >       struct device_dma_parameters dma_parms;
> >       void __iomem *base;
> >       struct tasklet_struct task;
> > +
> >       volatile unsigned long chan_issued;
> >
> >       struct mtk_hsdma_chan chan[1];
>
> This file seems to be the "does the submitter look at the patch they are
> sending" litmus test.
>
> Does that really do what you think it does?
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
