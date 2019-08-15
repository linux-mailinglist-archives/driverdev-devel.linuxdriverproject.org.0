Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 372B08EB95
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 14:34:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4530227EC;
	Thu, 15 Aug 2019 12:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sO1imkwJLetf; Thu, 15 Aug 2019 12:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35F4A204D6;
	Thu, 15 Aug 2019 12:34:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61AF91BF34F
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 12:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5EDD020483
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 12:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ZEju-zRwo5Q for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 12:34:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp81.ord1d.emailsrvr.com (smtp81.ord1d.emailsrvr.com
 [184.106.54.81])
 by silver.osuosl.org (Postfix) with ESMTPS id A6C072038F
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 12:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1565872455;
 bh=hGpCaA/D00Yczz11TX8jM5ILlUq2mYkAlz4nIzKqTdY=;
 h=Subject:To:From:Date:From;
 b=UYfnMEJKphn9631j7Bja//vrYjr1SmVhK43enCNfvn2eyGxsvzvEeISqo7jq1FzBE
 sxwf1fcLN9xsSMqrGG64uv9gpUhADmkD2XF4BDi5ZLWC7eyeE+ptoM50QkdQwxZAf+
 BoyvlHbc5xkFb6i3wca2OangIJwHMVJAE6kPVsf0=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp19.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 260466021A; 
 Thu, 15 Aug 2019 08:34:13 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Thu, 15 Aug 2019 08:34:14 -0400
Subject: Re: [PATCH] staging: comedi: usbduxsigma: remove redundant assignment
 to variable fx2delay
To: Colin King <colin.king@canonical.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20190815105314.5756-1-colin.king@canonical.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <7d0f8510-9c54-ab4b-c963-e99348efdfd0@mev.co.uk>
Date: Thu, 15 Aug 2019 13:34:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815105314.5756-1-colin.king@canonical.com>
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

On 15/08/2019 11:53, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Variable fx2delay is being initialized with a value that is never read
> and fx2delay is being re-assigned a little later on. The assignment is
> redundant and hence can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   drivers/staging/comedi/drivers/usbduxsigma.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbduxsigma.c b/drivers/staging/comedi/drivers/usbduxsigma.c
> index 3cc40d2544be..54d7605e909f 100644
> --- a/drivers/staging/comedi/drivers/usbduxsigma.c
> +++ b/drivers/staging/comedi/drivers/usbduxsigma.c
> @@ -1074,7 +1074,7 @@ static int usbduxsigma_pwm_period(struct comedi_device *dev,
>   				  unsigned int period)
>   {
>   	struct usbduxsigma_private *devpriv = dev->private;
> -	int fx2delay = 255;
> +	int fx2delay;
>   
>   	if (period < MIN_PWM_PERIOD)
>   		return -EAGAIN;
> 

Looks fine, thanks!

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
