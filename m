Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E03AF55E17
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 04:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7894E21080;
	Wed, 26 Jun 2019 02:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uaMDB3WmCPcf; Wed, 26 Jun 2019 02:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67F2D20BF9;
	Wed, 26 Jun 2019 02:03:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E09FA1BF2C1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D93AB2107D
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpYmTPKQrzYJ for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 02:03:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B4EE420BF9
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 02:03:30 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA084205C9;
 Wed, 26 Jun 2019 02:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561514610;
 bh=62LoSwtXHpbnbCH3C/+D4GuQrQ/r6+lINTf9IHhDVnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sr8P26hcL0mrsOSIY0mf890uVjyghZvny3f090YK7szhXZlagCeOLKvIC7BI4g7jR
 QXaWTARPZX5eE28hPdMWtULJgLCVIt6DmZDEwQg/32U7uiUVJdfgrNVNFWxUk6jgWO
 /84SYo0QztGQ6Mqh98fQUdpCDzzi6PaYLNbw+lNA=
Date: Wed, 26 Jun 2019 09:56:22 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 3/4] staging: kpc2000: remove unnecessary parentheses in
 kpc2000_spi.c
Message-ID: <20190626015622.GC30966@kroah.com>
References: <20190625084130.1107-1-simon@nikanor.nu>
 <20190625084130.1107-4-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625084130.1107-4-simon@nikanor.nu>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 10:41:29AM +0200, Simon Sandstr=F6m wrote:
> Fixes checkpatch "CHECK: Unnecessary parentheses around '...'".
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2=
000/kpc2000_spi.c
> index 98484fbb9d2e..68b049f9ad69 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -164,7 +164,7 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, i=
nt idx)
>  	u64 val;
>  =

>  	addr +=3D idx;
> -	if ((idx =3D=3D KP_SPI_REG_CONFIG) && (cs->conf_cache >=3D 0)) {
> +	if (idx =3D=3D KP_SPI_REG_CONFIG && cs->conf_cache >=3D 0) {

Ick, no.  I don't want to have to remember the priority order of
operations.  Leave this as-is, I HATE this checkpatch message.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
