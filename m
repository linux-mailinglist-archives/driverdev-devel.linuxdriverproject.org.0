Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A5122079D
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 10:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99A038AE1A;
	Wed, 15 Jul 2020 08:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBBTvifZDW85; Wed, 15 Jul 2020 08:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E7E58ADFE;
	Wed, 15 Jul 2020 08:42:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9196A1BF407
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 852CE20510
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yl1CcvqXuC9Q for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 08:42:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 724DD203F3
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:42:06 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r19so1596136ljn.12
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 01:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dh5uuKPcBQ93XIoeGbLQVCWZw7SmH2LeLngrc8vlsaU=;
 b=dC/womSB6cUdKgWDALcDXJkLV9BDxtnTs6Du7QkX55kbmyMDsyfJzp5k08+776L3EP
 0hgwoup0xhvtZSjtIhd5b8EN/2nsdCOCrCGpK1CyKPZ9zWGZUflzTmmuzVyXyqAe82uf
 VwUhAhnWIl5EJDOgulV/wUisMuBrTALhfoMbFLsolnmz4BLD5dalR3eZTkmtZU9JiLZ3
 bo/nmcjPVx34CxJENRA5ZfqEw7G2jIEWonD7flW4aoK83MMGi9njwCrD/5RxS9l1s/jn
 8yFhRbOHUCXzzaH0s2vwNJRIB9sQ9i24yiMgFIYnem1++kp9QVtphW77oro/UFO/CmLB
 50mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dh5uuKPcBQ93XIoeGbLQVCWZw7SmH2LeLngrc8vlsaU=;
 b=Fgt6+Hev3Z9XSQ2AYwREU7BJH1/ILanxmQcmF7OXkAvaTleErobIn1Vhf40T+4SnU9
 Y2rdYCQfgbpsp163Kt1/CKCymBMtpJ4RirKpiNTlhp/FyJzw8OVfp+Zhj+7ea5Lj4KzR
 9Gnd30V4KXeP6clsdShKbUEY8YfPYrh+lwTx5PMU/LP10yzM8jgcMuHdZtvM+EwC4DCU
 JUh06Zqf9CZBB0SHDiwNJmct20YMELAZ6T9OZXfqgzKZOc/GIn6cbRCvHAit5GgMYtN7
 DKBdZCgUgn+nuaCqmqWkxRDDPakr1caf2vLxwyrrwdaj7+/Cvx4f64gdJM45Zu53tCCd
 stDA==
X-Gm-Message-State: AOAM531xduhtVYNAErNm+d5wt8V74D98Fy3ZUkw47aR7tHkhqNb8h3PG
 I/x1b4JXOloc54M7Bfau5Opxk7WdFVf+ed73UEV8ng==
X-Google-Smtp-Source: ABdhPJx5py6+AL8ZGheslkm2utmIviqSjjRR/GgkPHvC9Kn6qWBAu1xb6CamzJx5lBHZ+q2niheh19pjfq37cwwCwkA=
X-Received: by 2002:a2e:6f19:: with SMTP id k25mr4503553ljc.443.1594802524312; 
 Wed, 15 Jul 2020 01:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200715044813.fww3regsgsbgyp7b@pesu-pes-edu>
 <20200715070842.GA2303720@kroah.com>
 <CAAhDqq3u_0wCRGDaWRGgtC6bkx6t+AubAXfnX_f7V0t10BRuuA@mail.gmail.com>
 <20200715083144.GA2716443@kroah.com>
In-Reply-To: <20200715083144.GA2716443@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Wed, 15 Jul 2020 04:41:52 -0400
Message-ID: <CAAhDqq1hwtgqyOnfx__OFgTkm9QDs0or-Zg76cMojShCYRAN2w@mail.gmail.com>
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

On Wed, Jul 15, 2020 at 4:31 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jul 15, 2020 at 01:56:45PM +0530, B K Karthik wrote:
> > On Wed, Jul 15, 2020, 12:38 PM Greg Kroah-Hartman <
> > gregkh@linuxfoundation.org> wrote:
> >
> > > On Wed, Jul 15, 2020 at 12:48:13AM -0400, B K Karthik wrote:
> > > > fixed a sparse warning by changing the type in
> > > > assignment from void [noderef] __user * to unsigned int *
> > > > (different address space)
> > > >
> > > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > > ---
> > > >  drivers/staging/comedi/comedi_fops.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > b/drivers/staging/comedi/comedi_fops.c
> > > > index 3f70e5dfac39..4cc012e231b7 100644
> > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > @@ -2956,7 +2956,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > >       cmd->scan_end_arg = v32.scan_end_arg;
> > > >       cmd->stop_src = v32.stop_src;
> > > >       cmd->stop_arg = v32.stop_arg;
> > > > -     cmd->chanlist = compat_ptr(v32.chanlist);
> > > > +     cmd->chanlist = (unsigned int *) compat_ptr(v32.chanlist);
> > > >       cmd->chanlist_len = v32.chanlist_len;
> > > >       cmd->data = compat_ptr(v32.data);
> > > >       cmd->data_len = v32.data_len;
> > >
> > > Always run your patches through checkpatch before sending them, so you
> > > do not have a grumpy maintainer telling you that you have to run
> > > checkpatch on your patch before sending them.
> > >
> >
> > I will. Sorry for that.
> >
> > But the error that's being shown in this patch is something that comes up
> > on its own.
>
> No it is not.
>
> > git format-patch leaves trailing whitespace in blank lines.
>
> It does?  Where is any trailing whitespace here?  That's not the issue.

To give you an example,
https://lore.kernel.org/lkml/20200714132350.naekk4zqivpuaedi@pesu-pes-edu/
was a patch i submitted recently.
This is what checkpatch has to say:

$ perl scripts/checkpatch.pl -f
../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
ERROR: trailing whitespace
#21: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:21:
+ $

ERROR: trailing whitespace
#23: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:23:
+ $

ERROR: trailing whitespace
#30: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:30:
+ $

ERROR: trailing whitespace
#37: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:37:
+ $

ERROR: trailing whitespace
#44: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:44:
+ $

ERROR: trailing whitespace
#51: FILE: ../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch:51:
+-- $

total: 6 errors, 0 warnings, 53 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

NOTE: Whitespace errors detected.
      You may wish to use scripts/cleanpatch or scripts/cleanfile

../cbridge/1407d/1/0001-drivers-staging-media-atomisp-pci-css_2401_system-ho.patch
has style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

Does this happen only to patches I make? Am I making a silly mistake
while making a patch?
I use 'git format-patch -1' to generate the patch file.
If I am going wrong somewhere, please let me know.

>
> > It has been reported to the maintainers.
>
> It was?  Where?

I am extremely sorry, I should have verified if it was indeed reported
before telling it out.
It has not been reported (yet).
I apologise for my mistake.

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
