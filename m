Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D25155185
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 05:25:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1380D86352;
	Fri,  7 Feb 2020 04:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKQuufIs9896; Fri,  7 Feb 2020 04:25:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C974986341;
	Fri,  7 Feb 2020 04:25:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8481BF5F4
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 04:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27C8887C2C
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 04:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JnlcsvR2fOCC for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 04:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9EF7A87C17
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 04:25:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w21so437897pgl.9
 for <devel@driverdev.osuosl.org>; Thu, 06 Feb 2020 20:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rNcYUtTsPqkrH6ZfJIfLrMnGelkyhmdQa1AyNh1VxbQ=;
 b=MiHRdw7uACrDHqHDakCZSDRYpDsUjXL2Kyi5hv8QZDyo+X5O+kUk1Hdo1wHTMo6vbz
 1tGmqV3qVQl3ihj17GfJ+D8Ju4eC4ne8z7BFTblczI6tnytqe47p9lNauJUKS2ICOcaD
 pHdMF64lFByvQ22Em+1oGqXNIymcFiusRbegDh4NhING/mqV6UFgD9AfpVCbY8eAi01R
 PMCQC/J+5oZUUsNCZZTfp5gxPMR5mViHS0ZhiUPPVAYdaEf2wRbPfCbqs2nmsrFDlu0F
 92iqNSU3ly9dX7mtu0L0WGVZjayn7VvxA178ryPFFxbvHZYlx7HzsQBBNYQApSCEH3zv
 oybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rNcYUtTsPqkrH6ZfJIfLrMnGelkyhmdQa1AyNh1VxbQ=;
 b=WslJ/MYFR99/6I/jgb41A3E7kCiW6YP+kTk9xtsL9ZLMj8UHfBDOOKKAAED3JZn30Y
 yk1f4OlC18VagvpTZ9AOyu7wuTYOC4sLaGyB0jpT66rYb8sszEUOXbltgfd8BlJ2Dhee
 VI92IjnuPWW9MOIWXnhkRhwz3JhZ3/hcJqIEEIKD8XaDf8sYBSqUsxzCsh8KFxk2OAci
 XiZRAhsTAQBuXgdafWGUqdMVWVD4YU5Oyt8aPKwBX2XtHdntAJWDDMtzdgldu5Gs8YKB
 OC7KoBmA8kJH50GIfrsDcKBp59xXmt0pNBnKJOQXE5VkjPxBNK7BAXfPiIh0weIeCpgF
 DpRA==
X-Gm-Message-State: APjAAAVESNJb3RQqJljB9gcdrqpIAiPM0tFIEOXDkuXOI799ZX18Bayg
 W9LERFbQhhVWF+GZv88t/JrmEw==
X-Google-Smtp-Source: APXvYqwbj1LOAB7Q0rVogoZppMmiC9WAS8IonLQ3JSwpMPj6jXu3d4sUkvA6Ej4CYQbF8vsemAzkcg==
X-Received: by 2002:a65:6402:: with SMTP id a2mr7663930pgv.142.1581049535185; 
 Thu, 06 Feb 2020 20:25:35 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id p123sm952706pfg.84.2020.02.06.20.25.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Feb 2020 20:25:34 -0800 (PST)
Date: Fri, 7 Feb 2020 09:55:32 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [greybus-dev] [PATCH] staging: greybus: use after free in
 gb_audio_manager_remove_all()
Message-ID: <20200207042532.wwd6jh6cfuptr7tz@vireshk-i7>
References: <20200205123217.jreendkyxulqsool@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205123217.jreendkyxulqsool@kili.mountain>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, kernel-janitors@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Dinko Mironov <dmironov@mm-sol.com>,
 greybus-dev@lists.linaro.org, Greg Kroah-Hartman <gregkh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05-02-20, 15:32, Dan Carpenter wrote:
> When we call kobject_put() and it's the last reference to the kobject
> then it calls gb_audio_module_release() and frees module.  We dereference
> "module" on the next line which is a use after free.
> 
> Fixes: c77f85bbc91a ("greybus: audio: Fix incorrect counting of 'ida'")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/greybus/audio_manager.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager.c b/drivers/staging/greybus/audio_manager.c
> index 9b19ea9d3fa1..9a3f7c034ab4 100644
> --- a/drivers/staging/greybus/audio_manager.c
> +++ b/drivers/staging/greybus/audio_manager.c
> @@ -92,8 +92,8 @@ void gb_audio_manager_remove_all(void)
>  
>  	list_for_each_entry_safe(module, next, &modules_list, list) {
>  		list_del(&module->list);
> -		kobject_put(&module->kobj);
>  		ida_simple_remove(&module_id, module->id);
> +		kobject_put(&module->kobj);
>  	}
>  
>  	is_empty = list_empty(&modules_list);

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
