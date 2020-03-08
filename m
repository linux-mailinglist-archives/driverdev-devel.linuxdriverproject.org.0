Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE65D17D21E
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 07:55:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BF3E87DD6;
	Sun,  8 Mar 2020 06:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARzOUQ9zY29t; Sun,  8 Mar 2020 06:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFB508681B;
	Sun,  8 Mar 2020 06:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A438A1BF5DC
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 06:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D1778861D
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 06:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v93r8BreN1jM for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 06:55:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17ABE88613
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 06:55:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52B9420828;
 Sun,  8 Mar 2020 06:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583650541;
 bh=lAhBIsdsIoz5OulCUzYlLY6/s6fpUovxZYcQI0rfdIw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l1IIJTAJDx5Qruopgru/0PHNXaifkm/SG+nmoGSA+OoHvztPFvHRABTQAaUA+jFtg
 PY1LVMKQWkdbSYFJmE/AhZ8eG1ysmmpbYH9EwlYboup0gqmdxTWt57xzpNiwMZICl5
 cC00WBkrfsBeesUzridpLEEHJ5hlrFGmKHiXp1sM=
Date: Sun, 8 Mar 2020 07:55:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT_ULL() macro instead of bit
 shift operation
Message-ID: <20200308065538.GF3983392@kroah.com>
References: <20200307104929.7710-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200307104929.7710-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 07, 2020 at 11:49:29AM +0100, Oscar Carter wrote:
> Replace the bit left shift operation with the BIT_ULL() macro and remove
> the unnecessary "and" operation against the bit_nr variable.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 5e48b3ddb94c..f7ca9e97594d 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -21,6 +21,7 @@
>   */
>  #undef __NO_VERSION__
> 
> +#include <linux/bits.h>
>  #include <linux/etherdevice.h>
>  #include <linux/file.h>
>  #include "device.h"
> @@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
> 
>  	netdev_hw_addr_list_for_each(ha, mc_list) {
>  		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
> -
> -		mc_filter |= 1ULL << (bit_nr & 0x3f);
> +		mc_filter |= BIT_ULL(bit_nr);

Are you sure this does the same thing?  You are not masking off bit_nr
anymore, why not?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
