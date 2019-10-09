Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB45D0B57
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 11:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C017F864E6;
	Wed,  9 Oct 2019 09:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Redhb0ZuevQK; Wed,  9 Oct 2019 09:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07A598625E;
	Wed,  9 Oct 2019 09:35:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A56561BF404
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FEBC227A0
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTy9CH4gUCfh for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 09:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 3106A214EC
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 09:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570613737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wIiSU13TZ9jZ/7OA/RD49mIlEHsSk7raamqZN0rBDDk=;
 b=E/1OMMUuOzElkBnJiAfN4juycfEMlbX9OPxGO0axzktLaGZdo4PXPTq5I5NaWiClAAoLQA
 OQJ0NZOQMZ5e6JUU7FiLKZZFdw7PK9h+m9DUC/yaYPkk3ewpXz5nqSX5NmAfL340ckXyfH
 Kdlpo4rdzp9ndU+Vs8Z73+m9sC6blrg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-FBd8nEsoOYW-echf8A6vlg-1; Wed, 09 Oct 2019 05:35:35 -0400
Received: by mail-ed1-f72.google.com with SMTP id p55so1027270edc.5
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 02:35:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m+EOjV/VuUDotBWP2JnVujV9Hl44RjnHb49OdTmGiVo=;
 b=Mxjeq5iYd42YnFdxmWUGb6vjqK/8Ye3WFy/wqaN3Krj+FUrTOrlCvWxzLCsbP9vtPV
 cfMQqkRa9dFCbOVqbSuEPwynz5tD5PcyQeZuF3gZ/i9/W/cCMazg8jB1jpRzyxXvC/tX
 Q8zqxJKs1eU4xtTGQk89Fhh32bmJ2RrLZp991CRuwE09pYIPVWC0Hvr6OrJKphrpL9nM
 PkdTGGFLubjF9jvTICQht3yI6hUDiBYuP+5inVruLrz/i8yPeg9lagsy5NJJZShBnNwh
 H6OXIoHM4eCiQ+PEiRjqOG02DvJAdLQilV0br8Qm36Ct9ToxB6Qqpn37gXPNSFA3ERwf
 OVVw==
X-Gm-Message-State: APjAAAVsFqOqiy6eYtiVW7RN8HRx5/MeuqErKP+zOuzHq/Q0X2ZtuEJZ
 A/h2XdFDo5Ss26blAJ7zsPsbv/h9vGTuMevPrMZyWg0/DcNnhM0uBt8/BixWBpmWHzQvKXzCmyP
 otgthpQbAHHLXeitOw7cpig==
X-Received: by 2002:a05:6402:88d:: with SMTP id
 e13mr1973739edy.246.1570613734720; 
 Wed, 09 Oct 2019 02:35:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZmm9V3I2YhZskIm1cKbboIQy+yXFRdaHYKIvjJsZB5tj/g9zi5Ehci5uDueRmNCpIZouewQ==
X-Received: by 2002:a05:6402:88d:: with SMTP id
 e13mr1973726edy.246.1570613734526; 
 Wed, 09 Oct 2019 02:35:34 -0700 (PDT)
Received: from shalem.localdomain
 (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c14:2800:ec23:a060:24d5:2453])
 by smtp.gmail.com with ESMTPSA id l7sm271377edv.84.2019.10.09.02.35.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 02:35:33 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
To: Denis Efremov <efremov@linux.com>, devel@driverdev.osuosl.org
References: <20190930110141.29271-1-efremov@linux.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <94af475e-dd7a-6066-146a-30a9915cd325@redhat.com>
Date: Wed, 9 Oct 2019 11:35:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190930110141.29271-1-efremov@linux.com>
Content-Language: en-US
X-MC-Unique: FBd8nEsoOYW-echf8A6vlg-1
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
Cc: Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Denis,

On 30-09-2019 13:01, Denis Efremov wrote:
> memcpy() in phy_ConfigBBWithParaFile() and PHY_ConfigRFWithParaFile() is
> called with "src == NULL && len == 0". This is an undefined behavior.
> Moreover this if pre-condition "pBufLen && (*pBufLen == 0) && !pBuf"
> is constantly false because it is a nested if in the else brach, i.e.,
> "if (cond) { ... } else { if (cond) {...} }". This patch alters the
> if condition to check "pBufLen && pBuf" pointers are not NULL.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Bastien Nocera <hadess@hadess.net>
> Cc: Larry Finger <Larry.Finger@lwfinger.net>
> Cc: Jes Sorensen <jes.sorensen@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Denis Efremov <efremov@linux.com>
> ---
> Not tested. I don't have the hardware. The fix is based on my guess.

Thsnk you for your patch.

So I've been doing some digging and this code normally never executes.

For this to execute the user would need to change the rtw_load_phy_file module
param from its default of 0x44 (LOAD_BB_PG_PARA_FILE | LOAD_RF_TXPWR_LMT_PARA_FILE)
to something which includes 0x02 (LOAD_BB_PARA_FILE) as mask.

And even with that param set for this code to actually do something /
for pBuf to ever not be NULL the following conditions would have to
be true:

1) Set the rtw_load_phy_file module param from its default of
    0x44 (LOAD_BB_PG_PARA_FILE | LOAD_RF_TXPWR_LMT_PARA_FILE) to something
    which includes 0x02 as mask; and
2) Set rtw_phy_file_path module parameter to say "/lib/firmware/"; and
3) Store a /lib/firmware/rtl8723b/PHY_REG.txt file in the expected format.

So I've come to the conclusion that all the phy_Config*WithParaFile functions
(and a bunch of stuff they use) can be removed.

I will prepare and submit a patch for this.

Regards,

Hans



> 
>   drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> index 6539bee9b5ba..0902dc3c1825 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
> @@ -2320,7 +2320,7 @@ int phy_ConfigBBWithParaFile(
>   			}
>   		}
>   	} else {
> -		if (pBufLen && (*pBufLen == 0) && !pBuf) {
> +		if (pBufLen && pBuf) {
>   			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
>   			rtStatus = _SUCCESS;
>   		} else
> @@ -2752,7 +2752,7 @@ int PHY_ConfigRFWithParaFile(
>   			}
>   		}
>   	} else {
> -		if (pBufLen && (*pBufLen == 0) && !pBuf) {
> +		if (pBufLen && pBuf) {
>   			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
>   			rtStatus = _SUCCESS;
>   		} else
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
