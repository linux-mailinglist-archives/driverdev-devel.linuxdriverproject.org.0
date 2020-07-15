Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3BC2207BC
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 10:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 352EF8AE1E;
	Wed, 15 Jul 2020 08:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVoi5sRAcVHO; Wed, 15 Jul 2020 08:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9455F8A34A;
	Wed, 15 Jul 2020 08:48:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2FE91BF407
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF23889D24
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uj2JGXB0K+t for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 08:48:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3AEB8934B
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:48:02 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q7so1723470ljm.1
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 01:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z3hVhufvufXQboj6QREMdbRyVrzG4VOiVEWo0NmaKI8=;
 b=zzE/SG3GryrZi4INSREvj2bwX++iDiohWUBB1r3DGukCDT0xsnKV+KXePEyUBQWbgk
 moo0vW2i9w14X/d7AOnBSnD2IeuTtzeH8Ovno4lQ2UO0JxnKYD2z8hk4jYHLnYvKUPOr
 gmBnaXBrPhucb+aEIg6jGmuJRtgQr6EamgUoutHVqpbaNd17ywxcu2g+t3/M/z0AYKtq
 lI1Z6EEDSnGhsZNnY0Tu4qURv/4V+jwLcRIBFtfwchcIJxFVUR/5bHnc89uaZPHNa3FD
 yi2uqWDtAt9S2N6W5ZBgGpd8Q78iaZxXPAURcaCq/KjeZ69R5M/7F1C5xy9gL0KQPODQ
 +lDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z3hVhufvufXQboj6QREMdbRyVrzG4VOiVEWo0NmaKI8=;
 b=r5cMkLypL9w9G6A1VF47DAkaF9uJid6GeEsjaEQCqDhI33/X2pidfSKK78oR7EEmi5
 ca11h3BOy3yqH0CqTHCS9yf7PqG2KJ2JiZnWZr/P5Shj98EbVKJNkJZNBE8gikxWm/Ka
 MeAkXbwQbX0I/1xMRwLiUXglAEMJ/7pdAcXHwSlZxp4KWfFZzm0/8+Cp/S5PEjv6RoYq
 V1tz87fCoX8rkNzxAizPpJ95v55wVHYdV5kKhuQIAPEvOjv5i9tcx2EWQwcSQ3ZJKHY2
 79u93IoNEG0KV1y7zDYlqDzVTOBSOQfUn4gCEnun4KRAosRhBTTcdNZDnAeGT0ALJsij
 uGfA==
X-Gm-Message-State: AOAM533e5Pq5NynzgLkWDg32YxbDZ83+luGFINGGbdGlfb5TU9SVDRzL
 jLMwnYS6H9c8nhKOyeeMnD/7TyeEFur1hc9D/PyxKA==
X-Google-Smtp-Source: ABdhPJxseDK1Uqjj1tMP0opgQSRwRNbFmW6KqOplfOiIfoUj33UA7GFRoAo7UG+GqxmMubfTzKeDkQOC3uks2+v63zQ=
X-Received: by 2002:a2e:9c59:: with SMTP id t25mr4172548ljj.402.1594802880625; 
 Wed, 15 Jul 2020 01:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
 <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
In-Reply-To: <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 04:47:48 -0400
Message-ID: <CAAhDqq2y7wn5zX1zg1LN19zYBsf_EiuOmHEL-ivNP5C4aH63Pw@mail.gmail.com>
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

On Wed, Jul 15, 2020 at 4:41 AM B K Karthik <bkkarthik@pesu.pes.edu> wrote:
>
> On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > > gregkh@linuxfoundation.org> wrote:
> > >
> > > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > > fixed a sparse warning by changing the type in
> > > > > assignment from void [noderef] __user * to unsigned int *
> > > > > (different address space)
> > > > >
> > > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > > ---
> > > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > > >       cmd->stop_src = v32.stop_src;
> > > > >       cmd->stop_arg = v32.stop_arg;
> > > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > > >       cmd->chanlist_len = v32.chanlist_len;
> > > > >       cmd->data = compat_ptr(v32.data);
> > > > >       cmd->data_len = v32.data_len;
> > > >
> > > > Always run your patches through checkpatch before sending them, so you
> > > > do not have a grumpy maintainer telling you that you have to run
> > > > checkpatch on your patch before sending them.
> > > >
> > >
> > > I will. Sorry for that.
> > >
> > > But the error that's being shown in this patch is something that comes up
> > > on its own.
> >
> > No it is not.
> >
> > > git format-patch leaves trailing whitespace in blank lines.
> >
> > It does?  Where is any trailing whitespace here?  That's not the issue.
>
> To give you an example,
> https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
> was a patch i submitted recently.
> This is what checkpatch has to say:
>
> $ perl scripts/checkpatch.pl -f
> ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> ERROR: trailing whitespace
> #21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
> + $
>
> ERROR: trailing whitespace
> #23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
> + $
>
> ERROR: trailing whitespace
> #30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
> + $
>
> ERROR: trailing whitespace
> #37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
> + $
>
> ERROR: trailing whitespace
> #44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
> + $
>
> ERROR: trailing whitespace
> #51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
> +-- $
>
> total: 6 errors, 0 warnings, 53 lines checked
>
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inplace.
>
> NOTE: Whitespace errors detected.
>       You may wish to use scripts/cleanpatch or scripts/cleanfile
>
> ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
> has style problems, please review.
>
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
>
> Does this happen only to patches I make? Am I making a silly mistake
> while making a patch?
> I use 'git format-patch -1' to generate the patch file.
> If I am going wrong somewhere, please let me know.

Also, The patch I sent (this thread):
$ perl scripts/checkpatch.pl -f
./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch
ERROR: trailing whitespace
#29: FILE: ./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch:29:
+-- $

total: 1 errors, 0 warnings, 31 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

NOTE: Whitespace errors detected.
      You may wish to use scripts/cleanpatch or scripts/cleanfile

./0001-staging-comedi-comedi_fops.c-changed-void-__user-to-.patch has
style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

Am I using 'git format-patch' or 'checkpatch.pl' the wrong way?

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
