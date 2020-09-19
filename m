Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAD8271046
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 21:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD18C874CE;
	Sat, 19 Sep 2020 19:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tbaX9rm5vQuX; Sat, 19 Sep 2020 19:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E95881CEB;
	Sat, 19 Sep 2020 19:32:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F12C31BF303
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED9A68671F
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 19:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGOpN2xWb0d6 for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 19:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04304866DA
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 19:32:28 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x14so8828681wrl.12
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 12:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=uRD+jtu4T4w3/IBu3hqNZ8Cd+y8HjY9F+wm5MEjM4SU=;
 b=j5EXDhRE8pvoMK7JrAAKL0aJ6LlyvxUeutfhUvbvp9x1Dc9T9tBvRfqDZ+nc3tkDfA
 gV6vWLrHqgq4maYwQUd//5yKxxnjP8BMfwG22frr7OXxmJ3OghfnkAHvBzIy7zjGdSEw
 XMzq5sx82YWQX8wtsToh792Wx7U2GpT+JHGpWrE0nh1t9sHZqDeMeudmFFa858/fedMR
 CBy4zdI4QwUehk/Xt66PBoV/5c6j9vsFpdFvwCAujArYAvEVH5adWnqiYn77P06rk5FA
 hEcvg7/vrCzrwef1nSmGJhMmBFTYvUyBiY9Pcts3qKnAP5UF/NYc7JZmUhS9Cs1c0+8H
 Qq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=uRD+jtu4T4w3/IBu3hqNZ8Cd+y8HjY9F+wm5MEjM4SU=;
 b=cswMTwG9KoBjO1mcQ8alNgXmEcrNEoHDVI/mU4H48hvhOZc80/HfKKMDipWx9O3G/2
 SN+3TKYxOqRz8QWRoi8F2xnFpYlBk5fGY2ohrPavANkZZUVFTfd5l1XAS4iqN1+EDHy7
 67yxGelWuaiRjzpSH7TTLUsrCoIhLGS6854F96kxWtU03pkMPu47L07Shz+/YDNPRjhi
 3QNfvh4p88F39Su23NLFpouki9vvtM0Ef7d0f2sxJ++hbLKpFi9Wu7rswmCHZfgm+QS+
 qaHokIBatWrqgkSoufjhBxzt4fQc4GSXTVpeRRtvnp7hWcmDJM4GapxVx6mcSflMfQYO
 NI9w==
X-Gm-Message-State: AOAM530ga7YaNpSbgMgWqJ6kXm1xUwxXfekT+FVboYGew05wtJUG/Z3u
 ZjPHjPjYSFpo8aWo+rZGLGM=
X-Google-Smtp-Source: ABdhPJzrOXv8bcvcOPV2KZZBH0KVfSEQEfKcjfQFzdkmVfez16uArWPgkDhYtbLNjyMUGWSPBk/dqg==
X-Received: by 2002:a5d:51ce:: with SMTP id n14mr43684419wrv.8.1600543946429; 
 Sat, 19 Sep 2020 12:32:26 -0700 (PDT)
Received: from [192.168.43.148] (92.40.169.140.threembb.co.uk. [92.40.169.140])
 by smtp.gmail.com with ESMTPSA id b11sm12153428wrt.38.2020.09.19.12.32.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Sep 2020 12:32:25 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: media: atomisp: Remove unhelpful info message
References: <20200903183145.720727-1-alex.dewar90@gmail.com>
 <20200903183145.720727-2-alex.dewar90@gmail.com>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <09acb04e-ed83-377c-891e-efbf6b5f101b@gmail.com>
Date: Sat, 19 Sep 2020 20:32:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200903183145.720727-2-alex.dewar90@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-09-03 19:31, Alex Dewar wrote:
> We don't really need to know that the LED pin reset successfully.
Ping?
>
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
>   drivers/staging/media/atomisp/i2c/atomisp-lm3554.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> index 621555b0cf6b..77b7f59e62d7 100644
> --- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> +++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
> @@ -771,7 +771,6 @@ static int lm3554_gpio_init(struct i2c_client *client)
>   	ret = gpiod_direction_output(pdata->gpio_reset, 0);
>   	if (ret < 0)
>   		return ret;
> -	dev_info(&client->dev, "flash led reset successfully\n");
>   
>   	if (!pdata->gpio_strobe)
>   		return -EINVAL;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
