Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 496B12925F8
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 12:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 404B7871F6;
	Mon, 19 Oct 2020 10:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fQQaF6npB3C; Mon, 19 Oct 2020 10:41:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DFEA868D9;
	Mon, 19 Oct 2020 10:41:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03FA91BF2BA
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F212F86E70
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxjUXeT28YX6 for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 10:41:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A85A868D9
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:41:16 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,394,1596492000"; d="scan'208";a="473275141"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 12:41:14 +0200
Date: Mon, 19 Oct 2020 12:41:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
In-Reply-To: <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
Message-ID: <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
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
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 19 Oct 2020, Ian Abbott wrote:

> On 18/10/2020 20:49, Deepak R Varma wrote:
> > Instructions split on multiple lines can be combined on a single line
> > for improved readability of the code.
> >
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> >   1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > index 7db83cf5e4aa..a3b1be623861 100644
> > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> >   	const struct ni_route_tables *T = &private.routing_tables;
> >     	init_pci_fake();
> > -	unittest(!route_register_is_valid(4, O(4), T),
> > -		 "check for bad source 4-->4\n");
> > -	unittest(!route_register_is_valid(0, O(1), T),
> > -		 "find first source\n");
> > -	unittest(!route_register_is_valid(4, O(6), T),
> > -		 "find middle source\n");
> > -	unittest(!route_register_is_valid(9, O(8), T),
> > -		 "find last source");
> > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > 4-->4\n");
> > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > source\n");
> > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> >   }
> >     void test_ni_check_trigger_arg(void)
> >
>
> Is it worth breaking the 80-column limit for this?

Deepak,

It was much nicer before.

It can be awkward to break eg a + operation at the 80 character limit.
But function argument stand by themselves.

julia

>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/f81a537c-c0fb-5133-52a3-825128814435%40mev.co.uk.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
