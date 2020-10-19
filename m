Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E02925E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 12:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF968875EA;
	Mon, 19 Oct 2020 10:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bb97j1nMe-8P; Mon, 19 Oct 2020 10:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28A00871B4;
	Mon, 19 Oct 2020 10:31:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B47D1BF2BA
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2006727233
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eeJNRIke7fq for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 10:31:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp85.ord1c.emailsrvr.com (smtp85.ord1c.emailsrvr.com
 [108.166.43.85])
 by silver.osuosl.org (Postfix) with ESMTPS id B247327230
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1603102946;
 bh=2zdV9GD+mJPGO9A/oz/bHJv/mqP1TIedJuYm0deYQzg=;
 h=Subject:To:From:Date:From;
 b=OC/i2OBFieTXdxuRartjpbWERkudm/M6LocT/vUnQ8b+kVFNUAFynajhtugEZu9eq
 BLQpv6hST8EfLgxBUaMJ7GkTM82e9qG6PZxkplXMCosebr3JHZ07paxtsz6upEu0SA
 cf39hLhQkUx/F7E0vl61rHuBOtiYsyI7eG4ULM7I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1603102946;
 bh=2zdV9GD+mJPGO9A/oz/bHJv/mqP1TIedJuYm0deYQzg=;
 h=Subject:To:From:Date:From;
 b=SaZkHHfUotTIJgymH5+Vd+QB+aTCGdhfpElHzFnVWx5dqTXFK/oQNGs+GCNR99B67
 r8mpsILzV7PWPwntFZ3g0vbjXb9VXCUeZ8PQWBKs87s14QALBW+hnc3XabYqmzeMU6
 jpKecUJDFkaewTrzxhVJ5dXAIQ0lOuLSqHntalnw=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp27.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 1836C4016E; 
 Mon, 19 Oct 2020 06:22:25 -0400 (EDT)
Subject: Re: [PATCH 2/2] staging: comedi: combine split lines for improved
 readability
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>, devel@driverdev.osuosl.org
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
Date: Mon, 19 Oct 2020 11:22:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
Content-Language: en-GB
X-Classification-ID: 6637e444-76ae-4a51-b9ca-2924c296f361-1-1
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

On 18/10/2020 20:49, Deepak R Varma wrote:
> Instructions split on multiple lines can be combined on a single line
> for improved readability of the code.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
>   1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index 7db83cf5e4aa..a3b1be623861 100644
> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
>   	const struct ni_route_tables *T = &private.routing_tables;
>   
>   	init_pci_fake();
> -	unittest(!route_register_is_valid(4, O(4), T),
> -		 "check for bad source 4-->4\n");
> -	unittest(!route_register_is_valid(0, O(1), T),
> -		 "find first source\n");
> -	unittest(!route_register_is_valid(4, O(6), T),
> -		 "find middle source\n");
> -	unittest(!route_register_is_valid(9, O(8), T),
> -		 "find last source");
> +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source 4-->4\n");
> +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> +	unittest(!route_register_is_valid(4, O(6), T), "find middle source\n");
> +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
>   }
>   
>   void test_ni_check_trigger_arg(void)
> 

Is it worth breaking the 80-column limit for this?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
