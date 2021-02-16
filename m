Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAA331CCF6
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 16:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D91C586B03;
	Tue, 16 Feb 2021 15:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgK-B604obIS; Tue, 16 Feb 2021 15:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43AEF8685A;
	Tue, 16 Feb 2021 15:32:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4685D1BF59E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 361FE6F526
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvoPxS5wWs9r for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 15:31:57 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 63B0F6F503; Tue, 16 Feb 2021 15:31:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B175F6F503
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 15:31:55 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id n201so10498906iod.12
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 07:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bePSxi8P+mopBsJyKhZfJ0ylENCPirau9uKWEklbXfU=;
 b=PiBnwMMkI8Z0xJz4NSxr7IlBW3KAIOw/SSFDqK3qw21H0AVBmvLCKMzqRWNsEjwHgI
 2XJrBVD4ayDdk/LqYY08O29r8Bhqk+kpswdloGfRB+ieVHj25LeVNNhPSr6AL0c7DfHR
 AyWT/22s202VskApoPuzInKSsb9lWFVGGXStY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bePSxi8P+mopBsJyKhZfJ0ylENCPirau9uKWEklbXfU=;
 b=D7ofN4yQ3bEjhALJQUvXz6eWayGAMH5wl6U0Gz8SYMmH1oXR0TVDXPRRhmmkUNULRc
 tV1FyPBkk/QJ3nK69yudyKlqZiRFU3cWQJ0e2Z4drxhu5qiGau/xLOatwG6gw5dU1LrX
 A81C0xsaJGAjdsOgZZ3Ry4HdV7w4QpRNpAPf+BFMh0divTyUiRokDz1cDdAwCra7kVwl
 cwHgy/A2XEtOSA4H0J29P/mFP0SnCy9Fr/AVKD5fiv3eEi73xyb/yRAoWsgyhzTJJ5EM
 6zFrlDkXnpJR8+AXBQ4G+ieGIeGYOeNxgWoVK9cBy95syX/wj8qrTyVbwuXAsdpb/NbU
 TluQ==
X-Gm-Message-State: AOAM531pCg4NZb/bm3cz4FaiqfRNbA1aoxA5iTqR1MTHciGLb+vvZYsK
 65ibBsh6sxjSlAdT6LYzebfJzsTgss46aqm9
X-Google-Smtp-Source: ABdhPJwoqQ029vOtAseft2NEwBaD7TLrVcTkRURos0sC8/KIa3QTnbWUF1Zy/JG8lsXU9hTL+Dcw5w==
X-Received: by 2002:a05:6638:58:: with SMTP id
 a24mr21031085jap.40.1613489514697; 
 Tue, 16 Feb 2021 07:31:54 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id o16sm1326647ilt.21.2021.02.16.07.31.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Feb 2021 07:31:54 -0800 (PST)
Subject: Re: [PATCH] staging: greybus: minor code style fix
To: Manikantan Ravichandran <ravman1991@gmail.com>, vaibhav.sr@gmail.com,
 mgreer@animalcreek.com, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org
References: <20210212225035.GA16260@whach>
From: Alex Elder <elder@ieee.org>
Message-ID: <356e8c33-36d9-95f3-1a30-322e7ef6e168@ieee.org>
Date: Tue, 16 Feb 2021 09:31:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210212225035.GA16260@whach>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/12/21 4:50 PM, Manikantan Ravichandran wrote:
> checkpatch warning fix for string split across lines
> 
> Signed-off-by: Manikantan Ravichandran <ravman1991@gmail.com>

I think what you're doing here *looks* reasonable.  But
the GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF symbol is
a (string) numeric value that is associated with the
"s" that immediately follows it.

So I don't think your change makes sense, given the
meaning of the line you're changing.

Thanks.

					-Alex

> ---
>   drivers/staging/greybus/audio_manager_sysfs.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> index ab882cc49b41..fcd518f9540c 100644
> --- a/drivers/staging/greybus/audio_manager_sysfs.c
> +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> @@ -18,8 +18,8 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
>   	struct gb_audio_manager_module_descriptor desc = { {0} };
>   
>   	int num = sscanf(buf,
> -			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> -			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> +			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF
> +			"s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
>   			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
>   			&desc.ip_devices, &desc.op_devices);
>   
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
