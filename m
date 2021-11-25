Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1EB45DABB
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 14:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 117D661BDC;
	Thu, 25 Nov 2021 13:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6y7VTP9hdKW; Thu, 25 Nov 2021 13:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4554B605E0;
	Thu, 25 Nov 2021 13:07:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 042B51BF300
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3CB7605E0
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZhBpLbeWwURp for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 13:07:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FBEC60073
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 13:07:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id ECC1360C49;
 Thu, 25 Nov 2021 13:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637845638;
 bh=IApYsxIkJhViWpxrZR4DzRPaKCUKSgSwRKOl/hlTXYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fN2iqFY+9FmO/UcxnVPLQqhvlxO+WkPz0H8EOn7tiG3A4jtzo0DJNiyWDq37wbsOp
 OWb0jYFdIpqFLeOLnO+SWPaVXRmLfXFK7NMFS6Jf5utgz67JP3lBgg1L5TGNDK5bTs
 p7CzEMSPQqhGuUJ4Rmcx9hutvvK0mMtaNb3e9EeA=
Date: Thu, 25 Nov 2021 14:06:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+Kc/M1qSaWfXPW@kroah.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
 <YZ9+YPc7w9Z4xotR@kroah.com> <YZ+Fn0S1j4JzotGO@google.com>
 <YZ+HiBRUqLhSPwY0@kroah.com> <YZ+JsjZicl8jsRHM@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ+JsjZicl8jsRHM@google.com>
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
Cc: devel@driverdev.osuosl.org, riandrews@android.com, stable@vger.kernel.org,
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 25, 2021 at 01:03:46PM +0000, Lee Jones wrote:
> On Thu, 25 Nov 2021, Greg KH wrote:
> 
> > On Thu, Nov 25, 2021 at 12:46:23PM +0000, Lee Jones wrote:
> > > On Thu, 25 Nov 2021, Greg KH wrote:
> > > 
> > > > On Thu, Nov 25, 2021 at 12:02:34PM +0000, Lee Jones wrote:
> > > > > Supply additional checks in order to prevent unexpected results.
> > > > > 
> > > > > Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
> > > > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > > > ---
> > > > >  drivers/staging/android/ion/ion.c | 3 +++
> > > > >  1 file changed, 3 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> > > > > index 806e9b30b9dc8..30f359faba575 100644
> > > > > --- a/drivers/staging/android/ion/ion.c
> > > > > +++ b/drivers/staging/android/ion/ion.c
> > > > > @@ -509,6 +509,9 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
> > > > >  	void *vaddr;
> > > > >  
> > > > >  	if (handle->kmap_cnt) {
> > > > > +		if (handle->kmap_cnt + 1 < handle->kmap_cnt)
> > > > 
> > > > What about using the nice helpers in overflow.h for this?
> > > 
> > > I haven't heard of these before.
> > > 
> > > Looks like they're not widely used.
> > > 
> > > I'll try them out and see how they go.
> > > 
> > > > > +			return ERR_PTR(-EOVERFLOW);
> > > > > +
> > > > >  		handle->kmap_cnt++;
> > > > >  		return buffer->vaddr;
> > > > >  	}
> > > > 
> > > > What stable kernel branch(es) is this for?
> > > 
> > > I assumed your magic scripts could determine this from the Fixes:
> > > tag.  I'll be more explicit in v2.
> > 
> > The fixes tag says how far back for it to go, but not where to start
> > that process from :)
> 
> What's your preferred method for identifying a start-point?
> 
> In the [PATCH] tag or appended on to Cc: stable ... # <here>?
> 
> I know both work, but what makes your life easier?

Easiest is below the --- line say:
---
 This is for kernel versions X.X and older.

nothing complex.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
