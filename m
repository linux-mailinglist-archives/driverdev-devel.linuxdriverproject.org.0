Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14F82208BE
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 11:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC4C48AB5D;
	Wed, 15 Jul 2020 09:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mlixwuDLXVZW; Wed, 15 Jul 2020 09:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 352528AB59;
	Wed, 15 Jul 2020 09:29:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B36E91BF39C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9987F20512
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IJCnrCijALa for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 09:29:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5881B2048C
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 09:29:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A790B206D5;
 Wed, 15 Jul 2020 09:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594805340;
 bh=qN3h0oqL9OwcQLdSejL7rMTJrUXSA/Bo+m4/ZpHyVxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EfVqVDZPXk46anBCCtqdtwBiuzdT5gesIuZXO9e3sJvAy+/NnLbOX8f5QjW6Lw8ku
 qOez0AnaRBHvTWJ2Jz0TUrD3fitPj7HgTSVnIBuVJvFl6E+kNAAT4NzEEGcbGzdqCm
 jZHeACaE8JayeIXjkmPkzmO25dj8EJ2nZZMxgtdU=
Date: Wed, 15 Jul 2020 11:28:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
Message-ID: <20200715092856.GA2759174@kroah.com>
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
 <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
 <20200715091446.GA2722864@kroah.com>
 <CAAhDqq3g=G=T6DK+wRsZG=D3fii+ERnGJFGuU-560REvXXRbNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq3g=G=T6DK+wRsZG=D3fii+ERnGJFGuU-560REvXXRbNw@mail.gmail.com>
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

On Wed, Jul 15, 2020 at 05:21:01AM -0400, B K Karthik wrote:
> On Wed, Jul 15, 2020 at 5:14 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Jul 15, 2020 at 04:41:52AM -0400, B K Karthik wrote:
> > > On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > > > > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > > > > gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > > > > fixed a sparse warning by changing the type in
> > > > > > > assignment from void [noderef] __user * to unsigned int *
> > > > > > > (different address space)
> > > > > > >
> > > > > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > > > > ---
> > > > > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > > > > >       cmd->stop_src = v32.stop_src;
> > > > > > >       cmd->stop_arg = v32.stop_arg;
> > > > > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > > > > >       cmd->chanlist_len = v32.chanlist_len;
> > > > > > >       cmd->data = compat_ptr(v32.data);
> > > > > > >       cmd->data_len = v32.data_len;
> > > > > >
> > > > > > Always run your patches through checkpatch before sending them, so you
> > > > > > do not have a grumpy maintainer telling you that you have to run
> > > > > > checkpatch on your patch before sending them.
> > > > > >
> > > > >
> > > > > I will. Sorry for that.
> > > > >
> > > > > But the error that's being shown in this patch is something that comes up
> > > > > on its own.
> > > >
> > > > No it is not.
> > > >
> > > > > git format-patch leaves trailing whitespace in blank lines.
> > > >
> > > > It does?  Where is any trailing whitespace here?  That's not the issue.
> > >
> > > To give you an example,
> > > https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
> > > was a patch i submitted recently.
> > > This is what checkpatch has to say:
> > >
> > > $ perl scripts/checkpatch.pl -f
> > > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > > ERROR: trailing whitespace
> > > #21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
> > > + $
> > >
> > > ERROR: trailing whitespace
> > > #23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
> > > + $
> > >
> > > ERROR: trailing whitespace
> > > #30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
> > > + $
> > >
> > > ERROR: trailing whitespace
> > > #37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
> > > + $
> > >
> > > ERROR: trailing whitespace
> > > #44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
> > > + $
> > >
> > > ERROR: trailing whitespace
> > > #51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
> > > +-- $
> > >
> > > total: 6 errors, 0 warnings, 53 lines checked
> > >
> > > NOTE: For some of the reported defects, checkpatch may be able to
> > >       mechanically convert to the typical style using --fix or --fix-inplace.
> > >
> > > NOTE: Whitespace errors detected.
> > >       You may wish to use scripts/cleanpatch or scripts/cleanfile
> > >
> > > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > > has style problems, please review.
> > >
> > > NOTE: If any of the errors are false positives, please report
> > >       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> > >
> > > Does this happen only to patches I make? Am I making a silly mistake
> > > while making a patch?
> >
> > I don't get that error at all, here's all I get with that patch:
> this particular patch or
> >
> > $ ./scripts/checkpatch.pl x.patch
> > WARNING: Missing Signed-off-by: line by nominal patch author ''
> >
> > total: 0 errors, 1 warnings, 0 checks, 30 lines checked
> 
> sorry, you've probably done this a million times more than me, but can
> you try "perl scripts/checkpatch.pl -f x.patch" ?
> checkpatch seems to behave differently this way.

Of course it would, "-f" means treat the next argument as a file, not as
a patch.  This is a patch, not a full file.

So you are running this incorrectly and then ignoring the results?  :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
