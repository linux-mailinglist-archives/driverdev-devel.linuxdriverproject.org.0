Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3935D914F3
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 07:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5EF78610F;
	Sun, 18 Aug 2019 05:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCC5L2iWLoJ2; Sun, 18 Aug 2019 05:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78FDA85C7D;
	Sun, 18 Aug 2019 05:47:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F16841BF59D
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 05:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE2BC877CE
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 05:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P+d4D-EOQElV for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 05:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 25CCA8778F
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 05:47:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id u16so5371756wrr.0
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 22:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=47N6p8ewhRYWGQW91JnAoiOPqrVveWjmELOO6gChjRg=;
 b=ubYm8RR1SF+vF2IDo8InoxG2GymC8UKdnTR/E3SnOZXyzpSDG8yeL4kcktvfNHo2RN
 2+tnzqrXe3E9yvYk1PTo6Kitv86fL3Ufbuz+uJY5bmejmUG1d6/y4untXoI074mS2kKF
 fM8mJdfJW0To3J+OZ1n7HhKIl167reS57IrX1gLV/+sQ7po+QGnvO0fKwf/RbvoAsxyU
 TZxgJHUp0TBu58vsmABJCbS2SG3MViPApZOFn2daEmkH1cPUkagrSreOt/2shKZxHrCq
 LG8MAylKl58PCaEztoUPZSsU9M1uX8/CY8unYj2p1M970N+kh10GYwR0hpl9eqnKoQkz
 oRbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=47N6p8ewhRYWGQW91JnAoiOPqrVveWjmELOO6gChjRg=;
 b=WybARNl8DzNNVhhuN5AZo9JwKNIhP03d8APKZ1wch3H4pF199Puw/4sAELd+m7E6Oa
 aL/AnujQqeMVUa1nOKFT0f1SWRcvrWPeuQuh+34Ayv/VO7RFWXbN0L/OnCuzgKjD4q3L
 dbzBqqnYUoplPdQY6y6qvbYumXjemGxY+1oQkMcNeDhCac9eq6H4cBW8e864yYd5j8Z9
 Tk0GaRzyDfrZZkj5ABHYVWLPTvf/8w0BmwpAD2tNqgfJ6W6oBcFJXSKQ7JA/2bx+5k2K
 ToGbKM3Svrgebc5W2Dp1+sV0ZMmPP4yLIQXOjYSJR4IN0GLehx3UC0cD33UHxh3mLmUD
 r1Fg==
X-Gm-Message-State: APjAAAVWYKgl/vsrfqpRuQa2y5cl8mSPhUd2FdV1S3V+Uk3NmU+/P2be
 ls24cndjlVGsNYmj1bQCLANkVdUi70JQQ7RfcMY=
X-Google-Smtp-Source: APXvYqzkeMFUgv/IqcD5ibqLV+bqm5r5ug3eV8xRb+0IXBkIdlknz/8e31uo35M2fzyBnwgTwYgMJFatnuB7akH8Eo8=
X-Received: by 2002:adf:aa8d:: with SMTP id h13mr20358914wrc.307.1566107271462; 
 Sat, 17 Aug 2019 22:47:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190817213758.5868-1-donald.yandt@gmail.com>
 <20190818050317.GA8147@kroah.com>
In-Reply-To: <20190818050317.GA8147@kroah.com>
From: Donald Yandt <donald.yandt@gmail.com>
Date: Sun, 18 Aug 2019 01:47:38 -0400
Message-ID: <CADm=fgmb-JN-t-VxFSfWw_UzvxO__P6NkNh+U3XhR6+NRtK9yw@mail.gmail.com>
Subject: Re: [PATCH] staging: android: Remove ion device tree bindings from
 the TODO
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 1:03 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Aug 17, 2019 at 05:37:58PM -0400, Donald Yandt wrote:
> > This patch removes the todo for the ion chunk and
> > carveout device tree bindings.
> >
> > Signed-off-by: Donald Yandt <donald.yandt@gmail.com>
> > ---
> >  drivers/staging/android/TODO | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
> > index fbf015cc6..767dd98fd 100644
> > --- a/drivers/staging/android/TODO
> > +++ b/drivers/staging/android/TODO
> > @@ -6,8 +6,6 @@ TODO:
> >
> >
> >  ion/
> > - - Add dt-bindings for remaining heaps (chunk and carveout heaps). This would
> > -   involve putting appropriate bindings in a memory node for Ion to find.
> >   - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
> >   - Better test framework (integration with VGEM was suggested)
> >
>
> This is already done?  Do you have a pointer to the git commit id(s)
> that did it?
>
> thanks,
>
> greg k-h

Hi Greg,

Both the chunk and carveout heaps were removed from ion,
so unless I'm mistaken there's no need to implement the device tree
bindings for them.

Commits that removed both heaps:
  - 23a4388f2 staging: android: ion: Remove file ion_chunk_heap.c
  - eadbf7a34 staging: android: ion: Remove file ion_carveout_heap.c

thanks,

Donald
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
