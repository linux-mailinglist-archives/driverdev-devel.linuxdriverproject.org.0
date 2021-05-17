Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D1386CCA
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 00:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E889940274;
	Mon, 17 May 2021 22:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ox8JLblSfYw; Mon, 17 May 2021 22:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DDFE40112;
	Mon, 17 May 2021 22:14:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 400341BF368
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 22:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EC9782DD0
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 22:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9YRxNPTbiAN for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 22:14:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E520C81A24
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 22:14:20 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id x8so7463977qkl.2
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 15:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=x8jZwx6c5i2SOaFzHODGVo8OGmNto4+v8Ypo2f4e070=;
 b=B6NKR/6TrH5w0WY/tpQ117wFdQ1QGUn5h2cexgAhLcgnRg/V/fXrRCcbMQVnd1Exmi
 FnFJvomRCg77isFSk1h7coNwVjO3VffU5VRldVU06AGwKHQPVMO+Zxep0QlCU/YFcQ8A
 CS+ZBfW6mDznrlAuT8EOExQ01dszzJVPXL/BiB7s/kHmNzAu+U78GHsR7ffv6ZgtMupG
 My+Ra9A78E64TweZKzEzVfHMM13GjysLtCsmCTglKN5F9Xhfy0X6LJTGEijPX3c1XSHM
 AJB+SXKPuIuMlyvFy9Lx/+e//1CHHObuL1NFvXXzm4A2V4BNEUA6AGCWh4SgsIN4MqQq
 ZNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=x8jZwx6c5i2SOaFzHODGVo8OGmNto4+v8Ypo2f4e070=;
 b=T85V2xvnHpo4TBA6uKU37utjZxTc6ht8ZRgMETMQ3YTu9hdEggNYQBhUxrSERCDyP4
 1doW6j4P4Of0uZkCgoWzinHXw3ceqE7WSndzLq17rwEP3NbdpXfGAp8GgRZahbyfSM78
 yGok5Psrkh7Lm2H+LS+6x0VLwSVzE7QsH2naOs4g//c8/ueXMpXjQ3I4PFMstv3FRRrG
 DOZZEevucCTYf1pi5SuILeZWkxj1j5BNgV+oQmbv4+G5H6OhHK3/JQBdT6cB1DFn1Fg1
 spzu85Zo/G/cRzBxmC8qDGOf8a72OpnwO1zCIoyGmw4OVUfOzDgSz8uwLFHlLl513I/8
 jZ4Q==
X-Gm-Message-State: AOAM532pInTPRDtN3pEl/IIuK2Cf0iCP4ruQUXev1Um/JBegiFu4AtBT
 mR7FXQCfswuXa1WS0RaFtI0=
X-Google-Smtp-Source: ABdhPJwRSDs4C853GPKUkZ8M4SFnSZ3G0icrJVmKCKNMuG9Oh2gfgt347z8sbwc1os7nVBm3gKOaLw==
X-Received: by 2002:ae9:f50f:: with SMTP id o15mr2174586qkg.445.1621289659862; 
 Mon, 17 May 2021 15:14:19 -0700 (PDT)
Received: from smtp.gmail.com ([2804:30c:b19:6700:15d6:7f1d:c87:ccf7])
 by smtp.gmail.com with ESMTPSA id i10sm11539253qko.68.2021.05.17.15.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 15:14:19 -0700 (PDT)
Date: Mon, 17 May 2021 19:14:13 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Fix unnecessary check and
 assignment in ad7746_probe()
Message-ID: <YKLqtc8cowOxUTid@smtp.gmail.com>
References: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 lucas.p.stankus@gmail.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Tang,

The patch looks overall good, though I think it could be split into two
pieces: one for simplifying ret declaration and another for removing the
check after device register.
Despite that, I guess Lucas might already be working on similar changes.
https://lore.kernel.org/linux-iio/cover.1620766020.git.lucas.p.stankus@gmail.com/

As general advice, I would recommend avoiding using generic words such
as fix in the subject line. It's often better to say something about the
nature of what is being done.


Cc: lucas.p.stankus@gmail.com


Best regards,

Marcelo

On 05/17, Tang Bin wrote:
> In the function ad7746_probe(), the return value of
> devm_iio_device_register() can be zero or ret, thus it is
> unnecessary to repeated check here. And delete unused
> initialized value of 'ret', because it will be assigned by
> the function i2c_smbus_write_byte_data().
> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  drivers/staging/iio/cdc/ad7746.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index dfd71e99e..d3b6e68df 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -680,7 +680,7 @@ static int ad7746_probe(struct i2c_client *client,
>  	struct ad7746_chip_info *chip;
>  	struct iio_dev *indio_dev;
>  	unsigned char regval = 0;
> -	int ret = 0;
> +	int ret;
>  
>  	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
>  	if (!indio_dev)
> @@ -730,11 +730,7 @@ static int ad7746_probe(struct i2c_client *client,
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> +	return devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>  }
>  
>  static const struct i2c_device_id ad7746_id[] = {
> -- 
> 2.20.1.windows.1
> 
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
