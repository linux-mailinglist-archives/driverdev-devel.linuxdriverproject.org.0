Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E30E29F0A7
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 16:59:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 960BF228EC;
	Thu, 29 Oct 2020 15:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4zG-JOEj1X3; Thu, 29 Oct 2020 15:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AED2C228B4;
	Thu, 29 Oct 2020 15:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA84B1BF4DB
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 15:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E75CB8704F
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 15:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GdeK6Dzfin57 for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 15:59:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 551D986FF0
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 15:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603987154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aajVOp/UIuOe1/LuSwzWc3QP2wiYu3hX91vy3AywAnI=;
 b=iTpgidRlv2foUqMZYTwwnVGm8I1OhQ5Dm3Mf2u4uH7C6TlVN1Ft0+9WftqQBEcrvhEHlr1
 pICK3M6xEx5VQ/GY7J7QnOYIQghHHpPys82lPrw9MDvFKhTuv+6hRAY1y+93dvWMcU2FfR
 yi9GlpP73XJYCC0wUZ/NrBy4Kj5UG/0=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-eo2k6lbuPZSoDDjhpHsGAA-1; Thu, 29 Oct 2020 11:59:12 -0400
X-MC-Unique: eo2k6lbuPZSoDDjhpHsGAA-1
Received: by mail-ed1-f70.google.com with SMTP id r14so1344559edw.21
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 08:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aajVOp/UIuOe1/LuSwzWc3QP2wiYu3hX91vy3AywAnI=;
 b=ebdMJnmCJugKBv9gV+rBuhIa6Xlq7fgt3ZYGbYASBj9nzgwe432+94B3iQjJUs2tvz
 OGN0So8k8OLzYj8lVpLBP0zatk0V/L/siIlipjNhchNwWAvN8PQjDC78kPLpo++Z5yPf
 +nKGh2dUptxsYFlioNNBjkOSFmoqGgahWj3ZRHcdHpgtIkWr9z2yuK7jiplvFhuzmBSV
 jvbOiOlqYAVYn7ANYFrzMuyJqCDnwxJGXeaQVvuNtHGkso+gIkvy1s/JjoxnI2tLn+os
 dLQaJoNxTSo4z1s8xUFcsPmIukue25GYIgjnWi5laaortKpgFP82oY+GXBs/+q4+e1xK
 ZWqQ==
X-Gm-Message-State: AOAM532dmF2ZD6QCuNqnBXR5JvekevLESIAtSynO3butzw7Cr1lfQDkn
 teUlj7ePp+SItgwji1cGYs+odYBUcbC8O1Wc4Bc6aq5ASaZNWJogGIY9kQvIEmwq8wmfx1ImHWT
 siC8Ufoa1qt5AcAwo1QRAZg==
X-Received: by 2002:a17:906:1804:: with SMTP id
 v4mr4806591eje.201.1603987150671; 
 Thu, 29 Oct 2020 08:59:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjvRjIrXVXU41RIjyQesCFbhP44ypjML0pHq6oeGxLXXZmX7Wxx9y2CWmpZmK+Qwg2036xFg==
X-Received: by 2002:a17:906:1804:: with SMTP id
 v4mr4806568eje.201.1603987150483; 
 Thu, 29 Oct 2020 08:59:10 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id sb29sm1720724ejb.76.2020.10.29.08.59.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Oct 2020 08:59:09 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
To: Brian O'Keefe <bokeefe@alum.wpi.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
References: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c396ef73-a3d0-2e4d-b212-80728dc69dea@redhat.com>
Date: Thu, 29 Oct 2020 16:59:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 10/29/20 2:52 PM, Brian O'Keefe wrote:
> Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
> the wild. This hardware exists on at least some Acer SW1-011 tablets.
> 
> Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

> ---
>  drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> index 5b1392deb0a7..7256d55fcc1b 100644
> --- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> +++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> @@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
>         { SDIO_DEVICE(0x024c, 0x0525), },
>         { SDIO_DEVICE(0x024c, 0x0623), },
>         { SDIO_DEVICE(0x024c, 0x0626), },
> +       { SDIO_DEVICE(0x024c, 0x0627), },
>         { SDIO_DEVICE(0x024c, 0xb723), },
>         { /* end: all zeroes */                         },
>  };
> --
> 2.25.1
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
