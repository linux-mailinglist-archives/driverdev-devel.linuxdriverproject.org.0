Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D171F305B0
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 02:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67A918506A;
	Fri, 31 May 2019 00:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8c2SC_-F9dL; Fri, 31 May 2019 00:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A619684520;
	Fri, 31 May 2019 00:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45B2B1BF34A
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 00:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4147420431
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 00:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ix7Mxfzo2hIu for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 00:11:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 10E0B2042C
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 00:11:57 +0000 (UTC)
Received: from localhost (ip67-88-213-2.z213-88-67.customer.algx.net
 [67.88.213.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7230262F7;
 Fri, 31 May 2019 00:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559261516;
 bh=BkaAkAYsINjPVicGtwZ4jKcRDAQKYbJITXtawe8Ms1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TVN6SLSzV1E834OCk47mM45jcIm9bLRoI24rvMu01vyyCnjkWaiHvED1NnjdAwXxC
 VuQr4GqaR8Ia9HoR7Kw2/j6UFGentX1Yr3PK1MkGLQcsu9pK/jUgxbHtrL40TABbaf
 ClQTV4i08DGeKAEbxLpn13N7I1R4k27yuY9ME9iQ=
Date: Thu, 30 May 2019 17:11:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH 1/4] staging: kpc2000: add spaces around operators in
 core.c
Message-ID: <20190531001156.GA25210@kroah.com>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-2-simon@nikanor.nu>
 <20190530210558.GA21455@kroah.com>
 <SN6PR02MB4016139989144F6C08CD4BDAEE180@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB4016139989144F6C08CD4BDAEE180@SN6PR02MB4016.namprd02.prod.outlook.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 30, 2019 at 10:57:09PM +0000, Matt Sickler wrote:
> >From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
> >Greg KH
> >On Fri, May 24, 2019 at 01:07:59PM +0200, Simon Sandstr=F6m wrote:
> >> --- a/drivers/staging/kpc2000/kpc2000/core.c
> >> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> >> @@ -276,18 +276,18 @@ static ssize_t kp2000_cdev_read(struct file *fil=
p,
> >
> >This whole function just needs to be deleted, it's a horrible hack.
> =

> >From the outside, I would definitely agree with you.  On the inside thou=
gh, we
> rely on this function to quickly identify what kind and version is runnin=
g on
> a given piece of hardware.  Since that same information is provided by an=
 ioctl,
> I could be convinced to remove this API and write a userspace application=
 that
> uses the ioctl to get the information and pretty prints it.

The ioctl needs to die as well, just use the sysfs entries instead, as
you already have them :)

> I'd be more inclined to agree with the deletion if it means the whole cha=
r dev
> interface can be removed from the kpc2000 driver.  That won't be straight=
forward
> as the ioctl is exposed through this interface.  We could remove the ioct=
l, but
> we'd need to ensure that all the same information is exposed via sysfs.

I think you are there already, what is missing?

> Our userspace side is all funneled through a single class, so changing
> it to use sysfs wouldn't be too difficult.  I'd support that change if
> someone wants to make it.

I will be glad to do that, it's always nice to delete code :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
