Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30750292621
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 12:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24F3686FB8;
	Mon, 19 Oct 2020 10:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IAtPNJh3cynh; Mon, 19 Oct 2020 10:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB9BA868A4;
	Mon, 19 Oct 2020 10:57:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 763BC1BF2BA
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 665FD874E5
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7PhHkbfdYerD for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 10:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C77C4870E6
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:57:37 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t18so4809798plo.1
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 03:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4/ypvQb/S0lrBO6B2iGUKDphfWp5w5Oc2pVIAK7xZ08=;
 b=k/Y9pEY05AjIwtYmX1s0HE6crhn6rJ4Dwq3ZoxDZRYjjRgxSs02nyUOb/QVNnZ95Aw
 5keKmjUJFAIqba/ESQRvY/G5Tdeeo/BPKGtbNuHexCWR60p6SIDDBpwtX/xiK2uBn1uW
 xGR4zQOdWhXL4L1yx+AquA1FS+Dd+fzwibXjkHszPVdNUBh4TwnKuIVJkTcVKaq4ou4M
 vPHs9EsgC95wXAG8+C/pxV3e7/s3qzzh05IkMjUfzVeCff1NRlAeinuSwa3dBvI5szbs
 bjyiAUybfAbezNL0tHXueyxDi/gP9qXUW2cBOUNIuteda6g/K7+Fd199XIbAVlauBa6q
 W2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4/ypvQb/S0lrBO6B2iGUKDphfWp5w5Oc2pVIAK7xZ08=;
 b=YwythnCshJJXCdApCWIHSORZQRItLJFroF7R4PDSbop6diTRnNsLcbnSVLR/PAhNuf
 hszfIE9TSSAEoA3D1Kp8ZRa648vChRCtW/JbqBmfM505lJhfLqdqYhCLUhBatJfKJ2SQ
 jx7fN8VdSRYzEJ0Z5RrAhr3PeB00x6l6SoJd2lo6vc6hF9K8KIqMZa/KaciqLrAnovwO
 VWSWrbAmg7Aryq7QftVLVaCBCf8MJxhANu22UWOv55EKyedlNdUhObG/qnoAbVtf2yOR
 Eq1eQzWa2gzLQ5KyffVib0iU3iFza2aJxBYT3065MyxgJAldVTXudGApMFlYy6gnQVb2
 H9fg==
X-Gm-Message-State: AOAM532c27rTclvR4LVWk1IfDtJsFK4MLlOV+s0N9U303N+Yplv6wIXW
 bSUUsqW/EU5vVuB1aQoxors=
X-Google-Smtp-Source: ABdhPJwguSsUxQxc5PLFUpdu9aOs4LZfm46pBnj/mXP+90p1ptGNExinREMmksIOwl6r/MoJfwzsrw==
X-Received: by 2002:a17:902:8341:b029:d4:e3fa:e464 with SMTP id
 z1-20020a1709028341b02900d4e3fae464mr16601371pln.66.1603105057413; 
 Mon, 19 Oct 2020 03:57:37 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id e23sm11497272pfi.191.2020.10.19.03.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 03:57:36 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:27:31 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
Message-ID: <20201019105731.GB9681@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
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
 Ian Abbott <abbotti@mev.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 19 Oct 2020, Ian Abbott wrote:
> 
> > On 18/10/2020 20:49, Deepak R Varma wrote:
> > > Instructions split on multiple lines can be combined on a single line
> > > for improved readability of the code.
> > >
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> > >   1 file changed, 4 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > index 7db83cf5e4aa..a3b1be623861 100644
> > > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> > >   	const struct ni_route_tables *T = &private.routing_tables;
> > >     	init_pci_fake();
> > > -	unittest(!route_register_is_valid(4, O(4), T),
> > > -		 "check for bad source 4-->4\n");
> > > -	unittest(!route_register_is_valid(0, O(1), T),
> > > -		 "find first source\n");
> > > -	unittest(!route_register_is_valid(4, O(6), T),
> > > -		 "find middle source\n");
> > > -	unittest(!route_register_is_valid(9, O(8), T),
> > > -		 "find last source");
> > > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > > 4-->4\n");
> > > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > > source\n");
> > > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> > >   }
> > >     void test_ni_check_trigger_arg(void)
> > >
> >
> > Is it worth breaking the 80-column limit for this?
> 
> Deepak,
> 
> It was much nicer before.
> 
> It can be awkward to break eg a + operation at the 80 character limit.
> But function argument stand by themselves.
> 
> julia
> 

Hi Julia and Ian,
I wanted to take advantage of the relaxation of 80 column limit to 100
columns and hence proposed combining the lines. Are you saying this is
allowed only in certain cases?

Please confirm and I will handle it accordingly.

Thank you,
Deepak.

> >
> > --
> > -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> > -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> > -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> > -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/f81a537c-c0fb-5133-52a3-825128814435%40mev.co.uk.
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
