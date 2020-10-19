Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208632925BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 12:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 785B387264;
	Mon, 19 Oct 2020 10:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0q9Tms5b9hj; Mon, 19 Oct 2020 10:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8568E871C7;
	Mon, 19 Oct 2020 10:26:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 842AA1BF2BA
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 798A3872A9
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzY+21wUcJRf for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 10:26:43 +0000 (UTC)
X-Greylist: delayed 00:09:03 by SQLgrey-1.7.6
Received: from smtp73.ord1c.emailsrvr.com (smtp73.ord1c.emailsrvr.com
 [108.166.43.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B382486D53
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1603102659;
 bh=Q38jMMHGA8QbxKliO/kHA3t7E+8f9zj7tr41kGV64vY=;
 h=Subject:To:From:Date:From;
 b=VBPPvwwwEAxSKShtPtQO/3I7T6OpVa/591EEoRb4aeMlScPYZlvRpptoeH/hqtPQf
 RcIofsxQ7I/Q4ooOoR64tHqYMz9bjM96XTnFCCcxrsEExYfkhrs0VEg8lCs2QWhwM1
 DWgz6igDlgLH6jpcoeZiw6MYdKdtv4uj6hfPJpBU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1603102659;
 bh=Q38jMMHGA8QbxKliO/kHA3t7E+8f9zj7tr41kGV64vY=;
 h=Subject:To:From:Date:From;
 b=TUXtbTdx5/QZLvxV2e2Ezy6ko7O/7XDV/zBpL/vmaFngE/BaSlPxI5coHzS+KCD8O
 AHc1b31pHl4cduGozTodk7Nbqun4OuKibW+u6EpOjA7BBYEKr0qyLk6IGlnkHCQbks
 Fmg2K9ObrSJZN3LJpJaiVyum3o6yT/Bvo3rn84rg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp2.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 011EBC00F9; 
 Mon, 19 Oct 2020 06:17:38 -0400 (EDT)
Subject: Re: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>
Date: Mon, 19 Oct 2020 11:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
Content-Language: en-GB
X-Classification-ID: 51a88216-630d-4d21-a8d2-7f481d9ad21c-1-1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 18/10/2020 20:48, Deepak R Varma wrote:
> Boolean comparison of the condition inside unittest function is
> unnecessary and can be simplified by directly using the condition
> outcome for evaluation. Issue reported by :
> scripts/coccinelle/misc/boolinit.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index eaefaf596a37..7db83cf5e4aa 100644
> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> @@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
>   	const struct ni_route_tables *T = &private.routing_tables;
>   
>   	init_pci_fake();
> -	unittest(route_register_is_valid(4, O(4), T) == false,
> +	unittest(!route_register_is_valid(4, O(4), T),
>   		 "check for bad source 4-->4\n");
> -	unittest(route_register_is_valid(0, O(1), T) == true,
> +	unittest(!route_register_is_valid(0, O(1), T),
>   		 "find first source\n");
> -	unittest(route_register_is_valid(4, O(6), T) == true,
> +	unittest(!route_register_is_valid(4, O(6), T),
>   		 "find middle source\n");
> -	unittest(route_register_is_valid(9, O(8), T) == true,
> +	unittest(!route_register_is_valid(9, O(8), T),
>   		 "find last source");
>   }

NAK.

It looks like you have inadvertently inverted some of the tests.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
