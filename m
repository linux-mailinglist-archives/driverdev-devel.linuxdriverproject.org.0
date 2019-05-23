Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B1827CD1
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF7648691E;
	Thu, 23 May 2019 12:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSezY6_CvpHP; Thu, 23 May 2019 12:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69944868D9;
	Thu, 23 May 2019 12:26:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE65D1BF3D7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB6D28828D
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FhTXB3hdL2r for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:26:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 781D08825E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:26:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD2D020851;
 Thu, 23 May 2019 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558614410;
 bh=HK+MM2tEj5krZ4ZVCzJ1PseSGZxhZ7gCRD7VksuUYZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rs8PlBDuvJVnF7DqEA6hA8cx19nFcYB9jxFuuFeo9iOC7D19mp2mgSSj9Og88jlLa
 R3be9VphvUgvbw3fevnZixLZTJEwitM0NmdDkhpkuqqghGVtAbZUtFj/rKE4DrdmkH
 yZkFAIQUpt2G/xkMBtplp/hAbxmn6Ach5ROhnR58=
Date: Thu, 23 May 2019 14:26:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 2/8] staging: kpc2000: use __func__ in debug messages
Message-ID: <20190523122647.GB26641@kroah.com>
References: <20190523113613.28342-1-simon@nikanor.nu>
 <20190523113613.28342-3-simon@nikanor.nu>
 <20190523115553.GA6953@kroah.com>
 <20190523120937.zq6gif6amslfruna@dev.nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523120937.zq6gif6amslfruna@dev.nikanor.nu>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 02:09:37PM +0200, Simon Sandstr=F6m wrote:
> On Thu, May 23, 2019 at 01:55:53PM +0200, Greg KH wrote:
> > On Thu, May 23, 2019 at 01:36:07PM +0200, Simon Sandstr=F6m wrote:
> > > Fixes checkpatch.pl warning "Prefer using '"%s...", __func__' to using
> > > '<function name>', this function's name, in a string".
> > > =

> > > Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> > > ---
> > >  drivers/staging/kpc2000/kpc2000/cell_probe.c | 22 +++++++++++++-----=
--
> > >  1 file changed, 14 insertions(+), 8 deletions(-)
> > > =

> > > diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/s=
taging/kpc2000/kpc2000/cell_probe.c
> > > index 95bfbe4aae4d..7b850f3e808b 100644
> > > --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > @@ -299,7 +299,8 @@ static int probe_core_uio(unsigned int core_num, =
struct kp2000_device *pcard,
> > >  =

> > >  	kudev =3D kzalloc(sizeof(struct kpc_uio_device), GFP_KERNEL);
> > >  	if (!kudev) {
> > > -		dev_err(&pcard->pdev->dev, "probe_core_uio: failed to kzalloc kpc_=
uio_device\n");
> > > +		dev_err(&pcard->pdev->dev, "%s: failed to kzalloc kpc_uio_device\n=
",
> > > +			__func__);
> > =

> > kmalloc and friend error messages should just be deleted.  Didn't
> > checkpatch say something about that?
> > =

> > thanks,
> > =

> > greg k-h
> =

> Yes sorry, it did. Should I delete this chunk from this patch and add
> another patch to this series that just deletes the message, in v2?

Yes please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
