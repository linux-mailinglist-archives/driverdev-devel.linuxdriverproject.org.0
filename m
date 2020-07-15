Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD4220889
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 11:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C357E21FA8;
	Wed, 15 Jul 2020 09:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3FSroTNQ0YJW; Wed, 15 Jul 2020 09:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9158121567;
	Wed, 15 Jul 2020 09:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A59B41BF39C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1C8E88B61
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QRsc4UpoVCq for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 09:21:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E97E887C7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 09:21:15 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id o4so676126lfi.7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 02:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fAa66qSxxTkHpaU1a+wWnKzvqfUlXY5s1qoqkzEmAqY=;
 b=pTGGcTrPWXeGbi3cjOJvnFPo7gOdGucC550stbndC7KCTBfXpz11Q5jdl7CFCD0Jtx
 rKF5b+dEKXrOBcsfR8ebIKoJNs6bhvgww71EdB8f286gLPxTpI6PhsWW6RszDu2pzgTz
 3nlJntE7Un8EDRPMYE0AVvFSKm7rF5gUR0ozmH95Zq3l3vbM/Lp+L58zebp4mnZBJK2F
 DUEnCvZGEV8bAVIn+jSyHnuCY0GsREbsGU/jRv+foxoiT6+z2lyJsncasP/JY1J5OEny
 QxmYz2Pt5eUukqYEaoVhcmVb6hPctzZNZ7W77mJZHG7iu2m9T9FnYULwbdcBUDtChAMQ
 1fpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fAa66qSxxTkHpaU1a+wWnKzvqfUlXY5s1qoqkzEmAqY=;
 b=Lfx32yZbEhO2QJMHJNMHulZOQL/iyCoGE4y4lNSvKA6BuE4b+pv4PlyjWAkgIny0ss
 bpFga0zJDij/TtV/y+aXHAFeLSnxVsc3r3taZtNq7ZUGlCj1DJCl1ZWvOoswCgEaeFfN
 ottQOwuPaSC8zU1ak39enDx5kkP5RM0qleR/iStAxfhHwDFBXQpBTD1+JjRfcCuGZeKi
 XrDjNc8T1/iwqnyIN1ZqeRmwRxtttKoni0TXGADd4YTFwq4uFkwtC4qLRzp8PShlwUrL
 rJmpZiF32itToO9fFV0tgsPXMXmzmqo3+DJxNwaNo5L0d/Toj0CTXFBIqZXYRLozMP+g
 MRiQ==
X-Gm-Message-State: AOAM533N/UuPNbUQSHBtMG18xbkulCNoKktP5vZaTraUJXGvL14LTYHo
 4YAvfzvd7Mbq7J5Spqs3AyfGG8E1fiWevHAu+FxNMQ==
X-Google-Smtp-Source: ABdhPJxh9TZPVrwjX0LQQDIThVSYRuVMTSRiLs0z4Wszk+p7wCi2FnJZmS4SO+xkn/CQMmLQA2369KWPxbbiGwLmnjg=
X-Received: by 2002:a19:50b:: with SMTP id 11mr4521472lff.154.1594804873108;
 Wed, 15 Jul 2020 02:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
 <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
 <20200715091446.GA2722864@kroah.com>
In-Reply-To: <20200715091446.GA2722864@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 05:21:01 -0400
Message-ID: <CAAhDqq3g=G=T6DK+wRsZG=D3fii+ERnGJFGuU-560REvXXRbNw@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops.c: changed type in
 assignment to unsigned int *
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Wed, Jul 15, 2020 at 5:14 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 15, 2020 at 04:41:52AM -0400, B K Karthik wrote:
> > On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > > > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > > > gregkh@linuxfoundation.org> wrote:
> > > >
> > > > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > > > fixed a sparse warning by changing the type in
> > > > > > assignment from void [noderef] __user * to unsigned int *
> > > > > > (different address space)
> > > > > >
> > > > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > > > ---
> > > > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > > > >       cmd->stop_src = v32.stop_src;
> > > > > >       cmd->stop_arg = v32.stop_arg;
> > > > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > > > >       cmd->chanlist_len = v32.chanlist_len;
> > > > > >       cmd->data = compat_ptr(v32.data);
> > > > > >       cmd->data_len = v32.data_len;
> > > > >
> > > > > Always run your patches through checkpatch before sending them, so you
> > > > > do not have a grumpy maintainer telling you that you have to run
> > > > > checkpatch on your patch before sending them.
> > > > >
> > > >
> > > > I will. Sorry for that.
> > > >
> > > > But the error that's being shown in this patch is something that comes up
> > > > on its own.
> > >
> > > No it is not.
> > >
> > > > git format-patch leaves trailing whitespace in blank lines.
> > >
> > > It does?  Where is any trailing whitespace here?  That's not the issue.
> >
> > To give you an example,
> > https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
> > was a patch i submitted recently.
> > This is what checkpatch has to say:
> >
> > $ perl scripts/checkpatch.pl -f
> > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > ERROR: trailing whitespace
> > #21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
> > + $
> >
> > ERROR: trailing whitespace
> > #23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
> > + $
> >
> > ERROR: trailing whitespace
> > #30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
> > + $
> >
> > ERROR: trailing whitespace
> > #37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
> > + $
> >
> > ERROR: trailing whitespace
> > #44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
> > + $
> >
> > ERROR: trailing whitespace
> > #51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
> > +-- $
> >
> > total: 6 errors, 0 warnings, 53 lines checked
> >
> > NOTE: For some of the reported defects, checkpatch may be able to
> >       mechanically convert to the typical style using --fix or --fix-inplace.
> >
> > NOTE: Whitespace errors detected.
> >       You may wish to use scripts/cleanpatch or scripts/cleanfile
> >
> > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > has style problems, please review.
> >
> > NOTE: If any of the errors are false positives, please report
> >       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> >
> > Does this happen only to patches I make? Am I making a silly mistake
> > while making a patch?
>
> I don't get that error at all, here's all I get with that patch:
this particular patch or
>
> $ ./scripts/checkpatch.pl x.patch
> WARNING: Missing Signed-off-by: line by nominal patch author ''
>
> total: 0 errors, 1 warnings, 0 checks, 30 lines checked

sorry, you've probably done this a million times more than me, but can
you try "perl scripts/checkpatch.pl -f x.patch" ?
checkpatch seems to behave differently this way.

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
