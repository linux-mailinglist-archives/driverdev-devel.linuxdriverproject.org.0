Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1C56B94B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 11:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B453822176;
	Wed, 17 Jul 2019 09:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id huQGjDxIx0Hx; Wed, 17 Jul 2019 09:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7FBD72042D;
	Wed, 17 Jul 2019 09:33:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0171BF3A3
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 09:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28D6E85B8D
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 09:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2CK6s7qprPD for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 09:33:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FA1F85A90
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 09:33:52 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A14BAC000D;
 Wed, 17 Jul 2019 09:33:48 +0000 (UTC)
Date: Wed, 17 Jul 2019 11:33:48 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Message-ID: <20190717093348.GB26951@aptenodytes>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
 <20190703081317.22795-2-nishkadg.linux@gmail.com>
 <20190705102650.GB1645@aptenodytes>
 <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c5bd5a6-757e-2bce-6adf-6dafbf6956a6@gmail.com>
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
 gregkh@linuxfoundation.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Fri 05 Jul 19, 17:43, Nishka Dasgupta wrote:
> On 05/07/19 3:56 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Wed 03 Jul 19, 13:43, Nishka Dasgupta wrote:
> > > Remove function cedrus_check_format as all it does is call
> > > cedrus_find_format.
> > > Rename cedrus_find_format to cedrus_check_format to maintain
> > > compatibility with call sites.
> > > Issue found with Coccinelle.
> > 
> > Maybe we could have a !! or a bool cast to make coccinelle happy here?
> 
> Coccinelle didn't flag the type mismatch, just the single-line functions. I
> could add the bool cast then?

Looks like I failed to follow-up on this in due time, sorry.

Yes a bool cast would definitely be welcome :)

Cheers,

Paul

> Thanking you,
> Nishka
> 
> > Cheers,
> > 
> > Paul
> > 
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > ---
> > >   drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
> > >   1 file changed, 2 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > index 0ec31b9e0aea..d5cc9ed04fd2 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > @@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
> > >   	return container_of(file->private_data, struct cedrus_ctx, fh);
> > >   }
> > > -static bool cedrus_find_format(u32 pixelformat, u32 directions,
> > > -			       unsigned int capabilities)
> > > +static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > +				unsigned int capabilities)
> > >   {
> > >   	struct cedrus_format *fmt;
> > >   	unsigned int i;
> > > @@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
> > >   	return false;
> > >   }
> > > -static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > > -				unsigned int capabilities)
> > > -{
> > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > -}
> > > -
> > >   static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> > >   {
> > >   	unsigned int width = pix_fmt->width;
> > > -- 
> > > 2.19.1
> > > 
> > 
> 

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
