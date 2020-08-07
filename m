Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85F923EDAE
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 15:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9534488A2D;
	Fri,  7 Aug 2020 13:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ro7nXFFArsKQ; Fri,  7 Aug 2020 13:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC0EE88905;
	Fri,  7 Aug 2020 13:09:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 439281BF2AB
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 13:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4007F888EC
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 13:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4iJ9nyrl7VF3 for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 13:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B1A9888E4
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 13:09:32 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id qc22so2025335ejb.4
 for <devel@driverdev.osuosl.org>; Fri, 07 Aug 2020 06:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C2XCXsmJyA7W5usz6rBfTizoWqy9Uyp5cHVW9IvGA2c=;
 b=axN4FL/COED5Z5yRiWtsARF1hdhL5JgTJpfZqkBRCXe4tFeCxtQCgehSz7hPjibXzw
 jwYp+AotTyirGdBNg0299qV5KbQxVHSXao/FMMViaFCst/9JCu9xJSDK31A3nNMqhJvE
 RoyggGI4FWc+l3ItIb1XuejWp3OM4WSzgaWNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C2XCXsmJyA7W5usz6rBfTizoWqy9Uyp5cHVW9IvGA2c=;
 b=WCcjN3wkjwJbiG0+smgHVmOCFlJOTE9HNjvFzo02/bRrn+A5AO1+jIGgt9dYySezQf
 Eos4bcYfOv6RdvtgtX0b3yPKI+qsfJKzi8X6SxLycCurH5KTRSDuPqAGjocfhu7ZtwH2
 duNdwmXxi4Z6ClV/xC79WZmU3RAsh7ZQ1os3VSGJwJzIkyBD0uTTR26oL/NGhZWoUPF6
 DQiYi2TQNxts5N12YhQ97XewMgnriWLDGQABj3uzTVec/AwEZZ9MnF5CzKnhYpnAQWsH
 4GjI12zSpJkD/1tmwZu+8c3TshkjEpYGiX2W7KDFrYf2Irtqy42Xjw/X10rp8NwJrQ9I
 izIQ==
X-Gm-Message-State: AOAM533LV5k5+16NcmJ+POMbYtV6xrvDKRdb73/GGapUKlL+Jz+/xypE
 j75YsbENNxWq9aEh2935SJLOstvWkC7HTtYm5jS+Aw==
X-Google-Smtp-Source: ABdhPJxrEzTPKTvRkUAnTnQZpqhKI9YTMaeAolXGnU7xz6Imi4rKSsQrGfHqItdJEg+dDbPYVlolH1F5VhxwHH1WaNw=
X-Received: by 2002:a17:906:3850:: with SMTP id
 w16mr9706026ejc.205.1596805770763; 
 Fri, 07 Aug 2020 06:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
 <20200710070332.GA1175842@kroah.com>
 <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
 <CANMq1KC7CgUT+neoOUZbnr8MbDgqEikqt2vn8dxAS1rpX=C2aA@mail.gmail.com>
 <20200807062809.GB979264@kroah.com>
 <CANMq1KD_hJ_ST3du7dcSd8GBtdL4d-C1pWbxXz8Wu8w79-2fUg@mail.gmail.com>
 <20200807100444.0f2d3c94@coco.lan>
In-Reply-To: <20200807100444.0f2d3c94@coco.lan>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Aug 2020 21:09:20 +0800
Message-ID: <CANMq1KD1HDT75YqwyqW-wdGZGSjuq_GvGdwYNF2ZU8Cgx6HHEg@mail.gmail.com>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
To: Mauro Carvalho Chehab <mchehab@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 7, 2020 at 4:04 PM Mauro Carvalho Chehab <mchehab@kernel.org> wrote:
>
> Em Fri, 7 Aug 2020 14:51:12 +0800
> Nicolas Boichat <drinkcat@chromium.org> escreveu:
>
> > On Fri, Aug 7, 2020 at 2:28 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Fri, Aug 07, 2020 at 09:50:23AM +0800, Nicolas Boichat wrote:
> > > > On Fri, Jul 24, 2020 at 8:41 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > > >
> > > > > On Fri, Jul 10, 2020 at 3:03 PM Greg Kroah-Hartman
> > > > > <gregkh@linuxfoundation.org> wrote:
> > > > > >
> > > > > > On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:
> > > > > > > trace_printk should not be used in production code, replace it
> > > > > > > call with pr_info.
> > > > > > >
> > > > > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > > > > ---
> > > > > > > Sent this before as part of a series (whose 4th patch was a
> > > > > > > change that allows to detect such trace_printk), but maybe it's
> > > > > > > easier to get individual maintainer attention by splitting it.
> > > > > >
> > > > > > Mauro should take this soon:
> > > > > >
> > > > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > >
> > > > > Mauro: did you get a chance to look at this? (and the other similar
> > > > > patch "media: camss: vfe: Use trace_printk for debugging only")
> > > >
> > > > Mauro: Another gentle ping. Thanks.
> > >
> > > It's the middle of the merge window, maintainers can't do anything until
> > > after 5.9-rc1 is out, sorry.
> >
> > Huh, wait, looks like Mauro _did_ pick it (found it in this email
> > "[GIT PULL for v5.8-rc7] media fixes").
> >
> > My bad then, I was expecting an ack ,-)
>
> Never expect acks. Kernel maintainers usually don't send them.

For some reasons I'm working mainly with maintainers who do ,-) I'll
adjust my expectations, thanks.

> Yet, in the case of media, you should probably have received
> an automatic e-mail from our patchwork instance.

Nope, didn't receive anything. But I'm happy to blame gmail for that...

Anyway, I'll ping you again after the merge window closes about
"media: camss: vfe: Use trace_printk for debugging only" (I _think_
that one didn't get merged). Hopefully not too many other
trace_printks made it through the cracks in the meantime ,-)

Thanks, have a good weekend,

>
> Thanks,
> Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
