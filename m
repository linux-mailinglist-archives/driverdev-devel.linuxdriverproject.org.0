Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B305119A948
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 12:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6835087D8C;
	Wed,  1 Apr 2020 10:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kRdlFPmewgq; Wed,  1 Apr 2020 10:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3B9D87AB5;
	Wed,  1 Apr 2020 10:16:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 351321BF479
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 10:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31E3D86146
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 10:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7tLqZS1osEs for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 10:16:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5271684FBB
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 10:16:27 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c81so5937766wmd.4
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 03:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=b9ohpIeggQmJPpjoz9Sh0/yq4Y/ugE9//x5YLp0N6aY=;
 b=sSrlMl4aHEfPclgAbp0hw+YGa0B3dxwTI0V/Yeh+mIefUyRXFVJhEqzB+R7e3oI99+
 aOiFK3uJohxgGG8GEApUx7IdPtSJ2iCBT3UOK3uCrFa3Ca5IyzXcOcP1fQTuoV4f4VKw
 KOJU8nLgsaVg4VmziET0fe//h1tk5bdF38O9bFNDJu5RHDrgkId3rXYN5ilmpBk0f1El
 RDSS7tvogu/1qm23tlhcfpVAEJ6lLyp3LExvhdMHSw6POg2jBp0E8+R5SMrrUxDH56Mw
 SrWz78qOP2HfJ8IXOB/4HFhJVedz+tQCxIpwIeNvI0ZoGTLenmS9OKuSInIODd/H5osn
 SKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b9ohpIeggQmJPpjoz9Sh0/yq4Y/ugE9//x5YLp0N6aY=;
 b=PPFeZGPFtwwJ8nu2EG4V2LoVyhh6YOZBlH1We3EbUwYa5N3h7OgsjQJ49bGOPTHfCi
 o7LY2f/N3a5Roc0BJATNSq4QAoPuhuHAp+r42GfANbkqCi2zKoGmtwVOoOJoCaNwBTIF
 bC/+VsGKxW2Do2HoNlEboseobkIXNQfkndwSeFVvpgXAZ+rL4iEonV38zQsGZoKfnW77
 aRy+y2vEre4PI37WxtNtFrmNKMg9sKahirVLW1YMAV02vO+E9Zm3npWKtuj7IyURS2jG
 KvH0Wtf53L319vt/Puu/XflxVn/qyyV/ogAIHjRTCjBRVm5TH8KXpcQ1qKEXYXuahAgk
 O0Kw==
X-Gm-Message-State: AGi0PubxdKIrjpJIdje09VzvN1VUQKZIDoWhIuOJrZV2W169JIcTQs41
 ZGUd7KvqN7PHuUEKnPGxBZw=
X-Google-Smtp-Source: APiQypLqvtaoPl6tWHtIyOhb76eFNQRYHnS71OLLlpIsY4OF8fxN7Ii+oG7jvnwZVuFM6QInSpsKpA==
X-Received: by 2002:a7b:c002:: with SMTP id c2mr3490813wmb.123.1585736185732; 
 Wed, 01 Apr 2020 03:16:25 -0700 (PDT)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id h2sm2004921wmb.16.2020.04.01.03.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 03:16:25 -0700 (PDT)
Date: Wed, 1 Apr 2020 11:16:22 +0100
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH -next] staging: greybus: fix a missing-check bug in
 gb_lights_light_config()
Message-ID: <20200401101622.tj2bhnacetwt5rce@arch-thunder.localdomain>
References: <20200401030017.100274-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401030017.100274-1-chenzhou10@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chen Zhou,
Thanks for the patch.

On Wed, Apr 01, 2020 at 11:00:17AM +0800, Chen Zhou wrote:
> In gb_lights_light_config(), 'light->name' is allocated by kstrndup().
> It returns NULL when fails, add check for it.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>

Acked-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
     Rui

> ---
>  drivers/staging/greybus/light.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> index d6ba25f..d2672b6 100644
> --- a/drivers/staging/greybus/light.c
> +++ b/drivers/staging/greybus/light.c
> @@ -1026,7 +1026,8 @@ static int gb_lights_light_config(struct gb_lights *glights, u8 id)
>  
>  	light->channels_count = conf.channel_count;
>  	light->name = kstrndup(conf.name, NAMES_MAX, GFP_KERNEL);
> -
> +	if (!light->name)
> +		return -ENOMEM;
>  	light->channels = kcalloc(light->channels_count,
>  				  sizeof(struct gb_channel), GFP_KERNEL);
>  	if (!light->channels)
> -- 
> 2.7.4
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
