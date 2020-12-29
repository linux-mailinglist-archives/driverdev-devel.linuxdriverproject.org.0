Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C41B2E714F
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Dec 2020 15:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06F2086D17;
	Tue, 29 Dec 2020 14:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLgCXQmWjuSb; Tue, 29 Dec 2020 14:19:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E88F86C4A;
	Tue, 29 Dec 2020 14:19:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FB131BF5AC
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 14:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8409F84EDB
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 14:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjLvdCUH4qXs for <devel@linuxdriverproject.org>;
 Tue, 29 Dec 2020 14:19:23 +0000 (UTC)
X-Greylist: delayed 00:24:34 by SQLgrey-1.7.6
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17816849DF
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 14:19:23 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id 75so12208517ilv.13
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 06:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jpkSmof4VOr4c12tpzfleU/MSe0poA4HAiphrbzBfHk=;
 b=Mv5DuuG3xxZ0kni3aZYwK1y/WtJEv9D4NITzoNct8eMAHv4j2J4qmz3pMg1CmOjZY/
 bDXhM/BZvRbA8xkxEa08q9UAjFgmXzJ/bZf59iD88hkNZr+ttOtW75U3fvhtVTMR1mh5
 N8n4o+lxUn9rJiPrcyLUoIbSR6h40MwicbC7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jpkSmof4VOr4c12tpzfleU/MSe0poA4HAiphrbzBfHk=;
 b=UCi4xC7OllKv6TAU7byRxWQAXNyt6d+Zsq44iz88n5I1WZ/bV2BsgsBwVXY3SlebNf
 4j56+j8HTrjNgFKiGLU/0Jyva1Fu2kqIodSKrIMfrK7pj+O+byHiStHNqw4L87Bm+Amz
 CGF5ZmHeTaLibxlvBAhlhW0iTTtojK2m2s4ipDGghnTaVmyKw4d+Z6x3EOSpkLTGwmrW
 GDWRY4SH9Qty3/4ykdhvIWOBiA4lZbNQuJg1TpOlHUdIvYO2fBv0TaaYXm+CzP0xvTms
 GqGAnPRdhbZl7FS3NJgvw9K9eDTZ8k8bXKUECT2W3keCvfbAE89I+wOscdRwxPKbffa4
 +yDQ==
X-Gm-Message-State: AOAM532VLvGBB/K14dwcn/ASL6MXJtUCsWiQ18jC8jxVW/4pBMfQzfBd
 Cbt3uzHqnWvEqYiT8+U6U/hC+30SdQBlAg==
X-Google-Smtp-Source: ABdhPJzpyn8e275llToao7tMWEy+kFFPHs5GHfCCa0m23gZOsMBCTRvsyGgGc13fCgJ4D0J2Q7snWg==
X-Received: by 2002:a92:d151:: with SMTP id t17mr49032957ilg.108.1609250088642; 
 Tue, 29 Dec 2020 05:54:48 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id p11sm29272733ilb.13.2020.12.29.05.54.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Dec 2020 05:54:48 -0800 (PST)
Subject: Re: [PATCH -next] staging: greybus: light: Use kzalloc for allocating
 only one thing
To: Zheng Yongjun <zhengyongjun3@huawei.com>, rmfrfs@gmail.com,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20201229135003.23416-1-zhengyongjun3@huawei.com>
From: Alex Elder <elder@ieee.org>
Message-ID: <0b38c99d-badd-7a86-2026-5e2ff783ad98@ieee.org>
Date: Tue, 29 Dec 2020 07:54:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201229135003.23416-1-zhengyongjun3@huawei.com>
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

On 12/29/20 7:50 AM, Zheng Yongjun wrote:
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
> ---
>   drivers/staging/greybus/light.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> index d2672b65c3f4..d227382fca20 100644
> --- a/drivers/staging/greybus/light.c
> +++ b/drivers/staging/greybus/light.c
> @@ -290,7 +290,7 @@ static int channel_attr_groups_set(struct gb_channel *channel,
>   	channel->attrs = kcalloc(size + 1, sizeof(*channel->attrs), GFP_KERNEL);
>   	if (!channel->attrs)
>   		return -ENOMEM;
> -	channel->attr_group = kcalloc(1, sizeof(*channel->attr_group),
> +	channel->attr_group = kzalloc(sizeof(*channel->attr_group),
>   				      GFP_KERNEL);

Looks good but that shortens the line enough to avoid a line wrap.
Please send v2 with GFP_KERNEL on the same line as the kzalloc()
call.

					-Alex

>   	if (!channel->attr_group)
>   		return -ENOMEM;
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
