Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE19822074C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 10:31:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 707E688A09;
	Wed, 15 Jul 2020 08:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoALRuQTOigd; Wed, 15 Jul 2020 08:31:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EECF7888BF;
	Wed, 15 Jul 2020 08:31:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C62FE1BF407
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2C6E8856C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vStDpebEq7I8 for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 08:31:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37B6A88497
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:31:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DBF620657;
 Wed, 15 Jul 2020 08:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594801908;
 bh=yiJirQWg9zviSkJbXACuIur4MPrAwCoUUHNi4tNnYFg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QDgFNGtzY6hhT0au1lwQAZoZYeOutZO1dNWi+TzklJXkHm0K8yoe8CgBFrF6bZjrt
 x4icQi7Qn1aOHEg5jsxqTU0ws/FI8X7zj/XgTzdFzIGkhpp4tixfQ0opMzxHQVz4kt
 kzzAIXM/piLhm7hOZS1O6DVm3C8g4z6KyBpGxvTQ=
Date: Wed, 15 Jul 2020 10:31:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
Message-ID: <20200715083144.GA2716443@kroah.com>
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> gregkh@linuxfoundation.org> wrote:
> 
> > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > fixed a sparse warning by changing the type in
> > > assignment from void [noderef] __user * to unsigned int *
> > > (different address space)
> > >
> > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > ---
> > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > b/drivers/staging/comedi/comedi_fops.c
> > > index 3f70e5dfac39..4cc012e231b7 100644
> > > --- a/drivers/staging/comedi/comedi_fops.c
> > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > >       cmd->scan_end_arg = v32.scan_end_arg;
> > >       cmd->stop_src = v32.stop_src;
> > >       cmd->stop_arg = v32.stop_arg;
> > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > >       cmd->chanlist_len = v32.chanlist_len;
> > >       cmd->data = compat_ptr(v32.data);
> > >       cmd->data_len = v32.data_len;
> >
> > Always run your patches through checkpatch before sending them, so you
> > do not have a grumpy maintainer telling you that you have to run
> > checkpatch on your patch before sending them.
> >
> 
> I will. Sorry for that.
> 
> But the error that's being shown in this patch is something that comes up
> on its own.

No it is not.

> git format-patch leaves trailing whitespace in blank lines.

It does?  Where is any trailing whitespace here?  That's not the issue.

> It has been reported to the maintainers.

It was?  Where?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
