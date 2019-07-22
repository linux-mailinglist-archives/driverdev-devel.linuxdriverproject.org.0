Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CEB7051B
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 18:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B44D87A77;
	Mon, 22 Jul 2019 16:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhL9Ny4cYZWL; Mon, 22 Jul 2019 16:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAD8483CBF;
	Mon, 22 Jul 2019 16:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECCFC1BF35F
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 16:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E82B0857D8
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 16:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYopoTX3dvhi for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 16:10:22 +0000 (UTC)
X-Greylist: delayed 00:12:00 by SQLgrey-1.7.6
Received: from hillosipuli.retiisi.org.uk (retiisi.org.uk [95.216.213.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BFDC81BDB
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 16:10:21 +0000 (UTC)
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 2E862634C87;
 Mon, 22 Jul 2019 18:58:15 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hpaha-0000Qa-Eg; Mon, 22 Jul 2019 18:58:14 +0300
Date: Mon, 22 Jul 2019 18:58:14 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722155814.GC1263@valkosipuli.retiisi.org.uk>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net>
 <20190722122438.GA1908@aptenodytes>
 <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45555499-57f3-a315-6f84-f878c3aa0130@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 gregkh@linuxfoundation.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 07:14:08PM +0530, Nishka Dasgupta wrote:
> On 22/07/19 5:54 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
> > > On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> > > > Typecast as bool the return value of cedrus_find_format in
> > > > cedrus_check_format as the return value of cedrus_check_format is
> > > > always treated like a boolean value.
> > > > 
> > > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > > ---
> > > > Changes in v2:
> > > > - Add !! to the returned pointer to ensure that the return value is
> > > >    always either true or false, and never a non-zero value other than
> > > >    true.
> > > > 
> > > >   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > index e2b530b1a956..b731745f21f8 100644
> > > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > > @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> > > >   static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > >   				unsigned int capabilities)
> > > >   {
> > > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > > +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
> > > >   }
> > > 
> > > I think the original was fine.  The return value of cedrus_find_format
> > > will be automatically converted to bool before being returned from
> > > cedrus_check_format since that is the return-type of the function, and
> > > the result of converting any non-zero value to bool is 1.
> > 
> > Okay I was a bit unsure about that and wanted to play it on the safe side
> > without really looking it up, but that gave me the occasion to verify.
> > 
> >  From what I could find (from my GNU system's /usr/include/unistring/stdbool.h):
> > 
> >     Limitations of this substitute, when used in a C89 environment:
> > 
> >         - In C99, casts and automatic conversions to '_Bool' or 'bool' are
> >           performed in such a way that every nonzero value gets converted
> >           to 'true', and zero gets converted to 'false'.  This doesn't work
> >           with this substitute.  With this substitute, only the values 0 and 1
> >           give the expected result when converted to _Bool' or 'bool'.
> > 
> > So since the kernel is built for C89 (unless I'm mistaken), I don't think the
> > compiler provides any guarantee about bool values being converted to 1 when
> > they are non-zero. As a result, I think it's best to be careful.
> > 
> > However, I'm not sure I really see what cocinelle was unhappy about. You
> > mentionned single-line functions, but I don't see how that can be a problem.
> 
> It's not a problem per se. I'm just working on a cleanup project for which I
> went through all of staging replacing single-line functions with what they
> were calling. In some cases that makes it easier to figure out what a
> particular function call does, since the called function actually does
> something itself instead of just calling a different function?
> This function was also flagged as one such potentially-removable function by
> Coccinelle; but in order to do the same replacement that I'd done in other
> staging drivers, I thought I would do something about the type mismatch
> first, especially since find_format doesn't appear to be used anywhere else.
> However, now I won't remove check_format and replace it with find_format as
> I'd originally planned, since you've said that isn't necessary here. That
> leaves the return type issue.
> 
> 
> > So in the end, I think we should keep the !! and drop the (bool) cast if there's
> > no particular warning about it.
> 
> Should I send a version 3 that does this?

bool was introduced in C99. Converting a non-zero value to boolean will
yield true as a result. Please keep the code as-is; it's much easier to
read that way.

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
