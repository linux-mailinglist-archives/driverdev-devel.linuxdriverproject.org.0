Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897E45E9D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 10:03:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47AFF401B6;
	Fri, 26 Nov 2021 09:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTNIYy1Iz2a7; Fri, 26 Nov 2021 09:03:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8639E4040F;
	Fri, 26 Nov 2021 09:03:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 230521BF395
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 09:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11DFC606D9
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 09:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWq8Kx3kpacV for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 09:03:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73596606D5
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 09:03:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 68BEB60E8E;
 Fri, 26 Nov 2021 09:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637917392;
 bh=KIdkGMCUnXGQU6ywk3jGBbBD2VSqSHbmhQx0qPk4tRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mXjN6MS7Qs3aGXmnW6i+PThqm01KYqufnGVqrZ2tJ4aD7rFlewyejMm9C3huRBCjC
 u6vh+wdSvstvrz+Yb0jvjreWV8mipYr+Ed1U5q/r6LE17jO4vLUqDwK/CpOMVDh54I
 nCqk1OztuIYURgzcuWW3csybJvgDBvgNGnu5uCBE=
Date: Fri, 26 Nov 2021 10:03:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YaCizHYteAeLT4yk@kroah.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam> <YZ+muS7vC5iNs/kq@google.com>
 <20211125151822.GJ18178@kadam> <20211126071641.GO6514@kadam>
 <YaChOzfm2/3gY4o3@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaChOzfm2/3gY4o3@google.com>
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
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 26, 2021 at 08:56:27AM +0000, Lee Jones wrote:
> On Fri, 26 Nov 2021, Dan Carpenter wrote:
> 
> > On Thu, Nov 25, 2021 at 06:18:22PM +0300, Dan Carpenter wrote:
> > > I had thought that ->kmap_cnt was a regular int and not an unsigned
> > > int, but I would have to pull a stable tree to see where I misread the
> > > code.
> > 
> > I was looking at (struct ion_buffer)->kmap_cnt but this is
> > (struct ion_handle)->kmap_cnt.  I'm not sure how those are related but
> > it makes me nervous that one can go higher than the other.  Also both
> > probably need overflow protection.
> > 
> > So I guess I would just do something like:
> > 
> > diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> > index 806e9b30b9dc8..e8846279b33b5 100644
> > --- a/drivers/staging/android/ion/ion.c
> > +++ b/drivers/staging/android/ion/ion.c
> > @@ -489,6 +489,8 @@ static void *ion_buffer_kmap_get(struct ion_buffer *buffer)
> >  	void *vaddr;
> >  
> >  	if (buffer->kmap_cnt) {
> > +		if (buffer->kmap_cnt == INT_MAX)
> > +			return ERR_PTR(-EOVERFLOW);
> >  		buffer->kmap_cnt++;
> >  		return buffer->vaddr;
> >  	}
> > @@ -509,6 +511,8 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
> >  	void *vaddr;
> >  
> >  	if (handle->kmap_cnt) {
> > +		if (handle->kmap_cnt == INT_MAX)
> > +			return ERR_PTR(-EOVERFLOW);
> >  		handle->kmap_cnt++;
> >  		return buffer->vaddr;
> >  	}
> 
> Which is all well and good until somebody changes the type.

That's hard to do on code that is removed from the kernel tree :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
