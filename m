Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4AF232F03
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 10:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CB1E241AE;
	Thu, 30 Jul 2020 08:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UuhaEFvRe7BH; Thu, 30 Jul 2020 08:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A79E9220A9;
	Thu, 30 Jul 2020 08:57:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FAFC1BF489
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C32B870A9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d82znQUTqMYU
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:57:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73C7586C3A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:57:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA220206E6;
 Thu, 30 Jul 2020 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596099455;
 bh=tynLa/+J3ayFr4WdQpJKnbHExIeegUOAxTPSGQvzMa4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ExO1+JBBmdpefXIyIv2fCFJj7uQvsdiqTqdTr8CZ6y8zi6YH8jScVYcqpcljHSmAh
 dXxmpYk9zQOblC2Q9Gf6pGaBnpl8RObxWHmTbATUYx0nY3Y5wFMoinvk/jHc6gzEcJ
 d3zpQ6VxV1Pk7hh6vbLyU1I5Z/P7HCccNwzoHw0M=
Date: Thu, 30 Jul 2020 10:57:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH] staging: most: usb: rename most_usb.ko
Message-ID: <20200730085724.GB826534@kroah.com>
References: <1596040728-3353-1-git-send-email-christian.gromm@microchip.com>
 <20200729170313.GA3668028@kroah.com>
 <d7858a29d2ef846a61bc48043b40c9956965189f.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7858a29d2ef846a61bc48043b40c9956965189f.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 08:27:29AM +0000, Christian.Gromm@microchip.com wrote:
> On Wed, 2020-07-29 at 19:03 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Wed, Jul 29, 2020 at 06:38:48PM +0200, Christian Gromm wrote:
> > > To avoid a name conflict when adding the usb module to the
> > > driver's directory in the stable branch, this patch simply
> > > renames the kernel object.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > ---
> > >  drivers/staging/most/usb/{most_usb.ko => most-usb.ko} | Bin
> > >  1 file changed, 0 insertions(+), 0 deletions(-)
> > >  rename drivers/staging/most/usb/{most_usb.ko => most-usb.ko}
> > > (100%)
> > > 
> > > diff --git a/drivers/staging/most/usb/most_usb.ko
> > > b/drivers/staging/most/usb/most-usb.ko
> > > similarity index 100%
> > > rename from drivers/staging/most/usb/most_usb.ko
> > > rename to drivers/staging/most/usb/most-usb.ko
> > 
> > You renamed a binary file??? That is not in the source tree?
> >   
> 
> I know. And I was kind of confused that you chose this path (1).
> I even had to mess up my git to do that. 
> 
> > 
> > No, I mean make the patch move the .c file from staging to the
> > drivers/most directory and adjust the Kconfig/Makefiles for that
> > movement.
> > 
> 
> Huh, but this is exactly what I wanted to do in the first place.
> Add it to the stable branch and change the staging files to
> avoid the conflict.
> But then you told me to not touch the staging files. Remember?

Yes, but that would have made it impossible for people to review.

> Anyways, here is what I am going to do now:
> add the usb file to the stable branch, change the name of the
> .ko inside the stable branch and then once the staging files
> are removed, I'll rename it again to get the old name back.
> 
> Does this make sense now?

Yes, but I still think that's harder, just do it the original way you
wanted to in the first place.  Now that people have had a chance to
review it, no one has objected, so let's just do it the simple way.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
