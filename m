Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F92292BF9
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 18:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1B5486C29;
	Mon, 19 Oct 2020 16:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKyVM-Tv9pg1; Mon, 19 Oct 2020 16:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E01B86C32;
	Mon, 19 Oct 2020 16:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDD0B1BF3D4
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 16:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C734E86C25
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 16:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1yIzzSfsxV4a for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 16:56:43 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from smtp87.ord1d.emailsrvr.com (smtp87.ord1d.emailsrvr.com
 [184.106.54.87])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7382786C19
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 16:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1603126301;
 bh=3Q6VFIOab6QbYf0EHuK9W1ka1jjWifrhFivk7Z9q2Xk=;
 h=Subject:To:From:Date:From;
 b=EHzjcGUv+K4CEHuxxa2ekq67i7uxP9EfmUkF3p/mjyZdgtluuR2leFbU0jIIarbWB
 yiAcWcZg7bPmCaf3zTQAEmspUEWMFDGc+kQ838oYeiT/Hh9gKGA3K0MplOf+AeeNOh
 5nC16HQZe4qnj8r3iuM8FhFQZrIszrnqYSRPQhw8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1603126301;
 bh=3Q6VFIOab6QbYf0EHuK9W1ka1jjWifrhFivk7Z9q2Xk=;
 h=Subject:To:From:Date:From;
 b=dShLW6RpUVkWgaAi6z9vFriz8TGzDofOP8Adl3HR+2ZVhzWSA4hY13TfULGY5V7ui
 2fOS60p9fPJ3V9ij5b0Drno6tb+urFnzrWHRwGOIAuCSzacLvI3D4zVJHLLOzF5nzG
 D5GTRWd9wDXRnrf4I92hyQVVbxYssvhaVINN6tMM=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp11.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 87DEA6018C; 
 Mon, 19 Oct 2020 12:51:40 -0400 (EDT)
Subject: Re: [PATCH v2] staging: comedi: Simplify conditional evaluation
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <20201019144509.GA23282@ubuntu204>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <eb66ef80-da64-8935-253d-83dc348018e5@mev.co.uk>
Date: Mon, 19 Oct 2020 17:51:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201019144509.GA23282@ubuntu204>
Content-Language: en-GB
X-Classification-ID: 664b0a13-3592-44d1-bcf3-db7a1ed91ced-1-1
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

On 19/10/2020 15:45, Deepak R Varma wrote:
> Boolean comparison of the condition inside unittest function is
> unnecessary and can be simplified by directly using the condition
> outcome for evaluation. Issue reported by :
> scripts/coccinelle/misc/boolinit.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> 
> Changes since v1:
>     - Corrected wrongly inverted tests. Feedback from Ian Abbott.
>     - Note:
>         This patch was sent earlier as part of a patch set containing 2
>         patches. The second patch of the patch set is dropped. Hence
>         sending this standalone patch as v2 version. This is based on the
>         feedback from Ian Abbott and Julia L.
> 
>   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index eaefaf596a37..4061b3b5f8e9 100644
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
> +	unittest(route_register_is_valid(0, O(1), T),
>   		 "find first source\n");
> -	unittest(route_register_is_valid(4, O(6), T) == true,
> +	unittest(route_register_is_valid(4, O(6), T),
>   		 "find middle source\n");
> -	unittest(route_register_is_valid(9, O(8), T) == true,
> +	unittest(route_register_is_valid(9, O(8), T),
>   		 "find last source");
>   }
>   
> 

Looks OK to me.  I have a minor quibble about the patch title.  Maybe 
change the tags to "staging: comedi: tests:" to narrow down the scope.

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
