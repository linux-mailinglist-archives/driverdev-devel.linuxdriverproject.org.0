Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4204B315665
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 19:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 788C8867A3;
	Tue,  9 Feb 2021 18:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBimG8MmIMBw; Tue,  9 Feb 2021 18:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E2F4866E3;
	Tue,  9 Feb 2021 18:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50D021BF20F
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 18:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4DB1886789
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 18:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xW9nz+BumSqe for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 18:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91DB2866E3
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 18:59:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B7DF60232;
 Tue,  9 Feb 2021 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612897146;
 bh=4fpJLNnnXrm61+CZAhV3xI29v6k4LL3TqX6499FGgog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e25v8N6RsnT4Ivrb6cji8NwTzyy/ohyiPXpn0gROnVLNpW6dr3+SRaJPV+e3O7qxL
 tww8pvKGDsFKr3S8fwnpWIb22cAPecBKUX4jZT/Z+C6k3QAoySZeGu1v+//UBvnW9h
 GsPg0YTe7lVm48+aAptfMIHHvD11bf9P/UT2GVco=
Date: Tue, 9 Feb 2021 19:59:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix block comments alignment
Message-ID: <YCLbdtaTRk8dtsVA@kroah.com>
References: <YCLaHXD/sUKM5HZE@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCLaHXD/sUKM5HZE@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 12:23:17AM +0530, karthik alapati wrote:
> fix checkpatch.pl warning for "block comments should align the * on each line"
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 204 +++++++++---------
>  1 file changed, 102 insertions(+), 102 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> index cf23414d7..003f954c2 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> @@ -20,16 +20,16 @@
>  #define MAX_DOZE_WAITING_TIMES_9x 64
>  
>  /**
> -* Function:	phy_CalculateBitShift
> -*
> -* OverView:	Get shifted position of the BitMask
> -*
> -* Input:
> -*		u32 	BitMask,
> -*
> -* Output:	none
> -* Return:		u32 	Return the shift bit bit position of the mask
> -*/
> + * Function:	phy_CalculateBitShift
> + *
> + * OverView:	Get shifted position of the BitMask
> + *
> + * Input:
> + *		u32 	BitMask,
> + *
> + * Output:	none
> + * Return:		u32 	Return the shift bit bit position of the mask
> + */

These huge function comments are not normal kernel coding style anyway,
why not fix them up to use the correct style, don't paper over it and
keep this mess around any longer than it needs to be.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
