Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE35331C7EA
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 10:20:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F7D6870FB;
	Tue, 16 Feb 2021 09:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ndw98IkJuyC5; Tue, 16 Feb 2021 09:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D98DA86FF9;
	Tue, 16 Feb 2021 09:20:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C31931BF285
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BFD40855A1
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CBxINQ06nX-u for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 09:20:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16C348553B
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 09:20:32 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id v15so12079192wrx.4
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 01:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y41IhIT5rmyhijmxjT00xgQ2ngQOKXy/8+FZLhjS7GU=;
 b=PxauwfY1W0W8GqfSltTB89uf6BjLJooazi+FICLO0MYpouhyA0zCMNy/swKF6XKIoh
 WsaHV9J+g1NdDbZ9mwlZF+9R9q2iEAAVGQYNGmT2dM45p72c9nsJVRHRYZKPWq0G0oA+
 byAQAESeOHqZrMxjphuom8fRhS6b9fVv1OdeHUnEesoP3gb8Y7ZBO4k4N2AjsTxoocgL
 U2gSRuxYygA1CH18shWiRRHx10hdlr2tw6PZKhP3WdsEa+j0F7dT1YRG6V1q6R7QFFqy
 O3sbFg2uteZhZTzQvmOQlc9ejWpPs+SRndc/kWh0MeRlQ3iK8Sx+g/OHjazrikiPC6po
 deLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y41IhIT5rmyhijmxjT00xgQ2ngQOKXy/8+FZLhjS7GU=;
 b=tdu80Q9OW6GvD8Pd+lncs9+kE2ZoVNr5Ioav/2/2cXSH/ffMIUgf3pHikWkvoBWq8F
 iDXfWBzPbIBmBdmlw/jbnLf3evSiC92wHxHi4XjCyDiMkliFK7nlaJ35Fc4oQvkSs4lT
 TvTFA3QrOPd1ZUr/SvCFx5oVkCdD4I4Y6G9InQLVx31m1Bx1LgBY3eVDklrJE/jT30OP
 qrO32TId093EkXEpdSCqe+LU8PybsGSBwhbQ9SsSlkCbh8Bco9idwhzSr/Ls35W6UPSE
 UQU/czGEi7Rg2WYN+S+IZwpss7PElpaYV7GOfAIJHlX/MJ7a0Vn944KyyTaB6+uMTQh7
 zSkg==
X-Gm-Message-State: AOAM533L6sSO7Hz/ex75rHB6f0g2Tme6uG9NVcSdCqJ7XWtjCjnfHC01
 YLSE02yRQDZ88ZhOVmIqxBc=
X-Google-Smtp-Source: ABdhPJw8rKubCzEnbeZl2jrx0DqZqg91MIvyR1rs/pdj5gKareeA2mPpfeRZmBDxtI2dC5k3rnMMiw==
X-Received: by 2002:adf:dcd2:: with SMTP id x18mr22981959wrm.355.1613467230465; 
 Tue, 16 Feb 2021 01:20:30 -0800 (PST)
Received: from ?IPv6:2003:ea:8f39:5b00:ac39:e452:593c:61b5?
 (p200300ea8f395b00ac39e452593c61b5.dip0.t-ipconnect.de.
 [2003:ea:8f39:5b00:ac39:e452:593c:61b5])
 by smtp.googlemail.com with ESMTPSA id w9sm2651356wmk.16.2021.02.16.01.20.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Feb 2021 01:20:30 -0800 (PST)
Subject: Re: [PATCH v3] staging: fix coding style in
 driver/staging/qlge/qlge_main.c
To: Du Cheng <ducheng2@gmail.com>, Manish Chopra <manishc@marvell.com>
References: <20210216085326.178912-1-ducheng2@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <f9f2ed25-8903-450b-0971-a5eb292380cf@gmail.com>
Date: Tue, 16 Feb 2021 10:20:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210216085326.178912-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 16.02.2021 09:53, Du Cheng wrote:
> align * in block comments on each line
> 
> changes v3:
> - add SUBSYSTEM in subject line
> - add explanation to past version of this patch
> 
> changes v2:
> - move closing of comment to the same line
> 
> changes v1:
> - align * in block comments
> 
> Signed-off-by: Du Cheng <ducheng2@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 5516be3af898..2682a0e474bd 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -3815,8 +3815,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
>  
>  	qlge_tx_ring_clean(qdev);
>  
> -	/* Call netif_napi_del() from common point.
> -	*/
> +	/* Call netif_napi_del() from common point. */
>  	for (i = 0; i < qdev->rss_ring_count; i++)
>  		netif_napi_del(&qdev->rx_ring[i].napi);
>  
> 
Typically such trivial patches aren't much appreciated for staging drivers.
In the case here I have doubts that the comment as such provides any benefit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
