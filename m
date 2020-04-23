Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 921991B5BBA
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 14:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF6FE232FA;
	Thu, 23 Apr 2020 12:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BES9ULdE0YMJ; Thu, 23 Apr 2020 12:48:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2C962232F2;
	Thu, 23 Apr 2020 12:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8271BF392
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96CD686CB5
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14XbeN9OQHTM for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 12:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DEE6086CB2
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 12:48:12 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x4so6303006wmj.1
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 05:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AIWDZqBU/m1xMWhrZfTJgdQpK0v0DeS2ch8sjIFRn1o=;
 b=IWSs9nbgcZK6vbN6AxMc7DXCMIRSEXT+zXxFa2memXXRINJEoe9BBuUC1XuEul8cU5
 faG8X/sEDFm2OAPncZD6JmPNo/L1TCNX6CfNM11N3DEfoFStIKSDEELn15N3Z+5P4PUy
 wUaZgTs5CIAU/qMmi+8RxsyD9Ca+MjwUfOhdK2mWesajkf1G2Z7IYe5KxwnsnPiaMn9D
 35ZJSQFo6N12ePSS4VxpnFbMFNX8ublLbVA6itFGlvvFB7iRh5VEwbegt6KIanp/CSoF
 yY3yAFC6idyTWu1j/1GNB3sus005W1MD6LDsqf++mUuPvql+q7Y1flk4g+/GCpd8t7Vb
 yBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AIWDZqBU/m1xMWhrZfTJgdQpK0v0DeS2ch8sjIFRn1o=;
 b=aorNyqh6HNq2I6gSvs10a9QB2sJb7IKg7p+kpkRpJwhGh5j++0yU188suARoyuYh4E
 lF7rmeNA6flw4rReBGzBXDNK/DA942woq07eOAG0PH27RH/catlweWA/8IDpInNmMK1f
 hoqvfiZbvqwEMLw1ot6282t3lm3CV5pUd60rWOwGeDdlK3W4QGzaPOB5Tt/g/G70sVWW
 TKN2M29PhFmhaKe84GLqEjZU/8heekZSIh4NGIfiHKDUqlD7jQkC4vhgsgZtCQbjzF2K
 H8Bz30xeD3Y3NT4dhgL+bgrEu7CKf7tlauNNfBy0ND+EwXf+vJv92bIu8/l2ne0/bwTl
 tpXg==
X-Gm-Message-State: AGi0Pua+3yS8iAHRuZ6DFy4M1WLqEuEaBXuO2HE2j+BCG2zTdBxQTcEd
 pQz111jUWMFwkp8BSIOBhoU=
X-Google-Smtp-Source: APiQypLbjw45ucXMMdNEze5vzTmLlFY1dYkm9XBnrtS1Rr4KNXzqteQX0stoMFeih45vI8iuRblXRQ==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr3897667wmb.17.1587646091198; 
 Thu, 23 Apr 2020 05:48:11 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f8sm3626512wrm.14.2020.04.23.05.48.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 05:48:10 -0700 (PDT)
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <6cc8ac87-761b-de5d-7104-6f55f419a4d1@gmail.com>
Date: Thu, 23 Apr 2020 14:48:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-8-helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

On 4/3/20 6:15 PM, Helen Koike wrote:
> The Rockchip ISP bindings was moved out of staging.
> Update MAINTAINERS file with the new path.
> 
> Suggested-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - This is a new patch in the series
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d66ac41ef5872..726044b84cf23 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org

L:	linux-rockchip@lists.infradead.org

>  S:	Maintained

>  F:	drivers/staging/media/rkisp1/
> +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Rebase.
The MAINTAINERS document was recently sort.
Check entries with:

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

>  
>  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
