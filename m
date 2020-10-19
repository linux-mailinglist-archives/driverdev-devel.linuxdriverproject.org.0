Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0E2926AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 13:50:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E6CE87609;
	Mon, 19 Oct 2020 11:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apI1uyTqpHsb; Mon, 19 Oct 2020 11:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB74886D82;
	Mon, 19 Oct 2020 11:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9C341BF37F
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 11:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E617F86C71
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 11:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ENTYC_Glg_Qt for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 11:50:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3DBD86C6D
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 11:50:00 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id hk7so5564850pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=V/2GFKcJK393SUy8Gwnz3mzd804AQcK60y3/BwlCjSI=;
 b=f3e1GQwAAmlJHgeD39pk+wkjhg9xz3AUquuDSkQ6PZOOhYTbTV77fqAJblBb5HFJDp
 uafLt5atFDg6Pmkz0AspMvCVxJN8is09Y7Mp+37N+oyOX+UpLFA+HDxAdTb/Wyg6TwOR
 eOR7M5De7lWNgN0RrWNWqCaEsd5FbW7S7LUpqZHpXLAtfkbkjr6b9JESOh0SFYZVLsSX
 1tyRuwsb9XMX1SM/IZDkLZDsVqAjUJiaU7Iw8MeMDl0FSkoXM9Wjuz1CSebPCN0SG/1z
 9y/yO7kKJy+YeIKItAr3VpSdID9eFRsD/5svhCzzY5UbGj0gvEJ+Vcyn/a09fJSEFxgs
 Wh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V/2GFKcJK393SUy8Gwnz3mzd804AQcK60y3/BwlCjSI=;
 b=uBluoL1f40WhS9vRlO8M+iM/UAAfXD5AGxgj8ZRehmf6NFVAfppRuvabSv8uW6jZlt
 TMv85JOFYWyggTUokIR7saVKWeA5I+iS2aXZWI3t77u/mxoHxJawdYobGt9nFHOkLtso
 V6c+PoR0LEx7dB/0FZUjMp81kUSRhXL9+aztjdkd99dvd1Il096nozAwdtWgQJkS3wFT
 MmKhGRfTVCXQS8OZKFKXeKn9ZzdaeLGbHn1SInm60tqz5z8IFPGPrrfvQGOoVHzM993I
 +RnILPSo5I0q+34n2cp7AIwk4Mf+LUvjn20lsxDcyQGGfvGqSEHDBRXkret+P2hBL355
 E55w==
X-Gm-Message-State: AOAM531gsbegb/MSZvGSun+B0+PBJC9QYhzmCrCFVVw6yR7PDzITv/qp
 dOl78N3/dEwmTF9TwaDxFFM=
X-Google-Smtp-Source: ABdhPJxEUsuMM7lzW6r2KKwr67dSe5tZGw69Fn+6HyZuvUHWTEbYtBZSnivkZyadF0CIGCZTv0EYcQ==
X-Received: by 2002:a17:90a:cb86:: with SMTP id
 a6mr16418234pju.161.1603108200557; 
 Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id gg24sm11642544pjb.44.2020.10.19.04.49.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 04:50:00 -0700 (PDT)
Date: Mon, 19 Oct 2020 17:19:54 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
Message-ID: <20201019114954.GA11996@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
 <20201019105731.GB9681@ubuntu204>
 <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>
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
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 19, 2020 at 12:34:15PM +0100, Ian Abbott wrote:
> On 19/10/2020 11:57, Deepak R Varma wrote:
> > On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
> > > 
> > > 
> > > On Mon, 19 Oct 2020, Ian Abbott wrote:
> > > 
> > > > On 18/10/2020 20:49, Deepak R Varma wrote:
> > > > > Instructions split on multiple lines can be combined on a single line
> > > > > for improved readability of the code.
> > > > > 
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > >    .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> > > > >    1 file changed, 4 insertions(+), 8 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > index 7db83cf5e4aa..a3b1be623861 100644
> > > > > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > > > > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> > > > >    	const struct ni_route_tables *T = &private.routing_tables;
> > > > >      	init_pci_fake();
> > > > > -	unittest(!route_register_is_valid(4, O(4), T),
> > > > > -		 "check for bad source 4-->4\n");
> > > > > -	unittest(!route_register_is_valid(0, O(1), T),
> > > > > -		 "find first source\n");
> > > > > -	unittest(!route_register_is_valid(4, O(6), T),
> > > > > -		 "find middle source\n");
> > > > > -	unittest(!route_register_is_valid(9, O(8), T),
> > > > > -		 "find last source");
> > > > > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > > > > 4-->4\n");
> > > > > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > > > > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > > > > source\n");
> > > > > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> > > > >    }
> > > > >      void test_ni_check_trigger_arg(void)
> > > > > 
> > > > 
> > > > Is it worth breaking the 80-column limit for this?
> > > 
> > > Deepak,
> > > 
> > > It was much nicer before.
> > > 
> > > It can be awkward to break eg a + operation at the 80 character limit.
> > > But function argument stand by themselves.
> > > 
> > > julia
> > > 
> > 
> > Hi Julia and Ian,
> > I wanted to take advantage of the relaxation of 80 column limit to 100
> > columns and hence proposed combining the lines. Are you saying this is
> > allowed only in certain cases?
> > 
> > Please confirm and I will handle it accordingly.
> 
> Hi Deepak,
> 
> 80 columns is still the preferred limit.  I think the relaxation is mostly
> to avoid the need to split sub-expressions across lines in really ugly ways
> to keep within the 80 columns at the expense of readability.
> 

Thank you Ian. That sounds good. I will just send the corrected patch 1
and will scrap patch 2.

Can I just send a standalone patch as v2 instead of a patch set of
single patch?

Deepak.

> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
