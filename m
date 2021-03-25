Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99476348DFE
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 11:29:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 093BC40E84;
	Thu, 25 Mar 2021 10:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aysiMWIBtLYy; Thu, 25 Mar 2021 10:29:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 377E640F32;
	Thu, 25 Mar 2021 10:29:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E4101BF35D
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C67940EC5
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RlTs8U1pWuUu for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 10:29:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE90940E8A
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 10:29:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4505461A25;
 Thu, 25 Mar 2021 10:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616668149;
 bh=AFUyzHBtuSU08dOdAwXN/Tg3vZjRCjPnCF7jRRn33ho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oCoS4LNck/UpmIPgmg3KUfoVgXTWtOxUPFRvA8dSz+PeySXtvd83HlS279Qahh6qF
 6tok1JKdC7XfFwtkg/q+G1UYDH5POL5GiMDDMbqyb+QMSiR4bbHl2LJWAmHWDRYlvM
 3Isrlr3MyV4KGwceyT4i5+QVj1wvK65ADOrVBuZE=
Date: Thu, 25 Mar 2021 11:29:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Dong <dj0227@163.com>
Subject: Re: [PATCH]  staging: greybus: fix fw is NULL but dereferenced
Message-ID: <YFxl8hyx7murtlzW@kroah.com>
References: <1616667566-58997-1-git-send-email-dj0227@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1616667566-58997-1-git-send-email-dj0227@163.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 huyue2@yulong.com, Jian Dong <dongjian@yulong.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 25, 2021 at 06:19:26PM +0800, Jian Dong wrote:
> From: Jian Dong <dongjian@yulong.com>
> 
>  fixes coccicheck Error:
> 
>  drivers/staging/greybus/bootrom.c:301:41-45: ERROR:
>  fw is NULL but dereferenced.
> 
>  if procedure goto label directly, ret will be nefative, so the fw is NULL
>  and the if(condition) end with dereferenced fw. let's fix it.

Why is this all indented a space?

> 
> Signed-off-by: Jian Dong <dongjian@yulong.com>
> ---
>  drivers/staging/greybus/bootrom.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
> index a8efb86..0439efa 100644
> --- a/drivers/staging/greybus/bootrom.c
> +++ b/drivers/staging/greybus/bootrom.c
> @@ -246,7 +246,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>  	struct gb_bootrom_get_firmware_response *firmware_response;
>  	struct device *dev = &op->connection->bundle->dev;
>  	unsigned int offset, size;
> -	enum next_request_type next_request;
> +	enum next_request_type next_request = NEXT_REQ_GET_FIRMWARE;
>  	int ret = 0;
>  
>  	/* Disable timeouts */
> @@ -298,10 +298,10 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>  
>  queue_work:
>  	/* Refresh timeout */
> -	if (!ret && (offset + size == fw->size))
> -		next_request = NEXT_REQ_READY_TO_BOOT;
> -	else
> +	if (!!ret)

That is hard to understand, please make this more obvious.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
