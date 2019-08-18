Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D2E91512
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 08:31:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EE8D85B0C;
	Sun, 18 Aug 2019 06:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QUdvBOwDMt_H; Sun, 18 Aug 2019 06:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B388085184;
	Sun, 18 Aug 2019 06:31:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F0041BF4DB
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 06:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C22E20366
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 06:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7oEP7LYNPTY for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 06:31:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CBDD82035E
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 06:31:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F34B2087E;
 Sun, 18 Aug 2019 06:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566109887;
 bh=yS7kcy4ENt8zJ6qY/RMfLntL/OB8sSWXB1lEigYzgpw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s7OjEhxXHpJ9fzLXh+oI3B/bBqsY4tRgt/q/TsZZi1Ca5rxl3Ug74XgD197BDgaj0
 +jD4GjNURVObr3mMjd3uIUtRSzJ3bgJym6N7/9uxeE9aLPI2BG2X9tDcRLGsZvUjLW
 g/RoswdqGJwOtMdALwLzlgLdVOWUr1vhVHasDiAk=
Date: Sun, 18 Aug 2019 08:31:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Donald Yandt <donald.yandt@gmail.com>
Subject: Re: [PATCH] staging: android: Remove ion device tree bindings from
 the TODO
Message-ID: <20190818063124.GA31192@kroah.com>
References: <20190817213758.5868-1-donald.yandt@gmail.com>
 <20190818050317.GA8147@kroah.com>
 <CADm=fgmb-JN-t-VxFSfWw_UzvxO__P6NkNh+U3XhR6+NRtK9yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADm=fgmb-JN-t-VxFSfWw_UzvxO__P6NkNh+U3XhR6+NRtK9yw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Sun, Aug 18, 2019 at 01:47:38AM -0400, Donald Yandt wrote:
> On Sun, Aug 18, 2019 at 1:03 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Aug 17, 2019 at 05:37:58PM -0400, Donald Yandt wrote:
> > > This patch removes the todo for the ion chunk and
> > > carveout device tree bindings.
> > >
> > > Signed-off-by: Donald Yandt <donald.yandt@gmail.com>
> > > ---
> > >  drivers/staging/android/TODO | 2 --
> > >  1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
> > > index fbf015cc6..767dd98fd 100644
> > > --- a/drivers/staging/android/TODO
> > > +++ b/drivers/staging/android/TODO
> > > @@ -6,8 +6,6 @@ TODO:
> > >
> > >
> > >  ion/
> > > - - Add dt-bindings for remaining heaps (chunk and carveout heaps). This would
> > > -   involve putting appropriate bindings in a memory node for Ion to find.
> > >   - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
> > >   - Better test framework (integration with VGEM was suggested)
> > >
> >
> > This is already done?  Do you have a pointer to the git commit id(s)
> > that did it?
> >
> > thanks,
> >
> > greg k-h
> 
> Hi Greg,
> 
> Both the chunk and carveout heaps were removed from ion,
> so unless I'm mistaken there's no need to implement the device tree
> bindings for them.
> 
> Commits that removed both heaps:
>   - 23a4388f2 staging: android: ion: Remove file ion_chunk_heap.c
>   - eadbf7a34 staging: android: ion: Remove file ion_carveout_heap.c

Great, can you resend this patch with that information in the changelog?
As you wrote it, it could be implied that these tasks were actually
completed :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
