Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A20A6149446
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 11:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B66D87880;
	Sat, 25 Jan 2020 10:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHMhmuUY1uCn; Sat, 25 Jan 2020 10:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D48B8784E;
	Sat, 25 Jan 2020 10:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 919711BF3FF
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 10:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E3438829B
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 10:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNRBiSbqh5-k for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 10:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2BCD874AB
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 10:00:14 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r19so5391288ljg.3
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 02:00:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MHWw4kl2aot/YGxzGbaCamrHDbhqRBfZpQ0nnwKFfPM=;
 b=KmzzmhJygtyuWFxjRk8Lq0Koih2+u01b190/G51TDsLfA2BZ7CCDToYx03UIqyy9So
 QnzEtKl0sQla9/CeswAUaw65T3GrFCNmQpKXWNmlx0hXGBxOPxhmDVTFFGo/ThSrcWZc
 fPymZJJE3ziDWosgE3sRi6p1ZViPzTPdEldOnVeeaoVBLB9ZGCwPdxTgj2heyw1QeAzZ
 xOUga3zxaDA8UgYkN5/t6p5b075nviUk8na69HxoZpx6OnlbdnYZgvVGoURfqF/svJ1v
 I36NSGzHSBzUwVKBzV/OznYRUzQzUIbiRIWnzaO8kundbsy1XMW6aHMF1sII062eu9GD
 F+qw==
X-Gm-Message-State: APjAAAXbfPNexJQNaoBYK9myFqOqsRb/diJNa1UqXNO3Cp+w6rmiqWt4
 yMFdGWduZYaGuGmsO1gUfNg=
X-Google-Smtp-Source: APXvYqzY/gjJLHtoy42/JWEBqLJS3tnrXvBP3FoLalRJUR3ccUOBE8/r9ZVt6Igb5iCiHrIHlzc/IQ==
X-Received: by 2002:a2e:96c6:: with SMTP id d6mr4826945ljj.4.1579946412653;
 Sat, 25 Jan 2020 02:00:12 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id j19sm5025204lfb.90.2020.01.25.02.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jan 2020 02:00:11 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1ivIEd-0003OI-TL; Sat, 25 Jan 2020 11:00:11 +0100
Date: Sat, 25 Jan 2020 11:00:11 +0100
From: Johan Hovold <johan@kernel.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: greybus: bootrom: fix uninitialized variables
Message-ID: <20200125100011.GK8375@localhost>
References: <20200125084403.GA3386@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125084403.GA3386@google.com>
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
 saurav.girepunje@hotmail.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 02:14:03PM +0530, Saurav Girepunje wrote:
> fix uninitialized variables issue found using static code analysis tool

Which tool is that?

> (error) Uninitialized variable: offset
> (error) Uninitialized variable: size
>
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>   drivers/staging/greybus/bootrom.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
> index a8efb86..9eabeb3 100644
> --- a/drivers/staging/greybus/bootrom.c
> +++ b/drivers/staging/greybus/bootrom.c
> @@ -245,7 +245,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>   	struct gb_bootrom_get_firmware_request *firmware_request;
>   	struct gb_bootrom_get_firmware_response *firmware_response;
>   	struct device *dev = &op->connection->bundle->dev;
> -	unsigned int offset, size;
> +	unsigned int offset = 0, size = 0;
>   	enum next_request_type next_request;
>   	int ret = 0;

I think this has come up in the past, and while the code in question is
overly complicated and confuses static checkers as well as humans, it
looks correct to me.

Please make sure to verify the output of any tools before posting
patches based on them.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
