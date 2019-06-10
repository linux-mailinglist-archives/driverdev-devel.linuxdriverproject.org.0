Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BC13AFEC
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 947B185207;
	Mon, 10 Jun 2019 07:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L18KrQJiaItH; Mon, 10 Jun 2019 07:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2012984B6A;
	Mon, 10 Jun 2019 07:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61B5F1BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5ED778516C
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKXzkrBXqu4m for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:49:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E49AE84B6A
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:49:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42361206E0;
 Mon, 10 Jun 2019 07:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560152982;
 bh=BD+0ieygl7Dt+ioJC2i2VJt6GPWW8QpVf0zDmvxzPw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P0OBEVWbF1ysyI8eF9GyUKMGqYz3lTWXFCYwkFPemNe38pMEWt0fuyPCIoDQDK5VM
 3gomGzKjAsH1zSOzskxufFtpiBD5Gydeu2nYWmgs20Sn8dxbs5g9Cvo/O/Dy1QhvKp
 7gO06z241ci1zQDBt1Onx8uoxtKXaYYQX3j+2u1s=
Date: Mon, 10 Jun 2019 09:49:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 4/7] staging: kpc2000: use __func__ in debug messages in
 core.c
Message-ID: <20190610074940.GC24746@kroah.com>
References: <20190603222916.20698-1-simon@nikanor.nu>
 <20190603222916.20698-5-simon@nikanor.nu>
 <20190606125550.GA11929@kroah.com>
 <20190610072009.w5scsjb2aqcxm2l2@dev.nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610072009.w5scsjb2aqcxm2l2@dev.nikanor.nu>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 09:20:09AM +0200, Simon Sandstr=F6m wrote:
> On 06/06, Greg KH wrote:
> > On Tue, Jun 04, 2019 at 12:29:13AM +0200, Simon Sandstr=F6m wrote:
> > >  =

> > > -	dev_dbg(&pdev->dev, "kp2000_pcie_probe(pdev =3D [%p], id =3D [%p])\=
n",
> > > -		pdev, id);
> > > +	dev_dbg(&pdev->dev, "%s(pdev =3D [%p], id =3D [%p])\n",
> > > +		__func__, pdev, id);
> > =

> > debugging lines that say "called this function!" can all be removed, as
> > we have ftrace in the kernel tree, we can use that instead.  I'll take
> > this, but feel free to clean them up as follow-on patches.
> > =

> > thanks,
> > =

> > greg k-h
> =

> Can they be removed even if they print function arguments or other
> variables?

Of course!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
