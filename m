Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4E483E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 15:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C8DD2045E;
	Mon, 17 Jun 2019 13:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5fy7t2JLcXa; Mon, 17 Jun 2019 13:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5A7020450;
	Mon, 17 Jun 2019 13:26:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 988E31BF966
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9358984CE1
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5x-t1Q+LoXus for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 13:26:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp121.ord1c.emailsrvr.com (smtp121.ord1c.emailsrvr.com
 [108.166.43.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9779484CCE
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 13:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1560777558;
 bh=5TbJE6kgkkLp1/JINzOKzzcb0A8rBGMKS/yWgPbV0Bo=;
 h=Subject:To:From:Date:From;
 b=aasxPrsCPX9YDpRl6CZ8FO8w7OMs0IipOKSScZ3pErTJc9HuVa6NaAqBGrviIXIVB
 UhNJfVpuIuspNhY6/Q2b7ZEwRjjZzMjSVMOMQkjLnRNsJx5y87AAPhgxHWd3It//Tz
 VTpGqV09l1TxI1WKwkK3C3jUU4iHDDyBNuLJOOlg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 90654C0270; 
 Mon, 17 Jun 2019 09:19:17 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Mon, 17 Jun 2019 09:19:18 -0400
Subject: Re: [PATCH][next] staging: comedi: usbdux: remove redundant
 initialization of fx2delay
To: Colin King <colin.king@canonical.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20190617130358.28749-1-colin.king@canonical.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <fe0881ce-90aa-0689-7563-0d94aeebb461@mev.co.uk>
Date: Mon, 17 Jun 2019 14:19:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617130358.28749-1-colin.king@canonical.com>
Content-Language: en-GB
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17/06/2019 14:03, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Variable fx2delay is being initialized to a value that is never read
> and is being re-assigned a few statements later. The initialization
> is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/staging/comedi/drivers/usbdux.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> index b8f54b7fb34a..0350f303d557 100644
> --- a/drivers/staging/comedi/drivers/usbdux.c
> +++ b/drivers/staging/comedi/drivers/usbdux.c
> @@ -1226,7 +1226,7 @@ static int usbdux_pwm_period(struct comedi_device *dev,
>   			     unsigned int period)
>   {
>   	struct usbdux_private *devpriv = dev->private;
> -	int fx2delay = 255;
> +	int fx2delay;
>   
>   	if (period < MIN_PWM_PERIOD)
>   		return -EAGAIN;
> 

Looks good, thanks!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
