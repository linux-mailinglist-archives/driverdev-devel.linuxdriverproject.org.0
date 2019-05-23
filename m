Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C250E276D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AE0387E9C;
	Thu, 23 May 2019 07:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5oNfyd+AeLZ; Thu, 23 May 2019 07:22:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A853A86D42;
	Thu, 23 May 2019 07:22:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A955D1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A69328654C
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ToLAXtSJPlB7 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:22:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D26C86276
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:22:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A83A204EC;
 Thu, 23 May 2019 07:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558596169;
 bh=SxGawdpzQ2pd4+QP+LacgHk3fZS2n/0uGx1ffIVK2J4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YUVRZYlh93u2x/cXMIqeZx4IuBo3S3jzovwoAMlNHa8bckRhbOFZQ8syp1GJCVOJ+
 SIaLbJKAQvv6fsjE7rxtQxsEVBYHz6Gd8qk7x4WGz/upqN3ueSCTNZfKdkTwHpw4Nq
 wBmqY3VX1AAa3CqNYV5fXcMzTrE8EZy457ameSmk=
Date: Thu, 23 May 2019 09:22:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove variable
Message-ID: <20190523072246.GD24998@kroah.com>
References: <20190523070531.13510-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523070531.13510-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 12:35:26PM +0530, Nishka Dasgupta wrote:
> Variable client, assigned to priv->client, is used only once in a
> function argument; hence, it can be removed and the function argument
> replaced with priv->client directly.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/fieldbus/anybuss/hms-profinet.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
> index 5446843e35f4..a7f85912fa92 100644
> --- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
> +++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
> @@ -124,9 +124,7 @@ static int __profi_enable(struct profi_priv *priv)
>  
>  static int __profi_disable(struct profi_priv *priv)
>  {
> -	struct anybuss_client *client = priv->client;
> -
> -	anybuss_set_power(client, false);
> +	anybuss_set_power(priv->client, false);

Same comments are relevant here as the last patch you sent.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
