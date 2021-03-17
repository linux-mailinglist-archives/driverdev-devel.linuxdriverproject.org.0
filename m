Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D4033F0AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 13:49:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCBF6830C5;
	Wed, 17 Mar 2021 12:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yzx7YlCD_TaD; Wed, 17 Mar 2021 12:49:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E09682F84;
	Wed, 17 Mar 2021 12:49:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2F8B1BF575
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 12:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFCAC42FFE
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 12:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQDoqwg65Uet for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 12:48:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp69.iad3a.emailsrvr.com (smtp69.iad3a.emailsrvr.com
 [173.203.187.69])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90AB7414D5
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1615985332;
 bh=rvdGFH0sUjTPgyoQVuY1JrGXdy6YzrQiw9ETvD6KUrM=;
 h=Subject:To:From:Date:From;
 b=kTC/ZEJ+y2BazYsb2sIuM+iffENwPmqjHf591hEoBs39mdqJQxn/PbHkp501ie1/T
 6C1fn6IsEAg3E/MpxRXNBQT3SvZQPIpWMpzRVQ1ToKypP/6FsWtBO/Uh3DDQh2FYKJ
 2gZbC0kLW6Kh8mxSUTivepms960wGwt4ARpQ3SzA=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp9.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 9C58D4392; 
 Wed, 17 Mar 2021 08:48:51 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: das800: fix request_irq() warn
To: Tong Zhang <ztong0001@gmail.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
 <20210316224227.348310-1-ztong0001@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <8c65b02e-4315-153f-de2c-153862f195be@mev.co.uk>
Date: Wed, 17 Mar 2021 12:48:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210316224227.348310-1-ztong0001@gmail.com>
Content-Language: en-GB
X-Classification-ID: a5d326e6-cc0f-4e4e-a1aa-d226702d259e-1-1
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

On 16/03/2021 22:42, Tong Zhang wrote:
> request_irq() wont accept a name which contains slash so we need to
> repalce it with something else -- otherwise it will trigger a warning
> and the entry in /proc/irq/ will not be created
> since the .name might be used by userspace and we don't want to break
> userspace, so we are changing the parameters passed to request_irq()
> 
> Suggested-by: Ian Abbott <abbotti@mev.co.uk>
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> ---
>   drivers/staging/comedi/drivers/das800.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/das800.c b/drivers/staging/comedi/drivers/das800.c
> index 2881808d6606..bc08324f422f 100644
> --- a/drivers/staging/comedi/drivers/das800.c
> +++ b/drivers/staging/comedi/drivers/das800.c
> @@ -668,7 +668,7 @@ static int das800_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>   	dev->board_name = board->name;
>   
>   	if (irq > 1 && irq <= 7) {
> -		ret = request_irq(irq, das800_interrupt, 0, dev->board_name,
> +		ret = request_irq(irq, das800_interrupt, 0, "das800",
>   				  dev);
>   		if (ret == 0)
>   			dev->irq = irq;
> 

Looks good (apart from the minor spelling niggle spotted by Dan 
Carpenter), thanks!

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
