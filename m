Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC781A75F5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 10:25:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE585847AC;
	Tue, 14 Apr 2020 08:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oep6DCwEwuNW; Tue, 14 Apr 2020 08:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 846B4845DB;
	Tue, 14 Apr 2020 08:25:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4A71BF2AE
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 08:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B7408527D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 08:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uP5FrhxQLFrY for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 08:25:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D99E82146
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 08:25:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED02C20578;
 Tue, 14 Apr 2020 08:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586852708;
 bh=xxacNN54FtarsJjPAzYq/IC6+kgP7e5TbdVrVbqAinc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nLQ5Jpw5ON3N940xKP7Q/SBKNWa5Cej5DM+MUoEpI7Uk3v3GcdkWTe3aAx4fMaok9
 SNxT6vDEM0Y0+BQlSUHRNi/xcQB4akm8vZ+DJLSKB2vFfxv3X2VVgLOugi4/e1O9GG
 RulZpMuvIxKecT819POw7h1KMmbZspm11B17wIiQ=
Date: Tue, 14 Apr 2020 10:25:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: carlosteniswarrior@gmail.com
Subject: Re: [PATCH] Staging: fbtft : fbtft-bus: fixed two checkpatch errors
Message-ID: <20200414082506.GB10645@kroah.com>
References: <20200414073047.2757-1-carlosteniswarrior@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414073047.2757-1-carlosteniswarrior@gmail.com>
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
Cc: linux@jaseg.net, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 14, 2020 at 09:30:47AM +0200, carlosteniswarrior@gmail.com wrot=
e:
> From: Carlos Guerrero =C1lvarez <carlosteniswarrior@gmail.com>
> =

> Fixed two checkpatch space prohibited before that close parenthesis error=
s.
> =

> Signed-off-by: Carlos Guerrero =C1lvarez <carlosteniswarrior@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-bus.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fb=
tft-bus.c
> index 63c65dd67b17..cdb451dd3fde 100644
> --- a/drivers/staging/fbtft/fbtft-bus.c
> +++ b/drivers/staging/fbtft/fbtft-bus.c
> @@ -62,9 +62,9 @@ out:									      \
>  }                                                                       =
      \
>  EXPORT_SYMBOL(func);
>  =

> -define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
> +define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8,)
>  define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
> -define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
> +define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16,)

If I remember correct, the original code here is required, due to how
some older versions of gcc works.

Did you test-build this?  Did it work properly?

I would just leave this alone,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
