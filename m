Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16655316D42
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:48:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A22AA6F6EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 17:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GILWx1bF7ndd for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 17:48:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E58536F702; Wed, 10 Feb 2021 17:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D445B60071;
	Wed, 10 Feb 2021 17:48:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 193531BF860
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12A0E874AA
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:48:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihLFGmxOJ22I for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:48:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86F59874A7
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:48:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A1A6264E79;
 Wed, 10 Feb 2021 17:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612979305;
 bh=2rLI9+Fe1Vb3IUxDFPYblq7Kdt+EU6Ggd3102F0ROkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RlnQmKlvLAMhSN+VCPErbjbmX1HPtonPjp1OZOFaBZPbtdBwZxkJUJLpP4F7vm5WM
 4fINKBISl2PK+LFjl97aoM3OvjVzkoxPtsRz8QXEJj9CTswc2QROtRE7tgiXHRYxV5
 ims/vqgpNHYicoonyXWFv7KtdQnBG0YlmOb+tXJ4=
Date: Wed, 10 Feb 2021 18:48:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <YCQcZkmNGPuL4DBZ@kroah.com>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
 <YCQUFvhKW7rSR6qy@kroah.com> <20210210173438.GA1349@kernelvm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210173438.GA1349@kernelvm>
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
Cc: devel@driverdev.osuosl.org, luk@wybcz.pl, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 05:34:38PM +0000, Phillip Potter wrote:
> On Wed, Feb 10, 2021 at 06:12:54PM +0100, Greg KH wrote:
> > On Wed, Feb 10, 2021 at 05:00:03PM +0000, Phillip Potter wrote:
> > > Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C. Also
> > > fix opening brace placements and trailing single statement layout within
> > > RT_PRINT_DATA, as well as making newline character placement more
> > > consistent and removing camel case where possible. Finally, add
> > > parentheses for DBG_COUNTER definition.
> > > 
> > > This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
> > > checks.
> > > 
> > > Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> > > ---
> > >  drivers/staging/rtl8723bs/include/rtw_debug.h | 40 +++++++++----------
> > >  1 file changed, 19 insertions(+), 21 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > index c90adfb87261..d06ac9540cf7 100644
> > > --- a/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
> > > @@ -201,19 +201,16 @@
> > >  #ifdef DEBUG
> > >  #if	defined(_dbgdump)
> > >  	#undef DBG_871X
> > > -	#define DBG_871X(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define DBG_871X(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > >  
> > >  	#undef MSG_8192C
> > > -	#define MSG_8192C(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define MSG_8192C(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > >  
> > >  	#undef DBG_8192C
> > > -	#define DBG_8192C(...)     do {\
> > > -		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
> > > -	} while (0)
> > > +	#define DBG_8192C(...)\
> > > +		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
> > 
> > Odd, the do/while is correct here, why is checkpatch complaining about
> > it?
> 
> The warning it gives me for these is:
> WARNING: Single statement macros should not use a do {} while (0) loop

Ah.

What a mess.

I would recommend starting to unwind the "debugging" macro mess here,
all that a driver should be using is the netdev_dbg() and friends
functions, not this mess of "printk or no printk" that it currently is.

If you replace _dbgdump with what it is defined with, then go from there
and replace the DBG_8192C and friends with what they should be, and so
on.  That's a much better overall solution than to just paper over this
with a checkpatch cleanup.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
