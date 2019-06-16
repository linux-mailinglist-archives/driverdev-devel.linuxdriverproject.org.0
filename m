Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F6C47438
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 12:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A03E85AA1;
	Sun, 16 Jun 2019 10:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M0Tp8YiCug-0; Sun, 16 Jun 2019 10:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E23E685475;
	Sun, 16 Jun 2019 10:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4261C1BF377
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EFAF20009
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 10:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsSV1mH927g1 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 10:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B783E20001
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 10:20:54 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04F092084A;
 Sun, 16 Jun 2019 10:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560680454;
 bh=HeAVqFhEnFHaGE/MLt8iG4KF9+eU3HYvjifK8118Rak=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mnf1Pj/huamHWR6SCw8l2VcZkO3Fh1eunBrqAEP/wKDkhAUUfaux8hWOgKsdOv+TR
 6QZq0TcotwXJEGHe5WTci4kjd1ChlSG3g6fiDA9U2TpHKqicsxx5yFiU/QPmZrBENG
 WFG28OKNi7mHn5KtT1U6V9lDlWbIwSB9sn/xxGgU=
Date: Sun, 16 Jun 2019 11:20:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH v2 2/3] staging: iio: ad7150: simplify i2c SMBus return
 treatment
Message-ID: <20190616112048.67082117@archlinux>
In-Reply-To: <90e8a25eca0825878d55fe0a9e760906b4689035.1560529045.git.melissa.srw@gmail.com>
References: <cover.1560529045.git.melissa.srw@gmail.com>
 <90e8a25eca0825878d55fe0a9e760906b4689035.1560529045.git.melissa.srw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 14 Jun 2019 13:32:54 -0300
Melissa Wen <melissa.srw@gmail.com> wrote:

> Since i2c_smbus_write_byte_data returns no-positive value, this commit
> making the treatment of its return value less verbose.
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/cdc/ad7150.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 091aa33589d7..7d56f10a19ed 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -202,16 +202,11 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
>  	ret = i2c_smbus_write_byte_data(chip->client,
>  					ad7150_addresses[chan][4],
>  					sens);
> -	if (ret < 0)
> +	if (ret)
>  		return ret;
> -
> -	ret = i2c_smbus_write_byte_data(chip->client,
> +	return i2c_smbus_write_byte_data(chip->client,
>  					ad7150_addresses[chan][5],
>  					timeout);
> -	if (ret < 0)
> -		return ret;
> -
> -	return 0;
>  }
>  
>  static int ad7150_write_event_config(struct iio_dev *indio_dev,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
