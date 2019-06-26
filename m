Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35803565AE
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 11:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76B7D86838;
	Wed, 26 Jun 2019 09:32:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehL4+8yz9bdV; Wed, 26 Jun 2019 09:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AF7D8680D;
	Wed, 26 Jun 2019 09:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA911BF3EE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 09:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B8C780EC1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 09:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bh1dK32j16ES for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 09:32:44 +0000 (UTC)
X-Greylist: delayed 00:07:17 by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2A8985EC2
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 09:32:43 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n4so1896366wrs.3
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 02:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=1lUn5ft83BAiAxv4CryexhWiQO7AlexlX23v5PRXdY4=;
 b=MSzc0ZrENMmkE1CMrgeVMA5qZSe9Itz2wU8hCZvp7sl6amX19nvIGJKeOmrqgQa1Db
 qeZNdRusAYgZaY4ftKSU7SyzJJKdDzCXoqOmnOjoQSIZs5+m+JmDU87DtFd9m6c7j2AJ
 ehb5L2c8aQcAyiJlrBvSSuvbtroOGVdnY9Kyp5LZHS27j2cNJrVIQy2WfoZjoglOUF6y
 vaAlvDNanEQpTAZvbiZtLzRGUQiAlmq1Z7i7uTTc4y8DqLFqzmDLwVz4siw+czdq87mT
 vIgeeNW82/NwEX9rJPGajrrwx9iwqhiNcNvLq/FooEPZLtppz4iAcryDKh+ZouiRVr77
 8oag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1lUn5ft83BAiAxv4CryexhWiQO7AlexlX23v5PRXdY4=;
 b=LJ4fjU4OB/AQOmyL3eh8kI6dlr1rOXbzWObym6YyZzU6XpJ1KcjcN58ZTm83MFoLCi
 WevS0456Tk+A+o9D8gpeAfa4b3zcE+5cy8coqe1IJy6CI2x3Vm9rQ5dNTDT9bC4xYho2
 6hLLaK7HfR2AU+ZJF3o+GgcBbHgFxPIntnySrn80ZGttWsl5ba9jMHlIFgKPSGVrGpcd
 z1dMszLTW/9a3TdeZ/ZFveeosVP1YtbNPMWv4zBbxbdwllOaXoiLv4yVtv5MmHF5KbZQ
 gzfTRvfTIczyg2o4JEYT+KZhnlYfS6NKnnpBUKWEgviECsBLnOGPH1BIYUt5eZvxBXHg
 9LxA==
X-Gm-Message-State: APjAAAUd/63sI4W2CA3Esvff/i2GbTfjgAF/HDkPgDsBeSrDO+MZ5Zyb
 IF0WpgV/wsCb/W0fAwAnuG3/z0zlclOp4Q==
X-Google-Smtp-Source: APXvYqytFI9o3PcU6pLD019cLftlgKkP5Q8TtppfwaUu8FnevX/7lYIm9kSyU449s6bZhJPHwzpplw==
X-Received: by 2002:adf:9d4c:: with SMTP id o12mr2831579wre.340.1561541124486; 
 Wed, 26 Jun 2019 02:25:24 -0700 (PDT)
Received: from [172.27.250.178] ([212.187.182.164])
 by smtp.gmail.com with ESMTPSA id x20sm28658674wrg.52.2019.06.26.02.25.22
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 02:25:23 -0700 (PDT)
Subject: Re: [PATCH] staging: greybus: tools: Remove function log_csv_error()
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, johan@kernel.org,
 elder@kernel.org, gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org
References: <20190626064450.3062-1-nishkadg.linux@gmail.com>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <b9de5aca-6c5f-fbd2-bd64-f4b2fff1f047@nexus-software.ie>
Date: Wed, 26 Jun 2019 10:25:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190626064450.3062-1-nishkadg.linux@gmail.com>
Content-Language: en-US-large
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 26/06/2019 07:44, Nishka Dasgupta wrote:
> Remove unused function log_csv_error.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>   drivers/staging/greybus/tools/loopback_test.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 2fa88092514d..cebc1d90a180 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -414,12 +414,6 @@ static int get_results(struct loopback_test *t)
>   	return 0;
>   }
>   
> -void log_csv_error(int len, int err)
> -{
> -	fprintf(stderr, "unable to write %d bytes to csv %s\n", len,
> -		strerror(err));
> -}
> -
>   int format_output(struct loopback_test *t,
>   		  struct loopback_results *r,
>   		  const char *dev_name,
> 

Reviewed-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
