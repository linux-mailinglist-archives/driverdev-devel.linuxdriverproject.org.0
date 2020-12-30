Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E0D2E75D5
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Dec 2020 04:33:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C579686A48;
	Wed, 30 Dec 2020 03:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJ4BefT0y2rh; Wed, 30 Dec 2020 03:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C011A86A5C;
	Wed, 30 Dec 2020 03:33:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB9F1BF969
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 03:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65A67203BF
 for <devel@linuxdriverproject.org>; Wed, 30 Dec 2020 03:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJLD8JGqKWTV for <devel@linuxdriverproject.org>;
 Wed, 30 Dec 2020 03:33:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by silver.osuosl.org (Postfix) with ESMTPS id A970B203B8
 for <devel@driverdev.osuosl.org>; Wed, 30 Dec 2020 03:33:31 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id x15so13829177ilq.1
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 19:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=B3Mt7Vge4rOYCuATbNhfM4ylo5AR8DxmvdDf9ze0ORs=;
 b=pLTpME5psErfd7pgyRN5Ufaet1tygProILi68YE97K5ERpbjMupWDA7yBpeRswlo3f
 rv2NsyuiE3ItWMS7A4IkTT9wM2gbfEv1kBuIwU5sL0EeTE2xrbCLPO63RXK0at/TcyQd
 AVvOQUTj6EPRaaBiPFDx4Eet6X5SsIqnt9MAA55HXRT4AM4SjtFdnO0659LfuB63lMeD
 JgM1nRpsG6H5t1FRNVd6dl4tu/Y/Mnjs8KcyGVuafPO1KdMGpn31t8x06pVSNnQP1Dcy
 PLHVSNvmokyMV4UjohdfV/JrVvw+cWE2mayjQ9HQdd2kMM00AsuK9Cy+Oq4grfsu9M+7
 St+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B3Mt7Vge4rOYCuATbNhfM4ylo5AR8DxmvdDf9ze0ORs=;
 b=qEGeJL2K4qo9A+OkLP/pvs7LIWaHmT9slQZ4rrqhT7hJHg01YqleUcK/Qy++VeMerU
 ur5hoxGHXhEJ5FtlGJ0VUBeC5cB4TSPs3ufASZcNAlbHEIirLGoMGg/+gqPXrWo8NGQ7
 edqi7tC3Sd0C9NqfDWENyBUcNNVTIj/4mFXmubW/eQBes95YhBAV1FRBMowecAvaNfEb
 N0gvwFehhreVl27WdccsaO2yzlMd9w8DeUd4MHgKHh31zmKF3n7kU+F+CtHAoEOHjlDG
 PeP4maHsndNkLJfFXwPgmlWtwPMwK44i+Z6ymulQ6LzFB4TueRzw9neUbc4Wm5ZXHoGB
 F4eg==
X-Gm-Message-State: AOAM530nJRR6AgtFTMH1pA1X1GoDd2TF5PBSwaK73JK7WHlhS9bFkm48
 93P3w16kyingbyohWpP/A3Lp8Q==
X-Google-Smtp-Source: ABdhPJzXTrSmIxdHYMNyjkMFDlMMDrmiOtZdAKLDnEW+bZJlQ89iTQcBoBKa9/E/Lh0T/1SXZoMjoA==
X-Received: by 2002:a05:6e02:20e6:: with SMTP id
 q6mr21255757ilv.272.1609299210959; 
 Tue, 29 Dec 2020 19:33:30 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id f13sm27380119iog.18.2020.12.29.19.33.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Dec 2020 19:33:30 -0800 (PST)
Subject: Re: [PATCH v2 -next] staging: greybus: light: Use kzalloc for
 allocating only one thing
To: Zheng Yongjun <zhengyongjun3@huawei.com>, rmfrfs@gmail.com,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20201230013706.28698-1-zhengyongjun3@huawei.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <f374b9d0-4020-1c63-2c81-53e963ee182e@linaro.org>
Date: Tue, 29 Dec 2020 21:33:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230013706.28698-1-zhengyongjun3@huawei.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12/29/20 7:37 PM, Zheng Yongjun wrote:
> Use kzalloc rather than kcalloc(1,...)
> 
> The semantic patch that makes this change is as follows:
> (http://coccinelle.lip6.fr/)
> 
> // <smpl>
> @@
> @@
> 
> - kcalloc(1,
> + kzalloc(
>            ...)
> // </smpl>
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>

Looks good.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>   drivers/staging/greybus/light.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> index d2672b65c3f4..87d36948c610 100644
> --- a/drivers/staging/greybus/light.c
> +++ b/drivers/staging/greybus/light.c
> @@ -290,8 +290,7 @@ static int channel_attr_groups_set(struct gb_channel *channel,
>   	channel->attrs = kcalloc(size + 1, sizeof(*channel->attrs), GFP_KERNEL);
>   	if (!channel->attrs)
>   		return -ENOMEM;
> -	channel->attr_group = kcalloc(1, sizeof(*channel->attr_group),
> -				      GFP_KERNEL);
> +	channel->attr_group = kzalloc(sizeof(*channel->attr_group), GFP_KERNEL);
>   	if (!channel->attr_group)
>   		return -ENOMEM;
>   	channel->attr_groups = kcalloc(2, sizeof(*channel->attr_groups),
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
