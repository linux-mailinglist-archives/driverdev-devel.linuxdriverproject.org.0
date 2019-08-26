Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D61C9C904
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73EB6860E0;
	Mon, 26 Aug 2019 06:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jARG4MEoWvB1; Mon, 26 Aug 2019 06:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB1BA860C4;
	Mon, 26 Aug 2019 06:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED151BF42D
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1ACA4203F6
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpTdOLZf40E4 for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:12:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D5BA1203D3
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:12:37 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l21so9931511pgm.3
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YwQsICc+3DjGnun37xdBipcHejPDbWJbE4T4sSSvK/8=;
 b=JsXM6obO3s98zghqwnJOHh5dnIRH0wCR7FN4My7XafFUbegpBWBVk4b/0cvUgJO8fj
 c++HQRVw6iamu8+y9JHp2Ul3n14zcd9NQ7VVn2G85qjYHvkRaNqnJVnn0Xsua2NUVC9E
 14rFVASTv4sQO3Al214u69RBIm5Y3xl9RIsIadA2Wwe8SlJF9qMQqwxUVIwftBR9G93A
 fXxZ3qJjRvU9fZTLB0I5kpWR0Qfn8q6RDo2WhS6mQ/Q+Wz2LMQRjnvL+teZsynyqLPpv
 pUBVHpkC5N/TbJsoPV5V2JIkQMZ7B9NVxbe5ihXLml0U9ax1wqqK9txq3rhG+e/tWIuL
 wQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YwQsICc+3DjGnun37xdBipcHejPDbWJbE4T4sSSvK/8=;
 b=LDbC9kouLyJ/wSjWjWcauNPSoqjOjdk2riL2R9nmSclp/9JHpi5mpzrV/lC7pj5n/d
 r/yw1hcrHa4nLFfKrunZMCmCBkT281WVfick8gO0G0m/Yo//CoDxqASbEjsmG5tnu9cQ
 zlxPKWx8fbr1EAiRY7Ze8dVUhGyAj1kc1FCNht5IS4cIIrJ7ISUXX9KUjaDTHxZ6k9ig
 pcL6T6J8yetKebnKz6uNncY9ktZICKemY5jtUpc1EUzu294SSqrdCxUTTsHLPlmpca5/
 A3D8olhwVzLYN5E79RWBsFRqDX63EDtQSY+/WJTl/XGDRoGAmPEekoCi+QwL62IUlk2c
 xYdw==
X-Gm-Message-State: APjAAAXiof1I+eJ5dQk/tV7wG86fnqFyHJzl9fd6cxLgYVKjE1Cr8V5s
 Vx10spw0sEc4SRVStVbEH2WxFQ==
X-Google-Smtp-Source: APXvYqyGBN3wo8dRli31bYRk//ubQT7ognpni0im2Cb82s74c+87koVPnEoqmcuW4M8PTq83s7doDQ==
X-Received: by 2002:a17:90b:28f:: with SMTP id
 az15mr18038596pjb.18.1566799957389; 
 Sun, 25 Aug 2019 23:12:37 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id e13sm10396911pff.181.2019.08.25.23.12.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:12:36 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:42:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 5/9] staging: greybus: log: Fix up some
 alignment checkpatch issues
Message-ID: <20190826061235.u3chbbctniukjdys@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-6-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-6-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, linux-kernel@vger.kernel.org,
 johan@kernel.org, David Lin <dtwlin@gmail.com>, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> Some function prototypes do not match the expected alignment formatting
> so fix that up so that checkpatch is happy.
> 
> Cc: David Lin <dtwlin@gmail.com>
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/greybus/log.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/log.c b/drivers/staging/greybus/log.c
> index 15a88574dbb0..4f1f161ff11c 100644
> --- a/drivers/staging/greybus/log.c
> +++ b/drivers/staging/greybus/log.c
> @@ -31,14 +31,14 @@ static int gb_log_request_handler(struct gb_operation *op)
>  	/* Verify size of payload */
>  	if (op->request->payload_size < sizeof(*receive)) {
>  		dev_err(dev, "log request too small (%zu < %zu)\n",
> -				op->request->payload_size, sizeof(*receive));
> +			op->request->payload_size, sizeof(*receive));
>  		return -EINVAL;
>  	}
>  	receive = op->request->payload;
>  	len = le16_to_cpu(receive->len);
>  	if (len != (op->request->payload_size - sizeof(*receive))) {
>  		dev_err(dev, "log request wrong size %d vs %zu\n", len,
> -				(op->request->payload_size - sizeof(*receive)));
> +			(op->request->payload_size - sizeof(*receive)));
>  		return -EINVAL;
>  	}
>  	if (len == 0) {
> @@ -83,7 +83,7 @@ static int gb_log_probe(struct gb_bundle *bundle,
>  		return -ENOMEM;
>  
>  	connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
> -			gb_log_request_handler);
> +					  gb_log_request_handler);
>  	if (IS_ERR(connection)) {
>  		retval = PTR_ERR(connection);
>  		goto error_free;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
