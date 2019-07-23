Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 660C371292
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jul 2019 09:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CB238523B;
	Tue, 23 Jul 2019 07:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WL5lGOGGhzkE; Tue, 23 Jul 2019 07:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82C67850E9;
	Tue, 23 Jul 2019 07:16:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BA4F1BF2C4
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2019 07:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86C6986EA5
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2019 07:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u78wpw6gvDGe for <devel@linuxdriverproject.org>;
 Tue, 23 Jul 2019 07:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51D6886DD3
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 07:16:04 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id EBEE86000B;
 Tue, 23 Jul 2019 07:16:00 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:16:00 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190723071600.GB23501@aptenodytes>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net>
 <20190722122438.GA1908@aptenodytes>
 <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
 <20190722155814.GC1263@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722155814.GC1263@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Mon 22 Jul 19, 18:58, Sakari Ailus wrote:
> On Mon, Jul 22, 2019 at 07:14:08PM +0530, Nishka Dasgupta wrote:
> > On 22/07/19 5:54 PM, Paul Kocialkowski wrote:
> > > Hi,
> > > 
> > > On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
> > > > On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> > > > > Typecast as bool the return value of cedrus_find_format in
> > > > > cedrus_check_format as the return value of cedrus_check_format is
> > > > > always treated like a boolean value.
> > > > > 
> > > > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > > > ---
> > > > > Changes in v2:
> > > > > - Add !! to the returned pointer to ensure that the return value is
> > > > >    always either true or false, and never a non-zero value other than
> > > > >    true.
> > > > > 
> > > > >   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
> > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > > index e2b530b1a956..b731745f21f8 100644
> > > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > > @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> > > > >   static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > > >   				unsigned int capabilities)
> > > > >   {
> > > > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > > > +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
> > > > >   }
> > > > 
> > > > I think the original was fine.  The return value of cedrus_find_format
> > > > will be automatically converted to bool before being returned from
> > > > cedrus_check_format since that is the return-type of the function, and
> > > > the result of converting any non-zero value to bool is 1.
> > > 
> > > Okay I was a bit unsure about that and wanted to play it on the safe side
> > > without really looking it up, but that gave me the occasion to verify.
> > > 
> > >  From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):
> > > 
> > >     Limitations of this substitute, when used in a C89 environment:
> > > 
> > >         - In C99, casts and automatic conversions to '_Bool' or 'bool' are
> > >           performed in such a way that every nonzero value gets converted
> > >           to 'true', and zero gets converted to 'false'.  This doesn't work
> > >           with this substitute.  With this substitute, only the values 0 and 1
> > >           give the expected result when converted to _Bool' or 'bool'.
> > > 
> > > So since the kernel is built for C89 (unless I'm mistaken), I don't think the
> > > compiler provides any guarantee about bool values being converted to 1 when
> > > they are non-zero. As a result, I think it's best to be careful.
> > > 
> > > However, I'm not sure I really see what cocinelle was unhappy about. You
> > > mentionned single-line functions, but I don't see how that can be a problem.
> > 
> > It's not a problem per se. I'm just working on a cleanup project for which I
> > went through all of staging replacing single-line functions with what they
> > were calling. In some cases that makes it easier to figure out what a
> > particular function call does, since the called function actually does
> > something itself instead of just calling a different function?
> > This function was also flagged as one such potentially-removable function by
> > Coccinelle; but in order to do the same replacement that I'd done in other
> > staging drivers, I thought I would do something about the type mismatch
> > first, especially since find_format doesn't appear to be used anywhere else.
> > However, now I won't remove check_format and replace it with find_format as
> > I'd originally planned, since you've said that isn't necessary here. That
> > leaves the return type issue.
> > 
> > 
> > > So in the end, I think we should keep the !! and drop the (bool) cast if there's
> > > no particular warning about it.
> > 
> > Should I send a version 3 that does this?
> 
> bool was introduced in C99. Converting a non-zero value to boolean will
> yield true as a result. Please keep the code as-is; it's much easier to
> read that way.

I was quite doubtful about that given the research and conclusions from
yesterday, but it seems that Linux is built for GNU 89 (not C89) which brings
support for bool "as in C99", so according to what you described.

So tl;dr, I agree with you that we should just keep the code as it is now.

Cheers,

Paul

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
