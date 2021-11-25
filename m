Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 752DB45DA79
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 13:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00763408F7;
	Thu, 25 Nov 2021 12:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9u1IjEPlZRTD; Thu, 25 Nov 2021 12:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48DF3408FA;
	Thu, 25 Nov 2021 12:54:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 228EC1BF30B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EE064040B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgW5AfUzZDT7 for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 12:54:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ED8940239
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 12:54:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A363B60F55;
 Thu, 25 Nov 2021 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637844880;
 bh=RGo9HsGNhtscX90fM1Rib0P/KFwGjNZicpgSXLC7fNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RKDAqt39jO4a6JIMpXFbF8efQvVlmQuPrswj5J04MIOZWLjeVaK/32oDXkNav+MC7
 KrvB1B7rnvwPiep9iU57YvrHf06NA8RrKsl8HFhrc1kp7DqfN+T1LpDu2p5xcfGatT
 hHa+sWl4JVBpF/4TuF4RVbxkeZFz2TO+5Rb50qbM=
Date: Thu, 25 Nov 2021 13:54:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+HiBRUqLhSPwY0@kroah.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
 <YZ9+YPc7w9Z4xotR@kroah.com> <YZ+Fn0S1j4JzotGO@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ+Fn0S1j4JzotGO@google.com>
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 25, 2021 at 12:46:23PM +0000, Lee Jones wrote:
> On Thu, 25 Nov 2021, Greg KH wrote:
> 
> > On Thu, Nov 25, 2021 at 12:02:34PM +0000, Lee Jones wrote:
> > > Supply additional checks in order to prevent unexpected results.
> > > 
> > > Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > ---
> > >  drivers/staging/android/ion/ion.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> > > index 806e9b30b9dc8..30f359faba575 100644
> > > --- a/drivers/staging/android/ion/ion.c
> > > +++ b/drivers/staging/android/ion/ion.c
> > > @@ -509,6 +509,9 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
> > >  	void *vaddr;
> > >  
> > >  	if (handle->kmap_cnt) {
> > > +		if (handle->kmap_cnt + 1 < handle->kmap_cnt)
> > 
> > What about using the nice helpers in overflow.h for this?
> 
> I haven't heard of these before.
> 
> Looks like they're not widely used.
> 
> I'll try them out and see how they go.
> 
> > > +			return ERR_PTR(-EOVERFLOW);
> > > +
> > >  		handle->kmap_cnt++;
> > >  		return buffer->vaddr;
> > >  	}
> > 
> > What stable kernel branch(es) is this for?
> 
> I assumed your magic scripts could determine this from the Fixes:
> tag.  I'll be more explicit in v2.

The fixes tag says how far back for it to go, but not where to start
that process from :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
