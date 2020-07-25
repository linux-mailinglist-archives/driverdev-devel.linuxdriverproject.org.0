Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 760D122D90E
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 19:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E237868FB;
	Sat, 25 Jul 2020 17:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUhjuVsNS4Tj; Sat, 25 Jul 2020 17:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60BB3861DD;
	Sat, 25 Jul 2020 17:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE9491BF5DC
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 17:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4A58861F1
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 17:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DrrZjzfjuyE1 for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 17:47:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C3E8E861DD
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 17:47:50 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id t4so10856638oij.9
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 10:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4lhtu1K0BG/0jHhz2IEgTy/+M32YSdppT7D+/e/UP+U=;
 b=ZmPtqyfgTDS+F2G9Ns7dqDGIfPhORumtj+B5J8LnYD00rv9Su4jkc+VxuCFoZqTtL9
 Uyap2jFduODRUPm6IOglt30oMSnCrfagIPghJiPo03SWJwGZrts+cYt1w/Iwt5qROpTZ
 m7+JQEcQFM4T+nTTP+DmMspcHVPmmap38udSTXzahDyqpDz47MBMagTLxmKRJQ3M5AnX
 EeIk0kJi6FvDVoKIJUMwdxhMbitvU5IeIaXFLDE9T+JB/08QlGaEpcsdA6Nnqc+s2j++
 YLGGPU2XpZyLX+yzmP3sX5eptl3u0UoZ/ZctvJgSYEW+rPAGiet+FAWlBYv6doKx8wQ1
 lPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4lhtu1K0BG/0jHhz2IEgTy/+M32YSdppT7D+/e/UP+U=;
 b=RrO7gG6pIioldKuB94aw65C/2AnkNpc/OFDyxXs3s+o2OapkLhisY2Ny9Qj+2zZZ3q
 kP1dx78XX2BUNNa3C+X1xUi3d+fxiV5X1S0rnvo63sdMAxTTh0SOZPUPwoayG1OJwup0
 xhms8/RZofWIpchyZ6Kw13KP4lWOF6yyBrsmvJnwXWNP37Uf4TZ7v6q3Au1/+weMFDH8
 dnZNve7aYoX+0hCU+oVGiHBECsW5Y1BjdLJtmbrc+lWRpNxVMwomTXKdaLWCtIh38+90
 LQ3VFVHIjsJmCQ9zXpd8rBoYve8wzMVhMghabSNpAUnegenvYIrB49h9kzHVlUUQTGfj
 RoNw==
X-Gm-Message-State: AOAM531sa7JeOPigzNXwv2RmkLSSBa3XBcNXRQohTr9AvcUX2DUtzGyQ
 tjbq4bmnUk559F42sFFQWgM=
X-Google-Smtp-Source: ABdhPJwjcJQR+vPB9GPYKs4ugc4uB1N+Xim0+x+S4vy4sqRZza1eFco4CcjKuomuRCZp0OVQ4tQ9kg==
X-Received: by 2002:aca:a814:: with SMTP id r20mr12687639oie.91.1595699269955; 
 Sat, 25 Jul 2020 10:47:49 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id e203sm692119oia.17.2020.07.25.10.47.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 10:47:49 -0700 (PDT)
Subject: Re: [PATCH 1/1] STAGING - REALTEK RTL8188EU DRIVERS: Fix Coding Style
 Error
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
References: <20200725122041.5663-1-anant.thazhemadam@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <aab59eb1-baff-5de1-4e14-88ffc42db1fe@lwfinger.net>
Date: Sat, 25 Jul 2020 12:47:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200725122041.5663-1-anant.thazhemadam@gmail.com>
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
Cc: Merwin Trever Ferrao <merwintf@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Anoop S <anoop.skumar1507@gmail.com>, Joe Perches <joe@perches.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/25/20 7:20 AM, Anant Thazhemadam wrote:
> Running the checkpatch.pl script on the file for which patch was created, the
> following error was found to exist.
> ERROR: space required after that ',' (ctx:VxV)
> 
> Fixed the above error which was found on line #721 by inserting a blank
> space at the appropriate position.
> 
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
>   drivers/staging/rtl8188eu/core/rtw_security.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
> index 21f6652dd69f..57e171d3e48d 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_security.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_security.c
> @@ -718,7 +718,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
>   				res = _FAIL;
>   			}
>   		} else {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
>   			res = _FAIL;
>   		}
>   	}

In fixing one checkpatch.pl condition, you introduced another - the resulting 
line is too long. You should fix only one such condition, but you should fix any 
others that are introduced. You do need to document it.

Patch subjects for this driver should be written as "staging: rtl8188eu: .....".

Larry


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
