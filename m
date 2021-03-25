Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E088348E59
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 11:52:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DB140F32;
	Thu, 25 Mar 2021 10:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQ6shC-lONTq; Thu, 25 Mar 2021 10:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F79640EB0;
	Thu, 25 Mar 2021 10:52:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF6081BF35D
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE2D6849FD
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 10:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aq7Ld7zW2mKx for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 10:51:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1121E849FB
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 10:51:57 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 q6-20020a17090a4306b02900c42a012202so746508pjg.5
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 03:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WDOizguRq8drFQk38ZzODxVZB2x4EMxsWev3Revxw0Y=;
 b=zYoH9SeD75+2AEee+MIyjm+CGETXAGt5ool7XVwt5VHXTCeLsNfwfxPW8ES+c3w+nX
 fW9GlSqKq13/anpmrmCSJW/kZZhthS1o+wjnS3Tn4jDA1nuT78dfI3e+MD3fHlM1cP0V
 XzMGwmppRoygu40/SU1OZoMqka7aeCURyD6ONSlWLVZpcRc/U/uTbOoKea4Ohj9maMaD
 x8I/7XkC7tgTemyUHgg36Afo5H4okssw7PzL3Y/94+5UlBRLS45739+9MRjVisZQ4Tpu
 aozx8K8B9sso8mDfZy9GB/BKvsYKIpBm3XUnnOQQ8ddLDuk1eb05haiWBFc43OrLOucg
 sTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WDOizguRq8drFQk38ZzODxVZB2x4EMxsWev3Revxw0Y=;
 b=pj1W7jiL7IHfqtUOOHC9RLt+opAktTMhD0FzP+sOiLa2yrsYiyE3IsMnW6m9Iawh+c
 izn1LOdjUS7n3I4TZMwls/2dnaQnxLrrAZn4Ft6n1I2pOVFjSsWmqxAn+Al2nmO08Oo3
 AEzRaWQZZRp1CRqyuIU8V2FmH4dalf5yyQXXzFPHh05T1gnM4IKVTU1GytMF2MjZ7jJ9
 FtfRgcrhw8zYgfqnY+mNG/6TNRc0FpkrKegUFRr3O8pmxMUegNOsTTJkhv4geQ72KPa9
 l65YRvMowzOEcwTZ8BEZN7VTndi7m9JPMrz5rXUjqcPqZJ/TbsetiF4A99A8WolRsbHg
 sUhg==
X-Gm-Message-State: AOAM531ESgqymMV/E2UObZMfnbThAeZGCyTWETy+9UqIOOFnthZXgboG
 DbxwMPbXDceOTBeQxEVj6o+XQA==
X-Google-Smtp-Source: ABdhPJzJ88HGwhjdHY9GCeoUb+nzbyyDI7PQS65b0tAaHdH75UzKxuxTPXW/sj/RZBXVjkKpy4Cz2A==
X-Received: by 2002:a17:90a:a96:: with SMTP id
 22mr8391016pjw.200.1616669517416; 
 Thu, 25 Mar 2021 03:51:57 -0700 (PDT)
Received: from localhost ([122.172.6.13])
 by smtp.gmail.com with ESMTPSA id p1sm5409324pfn.22.2021.03.25.03.51.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Mar 2021 03:51:57 -0700 (PDT)
Date: Thu, 25 Mar 2021 16:21:55 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jian Dong <dj0227@163.com>
Subject: Re: [PATCH]  staging: greybus: fix fw is NULL but dereferenced
Message-ID: <20210325105155.c52zc7mswoh33yjz@vireshk-i7>
References: <1616667566-58997-1-git-send-email-dj0227@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1616667566-58997-1-git-send-email-dj0227@163.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 huyue2@yulong.com, gregkh@linuxfoundation.org, Jian Dong <dongjian@yulong.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-03-21, 18:19, Jian Dong wrote:
> From: Jian Dong <dongjian@yulong.com>
> 
>  fixes coccicheck Error:
> 
>  drivers/staging/greybus/bootrom.c:301:41-45: ERROR:
>  fw is NULL but dereferenced.
> 
>  if procedure goto label directly, ret will be nefative, so the fw is NULL
>  and the if(condition) end with dereferenced fw. let's fix it.

No, fw is accessed only for !ret case.

> Signed-off-by: Jian Dong <dongjian@yulong.com>
> ---
>  drivers/staging/greybus/bootrom.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
> index a8efb86..0439efa 100644
> --- a/drivers/staging/greybus/bootrom.c
> +++ b/drivers/staging/greybus/bootrom.c
> @@ -246,7 +246,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>  	struct gb_bootrom_get_firmware_response *firmware_response;
>  	struct device *dev = &op->connection->bundle->dev;
>  	unsigned int offset, size;
> -	enum next_request_type next_request;
> +	enum next_request_type next_request = NEXT_REQ_GET_FIRMWARE;
>  	int ret = 0;
>  
>  	/* Disable timeouts */
> @@ -298,10 +298,10 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>  
>  queue_work:
>  	/* Refresh timeout */
> -	if (!ret && (offset + size == fw->size))
> -		next_request = NEXT_REQ_READY_TO_BOOT;
> -	else
> +	if (!!ret)
>  		next_request = NEXT_REQ_GET_FIRMWARE;
> +	else if (offset + size == fw->size)
> +		next_request = NEXT_REQ_READY_TO_BOOT;
>  
>  	gb_bootrom_set_timeout(bootrom, next_request, NEXT_REQ_TIMEOUT_MS);

The code is fine AFAICT, the coccicheck is buggy as it is detecting a
bug here.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
