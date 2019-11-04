Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A735EEA0B
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 21:46:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEFDE875C2;
	Mon,  4 Nov 2019 20:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lzXecl2O-e3l; Mon,  4 Nov 2019 20:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E24286FB0;
	Mon,  4 Nov 2019 20:46:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 747BF1BF2C5
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 20:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 710EF8945A
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 20:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RwyTIkSIg1s for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 20:46:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 974F589459
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 20:46:38 +0000 (UTC)
Received: from localhost (6.204-14-84.ripe.coltfrance.com [84.14.204.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E88F020679;
 Mon,  4 Nov 2019 20:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572900398;
 bh=iId+7Mf9N878uMPp7QnhpaRhi2VZhgetrbRgL8S6wjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0c3pb4MjyGgppSaUthsGGhz/HsDyOvxejGnjxLh0lmfgJKM8F4B1RDWenlNBmL01V
 c2jOzeb3e/ko2ZLd59fGrzNyXO7IsZWYJWHD9lPQfXjmHZSA5yzmGf+K5pWe2g+TDP
 jy3intsVPe2j9DXqSZTKPZg96odIi8vtrnaExJXU=
Date: Mon, 4 Nov 2019 21:46:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
Message-ID: <20191104204636.GA2359379@kroah.com>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
 <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 04, 2019 at 05:03:04PM +0000, Ian Abbott wrote:
> On 04/11/2019 16:33, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >   - Problem could rise if arguments have different types
> > and different use though.
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> > v1 - had no full commit log message, with changes not intended to be in the patch
> > v2 - remove some changes not intended to be in this driver
> >       include note of a potential problem
> >   drivers/staging/comedi/comedi.h | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> > index 09a940066c0e..a57691a2e8d8 100644
> > --- a/drivers/staging/comedi/comedi.h
> > +++ b/drivers/staging/comedi/comedi.h
> > @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
> >   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
> > -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> > -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> > +#define NI_USUAL_PFI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> > +#define NI_USUAL_RTSI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> >   /*
> >    * mode bits for NI general-purpose counters, set with
> > 
> 
> I wasn't sure about this the first time around due to the use of GNU
> extensions in uapi header files, but I see there are a few, rare instances
> of this GNU extension elsewhere in other uapi headers (mainly in netfilter
> stuff), so I guess it's OK.  However, it  does mean that user code that uses
> these macros will no longer compile unless GNU extensions are enabled.
> 
> Does anyone know any "best practices" regarding use of GNU extensions in
> user header files under Linux?

We try to never do it if at all possible :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
