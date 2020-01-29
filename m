Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7749614C8FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 11:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6924421517;
	Wed, 29 Jan 2020 10:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sm6LSDYzQ4Ai; Wed, 29 Jan 2020 10:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9B3B2150A;
	Wed, 29 Jan 2020 10:51:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C0DD1BF591
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58AB385F52
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 10:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U5WOfeUMNuyB for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 10:51:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A4F485F44
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 10:50:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85E1720720;
 Wed, 29 Jan 2020 10:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580295015;
 bh=jHwJpm2yRmwh7TjlKXTA2UFU1Yy6KXRu81Yj3516AGA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fjCiN/BJOb2/B7vg2e94h8DAzpYS3l38HMIdqnZ0MvLsLuQHXGF6CJ5LiGWk7Uy4n
 skUSY0DwR78Yh17dtmt5PHQnlqrlBCKpZ/rjIqjPXikOg1KWUUffnnvkONMO0jSVct
 r8eKt+0D1j/6ya7l0kBtiyMAQQbpZNhAP0Odd9dU=
Date: Wed, 29 Jan 2020 11:50:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Pragat Pandya <pragat.pandya@gmail.com>
Subject: Re: [PATCH 09/22] staging: exfat: Rename variable "Size" to "size"
Message-ID: <20200129105012.GA3884393@kroah.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-10-pragat.pandya@gmail.com>
 <20200127115741.GA1847@kadam>
 <287916429826dd2f14d82f9b7b6b15a9cace2734.camel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <287916429826dd2f14d82f9b7b6b15a9cace2734.camel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 29, 2020 at 04:10:39PM +0530, Pragat Pandya wrote:
> On Mon, 2020-01-27 at 14:57 +0300, Dan Carpenter wrote:
> > On Mon, Jan 27, 2020 at 03:43:30PM +0530, Pragat Pandya wrote:
> > > Change all the occurences of "Size" to "size" in exfat.
> > > 
> > > Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> > > ---
> > >  drivers/staging/exfat/exfat.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/exfat/exfat.h
> > > b/drivers/staging/exfat/exfat.h
> > > index 52f314d50b91..a228350acdb4 100644
> > > --- a/drivers/staging/exfat/exfat.h
> > > +++ b/drivers/staging/exfat/exfat.h
> > > @@ -233,7 +233,7 @@ struct date_time_t {
> > >  
> > >  struct part_info_t {
> > >  	u32      offset;    /* start sector number of the partition */
> > > -	u32      Size;      /* in sectors */
> > > +	u32      size;      /* in sectors */
> > >  };
> > 
> > We just renamed all the struct members of this without changing any
> > users.  Which suggests that this is unused and can be deleted.
> > 
> > regards,
> > dan carpenter
> > 
> Can I just drop this commit from this patchset and do a separate patch
> to remove the unused structure?

Drop this one, and the other ones that touch this structure, and do a
separate patch.  This series needs fixing up anyway, I can't take it
as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
