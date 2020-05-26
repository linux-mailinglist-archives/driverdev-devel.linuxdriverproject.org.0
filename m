Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E2D1E212C
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 13:48:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74BAB22D44;
	Tue, 26 May 2020 11:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PvbCyeePKjJm; Tue, 26 May 2020 11:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E472422B7A;
	Tue, 26 May 2020 11:48:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74B621BF846
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 11:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C3A285F09
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 11:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-sEuBUGU9di for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 11:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B7CA85E8A
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 11:47:55 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id k18so21645553ion.0
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 04:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hJWyNDI0dfOMiXPBsmO+dJ6NmJrMxzXQ5Ah4k+Qs48w=;
 b=Ln9sdbULjWwPzlacZB8rZ6PRBCoMN35xWcPIhFiVHRN+l+p5kz033Lg4NZbcE9qlSC
 8/8I1bJPinluxO1gQSp4mVEi7GJeMgX6NS8doJOdA/HFrCChbWzfg0DDlLAFYo19MK2T
 oQ71pbogTkXQvYihDrqpUBUsdiI8WTR+CTNfdY2BCdZQxYRGic3AAf/GBLVJ4kWXSXzP
 mv+Q1/lQ778qIFZm7oL7XykcUCYX0NONhMYNIKn924VyhMy8e3N0kXZdQxaz71qslH/8
 G6g79t7cfjrCF9Z3AZUsup+qMxxavvIC19G/oIMhkgEj4J8fUkleuEd29ZVR0Ui2ImWu
 wfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hJWyNDI0dfOMiXPBsmO+dJ6NmJrMxzXQ5Ah4k+Qs48w=;
 b=t7N1xY073xKxo9ZLkpwq0Bbz8af7johEN3HVYFEKjwYvRszHAuSwP3SNW0b+3I6bOz
 qLyena07XMYf5NBCOvhchep9Tuyvgu66D3lMoqx+2m4g9QOtnZEm2ixlOZj4O+05jo+m
 GprAAVhfTffpwWFr8T8GTaHQJd4D+/5OIjng4ovjajqqJOdXfj8aoXSZzFMqW167wR8t
 PI1TH5vOmFzkkPcVqBDWZ01YgDd3Twd/0r9IPTo51/VhDkdUI0v4/3gBzhXuzoWF4I+p
 eKXpdbVfacV7sKbfEdDAb05DJyS8bFbFudOx2d6Wyq0AkArMKmljjMhASWiI8K3JPofE
 ZlDw==
X-Gm-Message-State: AOAM5327M7m8QaDA5tpV+OgMcNjaQlCSobg73PrLOrcXBwIKzg1vMW4D
 DdnMRmS725tEwZaEu6HacPpiYg==
X-Google-Smtp-Source: ABdhPJy0M+WccaWArZBw7Fw3A9iFpuwKZUZ+p5F5jSHlp7eANhyKNnAqMHBtfFpufyqF/l/67UYxdg==
X-Received: by 2002:a02:948e:: with SMTP id x14mr557913jah.3.1590493663850;
 Tue, 26 May 2020 04:47:43 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id v76sm11165378ill.73.2020.05.26.04.47.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 04:47:43 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: loopback: fix a spelling
 error.
To: Till Varoquaux <till.varoquaux@gmail.com>,
 kernel-janitors@vger.kernel.org, pure.logic@nexus-software.ie
References: <20200518051314.1785567-1-till.varoquaux@gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <3f610a0c-fb15-e929-0f94-447f732659a0@linaro.org>
Date: Tue, 26 May 2020 06:47:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518051314.1785567-1-till.varoquaux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 trivial@kernel.org, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/25/20 1:10 AM, Till Varoquaux wrote:
> Successed -> succeeded.
> 
> Signed-off-by: Till Varoquaux <till.varoquaux@gmail.com>

Looks good.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>   drivers/staging/greybus/loopback.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index 583d9708a191..2471448ba42a 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -135,7 +135,7 @@ static ssize_t name##_##field##_show(struct device *dev,	\
>   			    char *buf)					\
>   {									\
>   	struct gb_loopback *gb = dev_get_drvdata(dev);			\
> -	/* Report 0 for min and max if no transfer successed */		\
> +	/* Report 0 for min and max if no transfer succeeded */		\
>   	if (!gb->requests_completed)					\
>   		return sprintf(buf, "0\n");				\
>   	return sprintf(buf, "%" #type "\n", gb->name.field);		\
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
