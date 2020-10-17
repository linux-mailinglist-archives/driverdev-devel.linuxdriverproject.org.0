Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A4829148E
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 23:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEA20877C2;
	Sat, 17 Oct 2020 21:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hbMjnYRwDSWM; Sat, 17 Oct 2020 21:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0148B877B0;
	Sat, 17 Oct 2020 21:02:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7761BF407
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 21:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 091D8874FD
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 21:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwsNWX3wQ1yk for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 21:02:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1BB6B873F2
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 21:02:38 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kTtLX-002C1Q-Hv; Sat, 17 Oct 2020 23:02:35 +0200
Date: Sat, 17 Oct 2020 23:02:35 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH v2 net] staging: octeon: Drop on uncorrectable alignment
 or FCS error
Message-ID: <20201017210235.GU456889@lunn.ch>
References: <20201016101858.11374-1-alexander.sverdlin@nokia.com>
 <20201016101858.11374-2-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016101858.11374-2-alexander.sverdlin@nokia.com>
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
Cc: devel@driverdev.osuosl.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ralf Baechle <ralf@linux-mips.org>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
> index 2c16230..9ebd665 100644
> --- a/drivers/staging/octeon/ethernet-rx.c
> +++ b/drivers/staging/octeon/ethernet-rx.c
> @@ -69,15 +69,17 @@ static inline int cvm_oct_check_rcv_error(struct cvmx_wqe *work)
>  	else
>  		port = work->word1.cn38xx.ipprt;
>  
> -	if ((work->word2.snoip.err_code == 10) && (work->word1.len <= 64)) {
> +	if ((work->word2.snoip.err_code == 10) && (work->word1.len <= 64))

It would be nice to replace all these err_code magic numbers with #defines.

You should also replace 64 with ETH_ZLEN + ETH_FCS_LEN. I also wonder
if <= should be just < ?

>  		/*
>  		 * Ignore length errors on min size packets. Some
>  		 * equipment incorrectly pads packets to 64+4FCS
>  		 * instead of 60+4FCS.  Note these packets still get
>  		 * counted as frame errors.
>  		 */
> -	} else if (work->word2.snoip.err_code == 5 ||
> -		   work->word2.snoip.err_code == 7) {
> +		return 0;
> +
> +	if (work->word2.snoip.err_code == 5 ||
> +	    work->word2.snoip.err_code == 7) {
>  		/*
>  		 * We received a packet with either an alignment error
>  		 * or a FCS error. This may be signalling that we are
> @@ -108,7 +110,10 @@ static inline int cvm_oct_check_rcv_error(struct cvmx_wqe *work)
>  				/* Port received 0xd5 preamble */
>  				work->packet_ptr.s.addr += i + 1;
>  				work->word1.len -= i + 5;
> -			} else if ((*ptr & 0xf) == 0xd) {
> +				return 0;
> +			}
> +
> +			if ((*ptr & 0xf) == 0xd) {

The comments are not so clear what is going on here. Can this
incorrectly match a destination MAC address of xD:XX:XX:XX:XX:XX.

>  				/* Port received 0xd preamble */
>  				work->packet_ptr.s.addr += i;
>  				work->word1.len -= i + 4;

	Andrew
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
