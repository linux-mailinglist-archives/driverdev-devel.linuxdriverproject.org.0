Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D791F36D1F1
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 08:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E83A5842D2;
	Wed, 28 Apr 2021 06:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SIQ4BcJJVKN; Wed, 28 Apr 2021 06:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E6C7842D1;
	Wed, 28 Apr 2021 06:01:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B33F81C11AD
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 06:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF8740E6C
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 06:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yf4uxCgU33kN for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 06:01:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3086406BA
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 06:01:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93EB761418;
 Wed, 28 Apr 2021 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1619589686;
 bh=DMvmZdizmahSdLy38H1KdUaziGayCrN6I19m9A9ZYWs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h1Qj0gdCXNxTtk/HV/D/SXrBefjYaeC7pF9jVQ9iWIol9/BoLQP3cS29/mwIlT8s2
 3IqWOD4X8waD+h3iJ7xJfdKEe2xzt2fCCxOdhNMCjNgqCpATrShKx0PW2/uXghnG+r
 ojF5TFt+zEZFImtiVhyshYWglV3bSokT8q7wNkNw=
Date: Wed, 28 Apr 2021 08:01:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jitendra <jkhasdev@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: fix array of flexible structures
Message-ID: <YIj6MUO5+EDBzOwl@kroah.com>
References: <20210427174945.1323-1-jkhasdev@gmail.com>
 <YIhTjGpmLSYKuCi3@kroah.com> <20210427185844.GA1030@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427185844.GA1030@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 28, 2021 at 12:28:44AM +0530, Jitendra wrote:
> On Tue, Apr 27, 2021 at 08:10:20PM +0200, Greg KH wrote:
> > On Tue, Apr 27, 2021 at 11:19:45PM +0530, Jitendra Khasdev wrote:
> > > This patch fixes sparse warning "array of flexible structures"
> > > for rtllib.h.
> > > 
> > > eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
> > > flexible structures
> > > 
> > > Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> > > index 4cabaf2..c7cb318 100644
> > > --- a/drivers/staging/rtl8192e/rtllib.h
> > > +++ b/drivers/staging/rtl8192e/rtllib.h
> > > @@ -802,7 +802,7 @@ struct rtllib_authentication {
> > >  	__le16 transaction;
> > >  	__le16 status;
> > >  	/*challenge*/
> > > -	struct rtllib_info_element info_element[];
> > > +	struct rtllib_info_element *info_element;
> > 
> > You just changed the definition of this structure, and the other
> > structures here.  Are you sure this is working properly?
> > 
> 
> I have compiled the driver and install it on my vm, but I don't this specific
> hardware, so couldn't test it.
> 
> I fixed in context of sparse.

Please verify that this change is correct by looking at how the
structures are being created (i.e. is this being treated as a flexible
array or a pointer?)

I think we have been through this before and that sparse is not right,
but I can't remember...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
