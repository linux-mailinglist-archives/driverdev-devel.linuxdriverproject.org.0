Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E42269C
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 12:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B927587889;
	Sun, 19 May 2019 10:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g+DeJdaMrfYa; Sun, 19 May 2019 10:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A347872A6;
	Sun, 19 May 2019 10:42:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 236021BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FF7585955
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 10:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1bGue2fuZUqA for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 10:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9675985951
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:42:32 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DFE52053B;
 Sun, 19 May 2019 10:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558262552;
 bh=CHcqzmd7f/zzrLlSymUwD4OBdmYfCokpiaI12KylP3A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YoczuPBn+eukyQ1MAURP/eFXVYH/RWtodIFqDMtNq25p9n6hwz62XWBo/F9LWWa/0
 YOoxWq5RRNsjdOVxGSFQmZkNV9ceO08KaPoQ53yEPhR8omKbP2ZRtH8ZtIUgueVO4v
 N5ClsS8OP2AvujGUYIR/wdMcx1OBeHgqv5Xb9WaI=
Date: Sun, 19 May 2019 11:42:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Thiago Estrela <thiagestrela@gmail.com>
Subject: Re: [PATCH] staging: iio: adis16203: Add of_device_id table
Message-ID: <20190519114226.68b86590@archlinux>
In-Reply-To: <20190518224213.25927-1-thiagestrela@gmail.com>
References: <20190518224213.25927-1-thiagestrela@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Pedro Sousa <pedroteosousa@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Tiago Napoli <napoli.tiago96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 May 2019 19:42:13 -0300
Thiago Estrela <thiagestrela@gmail.com> wrote:

> Accomplish device tree compatibility to driver ADIS16203
> by adding of_device_id table and making a subsequent call to
> MODULE_DEVICE_TABLE.
> 
> Signed-off-by: Thiago Estrela <thiagestrela@gmail.com>
> Signed-off-by: Tiago Napoli <napoli.tiago96@gmail.com>
> Co-developed-by: Tiago Napoli <napoli.tiago96@gmail.com>
> Signed-off-by: Pedro Sousa <pedroteosousa@gmail.com>
> Co-developed-by: Pedro Sousa <pedroteosousa@gmail.com>
> Reviewed-by: Matheus Tavares <matheus.bernardino@usp.br>
> Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Another nice patch.  Certainly seems like the dev day was
successful and welcome to so many new people.

Applied to the togreg branch of iio.git and pushed out as
testing for the autobuilders to see if we missed anything.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/accel/adis16203.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
> index 70381756a64a..a5d974ac2e3b 100644
> --- a/drivers/staging/iio/accel/adis16203.c
> +++ b/drivers/staging/iio/accel/adis16203.c
> @@ -311,9 +311,17 @@ static int adis16203_remove(struct spi_device *spi)
>  	return 0;
>  }
>  
> +static const struct of_device_id adis16203_of_match[] = {
> +	{ .compatible = "adi,adis16203" },
> +	{ },
> +};
> +
> +MODULE_DEVICE_TABLE(of, adis16203_of_match);
> +
>  static struct spi_driver adis16203_driver = {
>  	.driver = {
>  		.name = "adis16203",
> +		.of_match_table = adis16203_of_match,
>  	},
>  	.probe = adis16203_probe,
>  	.remove = adis16203_remove,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
