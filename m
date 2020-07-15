Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C456B2208E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 11:35:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11E2D8AB75;
	Wed, 15 Jul 2020 09:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HFJcIRg0N4nH; Wed, 15 Jul 2020 09:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00C918AB57;
	Wed, 15 Jul 2020 09:35:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8D51BF39C
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B9C08AB57
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 09:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oxNbc+kUCqMJ for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 09:35:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCAD98AB56
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 09:35:43 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id j11so1815262ljo.7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 02:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hBACDjerLps7qaIhlduOfiyH7XhBBRJwygRHNV8vgmQ=;
 b=mJbrN5EgqV9Ewuft1mO+r83nzB5ZplvKZULHpiLg2KFNhjDYlXxMqU29wgyWMfc/uD
 lPcSfTu/KOsGDDNInW8zJK4Y+Caqz2ZHl8HcldVDMGELsqFriDjC7TMmCJEvYYzPE2Et
 dtoMdBupynReXxImqxxjhO9DtnXA19H/4/+3rRrInL4wHrOPrpprtS7OdE3xmiWT7wo1
 v4wCLOx0PbdN6TICqYVspp5ssVZdM05D9de3OXyzZiqXCDM4ciOgA2SislUigWo5znTd
 gKq9sa16mUvBD8xNCDHeqnh0oyWSMKmOlSsDnG2G3/dA1y6LeovZNdGuLC5yfdRbLT8S
 7JMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hBACDjerLps7qaIhlduOfiyH7XhBBRJwygRHNV8vgmQ=;
 b=OpZ5Yhh52bnorwe/A9Rt95N2/xBab6vIxwNo8pj0ms0MiIXlXA0JNAjm56l2BFR9qB
 ZVzrgwsH1w/4l7ws2Ay4Bn8lxCBogRgdNoQyp3mI9QGQEBXBdk5f8zar3Cg4k63YwiMU
 xRD6XbbzPHD5qxGRq/ex1M4UE6sCLkdtBw5BjQTj54gUXI7NFppAkXUnGumcTokAjB77
 dmwQrig+uLAWe2JHIEVlSIEgtu+64K/vBVx1rdF1JTpdbaMxc0xQ/IBSJy5OYhn7X3cm
 ZtOsYKVPrjdbu8fuMxMFOkFRjhIBVxyg6sZi3GrcnlQVLN2QGDhK1hENDHD1NpFkm6pw
 S8zQ==
X-Gm-Message-State: AOAM533toF3Q6cTvrq7DmCBL7QMD7njG1w/whqEPN5K18SR/G8nzSI/Q
 eVaVLXxdFWjLNR+Ibe4dUjO6e5wVN2zrJxMs/rLFyEG+y+Y=
X-Google-Smtp-Source: ABdhPJzHAjBMqAWtxseqSJ6F7H2g+k87FoUAKsvxah8aJzmLGH4ySQoclx9ywRNpQDi4cOGlitiiOdMq5RBmkDTAjj4=
X-Received: by 2002:a2e:815a:: with SMTP id t26mr4594844ljg.182.1594805741694; 
 Wed, 15 Jul 2020 02:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
 <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
 <20200715091446.GA2722864@kroah.com>
 <CAAhDqq3g=G=T6DK+wRsZG=D3fii+ERnGJFGuU-560REvXXRbNw@mail.gmail.com>
 <20200715092856.GA2759174@kroah.com>
In-Reply-To: <20200715092856.GA2759174@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 05:35:29 -0400
Message-ID: <CAAhDqq1zYvfS2-Bhg+0mt0RYJF=RV7qaJ0hG=niUC8=matX26Q@mail.gmail.com>
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

On Wed, Jul 15, 2020 at 5:29 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 15, 2020 at 05:21:01AM -0400, B K Karthik wrote:
> > On Wed, Jul 15, 2020 at 5:14 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Jul 15, 2020 at 04:41:52AM -0400, B K Karthik wrote:
> > > > On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > > > > > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > > > > > gregkh@linuxfoundation.org> wrote:
> > > > > >
> > > > > > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > > > > > fixed a sparse warning by changing the type in
> > > > > > > > assignment from void [noderef] __user * to unsigned int *
> > > > > > > > (different address space)
> > > > > > > >
> > > > > > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > > > > > ---
> > > > > > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > > > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > > > > > >       cmd->stop_src = v32.stop_src;
> > > > > > > >       cmd->stop_arg = v32.stop_arg;
> > > > > > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > > > > > >       cmd->chanlist_len = v32.chanlist_len;
> > > > > > > >       cmd->data = compat_ptr(v32.data);
> > > > > > > >       cmd->data_len = v32.data_len;
> > > > > > >
> > > > > > > Always run your patches through checkpatch before sending them, so you
> > > > > > > do not have a grumpy maintainer telling you that you have to run
> > > > > > > checkpatch on your patch before sending them.
> > > > > > >
> > > > > >
> > > > > > I will. Sorry for that.
> > > > > >
> > > > > > But the error that's being shown in this patch is something that comes up
> > > > > > on its own.
> > > > >
> > > > > No it is not.
> > > > >
> > > > > > git format-patch leaves trailing whitespace in blank lines.
> > > > >
> > > > > It does?  Where is any trailing whitespace here?  That's not the issue.
> > > >
> > > > To give you an example,
> > > > https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
> > > > was a patch i submitted recently.
> > > > This is what checkpatch has to say:
> > > >
> > > > $ perl scripts/checkpatch.pl -f
> > > > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > > > ERROR: trailing whitespace
> > > > #21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
> > > > + $
> > > >
> > > > ERROR: trailing whitespace
> > > > #23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
> > > > + $
> > > >
> > > > ERROR: trailing whitespace
> > > > #30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
> > > > + $
> > > >
> > > > ERROR: trailing whitespace
> > > > #37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
> > > > + $
> > > >
> > > > ERROR: trailing whitespace
> > > > #44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
> > > > + $
> > > >
> > > > ERROR: trailing whitespace
> > > > #51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
> > > > +-- $
> > > >
> > > > total: 6 errors, 0 warnings, 53 lines checked
> > > >
> > > > NOTE: For some of the reported defects, checkpatch may be able to
> > > >       mechanically convert to the typical style using --fix or --fix-inplace.
> > > >
> > > > NOTE: Whitespace errors detected.
> > > >       You may wish to use scripts/cleanpatch or scripts/cleanfile
> > > >
> > > > ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> > > > has style problems, please review.
> > > >
> > > > NOTE: If any of the errors are false positives, please report
> > > >       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> > > >
> > > > Does this happen only to patches I make? Am I making a silly mistake
> > > > while making a patch?
> > >
> > > I don't get that error at all, here's all I get with that patch:
> > this particular patch or
> > >
> > > $ ./scripts/checkpatch.pl x.patch
> > > WARNING: Missing Signed-off-by: line by nominal patch author ''
> > >
> > > total: 0 errors, 1 warnings, 0 checks, 30 lines checked
> >
> > sorry, you've probably done this a million times more than me, but can
> > you try "perl scripts/checkpatch.pl -f x.patch" ?
> > checkpatch seems to behave differently this way.
>
> Of course it would, "-f" means treat the next argument as a file, not as
> a patch.  This is a patch, not a full file.
sorry. I will make sure there are no errors the next time.
>
> So you are running this incorrectly and then ignoring the results?  :(

sorry.
thank you for the clarification.

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
