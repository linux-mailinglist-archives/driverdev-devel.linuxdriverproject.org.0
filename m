Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430D0F15BF
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 13:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7347E8A5C3;
	Wed,  6 Nov 2019 12:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HVI33Av+a2O; Wed,  6 Nov 2019 12:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A707689F10;
	Wed,  6 Nov 2019 12:03:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 641691BF5F4
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 607C987A91
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKpwAXfjy8nB for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 12:03:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 347708798E
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 12:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573041830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZEDT+gFJSe32nIwfqXTTM5I7IV6t9wwEKyln06CQEWM=;
 b=JX9DB3N4iUiGJ2e5UR9bPzZNsjvwEW1kAHKxaSBWqK6ZaB81AnsFa0IckDr+Afb2Dq1shH
 YYxzeRXdBF8VvzfnVrTov3GK3mFfOXEXRRl00WcSb1HNnn8SfBfnSaGfq7JvE0WnqWp7xJ
 xpr8NfDRE/lFVt/jC3PiUP5/jYpteVw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-ngL2h_GINZmAMe1ShIX-Pg-1; Wed, 06 Nov 2019 07:03:47 -0500
Received: by mail-wm1-f71.google.com with SMTP id o202so821209wme.5
 for <devel@driverdev.osuosl.org>; Wed, 06 Nov 2019 04:03:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6FI656rpxAhSuEP64F+xjapGQefXenbiYP2SjKZj+Js=;
 b=Oue5yQGU3uxEItp2QRt+2bQJOGQUvlIRJi02g2+8Xh3hfo4FaZse0SUuKjEHv1jv8G
 x1EXqOIa98JxsCNwWEiIgquU8balLR91yeHciShGpJFRJggZ94S42j5uaJXVeEccvkJb
 HDoyyHCCcIy12XZFdJRqVEDiw86IOBbMWVjUqHrF4J7t5Ka9bjQnxhFxQbeBuR5P38oG
 aHROVnPHGiQAj3jcyjnt0b0RoCxKqKfe0tZRbHxtTNj7ezeBRq7WQdhVTc0Qo+HdIqI9
 7+riiz8jGLzud2eh+tl7mNieb/RzN66VdL/LKR8A3D76E0R3voU54rDSkisdJk/8YFHl
 8Mgw==
X-Gm-Message-State: APjAAAULGmzVjr55pmsdLgD3n+hWB4zdmX5OE+jZm+NKhtkOoHUJJmLH
 NiGv+KmOut3PZd0oGM6tN7asGMB/wgFMnR5XGKRPWx1vVdpu+WDjNBfgedmu3mZyr6qzSG+HfDs
 tI4Kiqu4HOwwSoDkZ/Jwxrw==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr1966868wmj.61.1573041826059; 
 Wed, 06 Nov 2019 04:03:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqxwN32EKUFbPp8paDTE3jUpg+bxX0G43Q5JbYNVd63JKpd5hMWYcrk02CDjez2IuBoIgJ5qWw==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr1966853wmj.61.1573041825797; 
 Wed, 06 Nov 2019 04:03:45 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c14:2800:ec23:a060:24d5:2453])
 by smtp.gmail.com with ESMTPSA id u16sm3809733wrr.65.2019.11.06.04.03.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 04:03:45 -0800 (PST)
Subject: Re: [PATCH -next] staging: Fix error return code in
 vboxsf_fill_super()
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191106115954.114678-1-weiyongjun1@huawei.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e466fadc-0e0d-129a-5cf3-6be2c86873a0@redhat.com>
Date: Wed, 6 Nov 2019 13:03:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191106115954.114678-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-MC-Unique: ngL2h_GINZmAMe1ShIX-Pg-1
X-Mimecast-Spam-Score: 0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 06-11-2019 12:59, Wei Yongjun wrote:
> Fix to return negative error code -ENOMEM from the error handling
> case instead of 0, as done elsewhere in this function.
> 
> Fixes: df4028658f9d ("staging: Add VirtualBox guest shared folder (vboxsf) support")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Good catch, thank you:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>   drivers/staging/vboxsf/super.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vboxsf/super.c b/drivers/staging/vboxsf/super.c
> index 3913ffafa83b..0bf4d724aefd 100644
> --- a/drivers/staging/vboxsf/super.c
> +++ b/drivers/staging/vboxsf/super.c
> @@ -176,8 +176,10 @@ static int vboxsf_fill_super(struct super_block *sb, struct fs_context *fc)
>   	/* Turn source into a shfl_string and map the folder */
>   	size = strlen(fc->source) + 1;
>   	folder_name = kmalloc(SHFLSTRING_HEADER_SIZE + size, GFP_KERNEL);
> -	if (!folder_name)
> +	if (!folder_name) {
> +		err = -ENOMEM;
>   		goto fail_free;
> +	}
>   	folder_name->size = size;
>   	folder_name->length = size - 1;
>   	strlcpy(folder_name->string.utf8, fc->source, size);
> 
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
