Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28619BF74F
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 19:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 417A581E6F;
	Thu, 26 Sep 2019 17:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-mtR-zWQRkU; Thu, 26 Sep 2019 17:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03B41844D4;
	Thu, 26 Sep 2019 17:04:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18BB91BF326
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14C76862D4
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZSdS8AJTDg1 for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 17:04:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF9B38629C
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 17:04:08 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id k9so2732016oib.7
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 10:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D+LB+cTP0kzVzafxVlKyUQOuNnEa52qRrfQZbeKZv2U=;
 b=eekWS5lE0DEQysy5LMYTYo7Y0ZzMtbnZiPmwZTS4naNU+utBj+QKWIesS1sNHebz6W
 kiPm4JsvCkwRxJ2Qyp+XfYRj48qNx2zCp3yheawU2JYak4QWtngTLpOG/3Lkwu2YhCbF
 WB3UkEQgqgFLdo8jgBvozlHLJb95vk9wWFd/PX800jxDsF4haTrd4K0kr5wmw2DjObP6
 fqcSFjSxNFzq160Z4l4LyEXMOtnw3zrnw1PcLcHuCUY+8kWAzksCTIXjgg1eIUWvDR4f
 VT+CfYzsfVOCnnT/UCNPHvkgRNCyyPP46gerUwmi1lgxfsoIysvW1I6HaX0RTNz+RVP/
 upRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D+LB+cTP0kzVzafxVlKyUQOuNnEa52qRrfQZbeKZv2U=;
 b=m9hze/Eos05GIvUfL+gTFeU0GP7PC5oLjq/tm04xUr4lK+80A3MoUeLIc6Gov+ysJo
 xizYfOTbHgSUGWtnNML4fEsKHWLfFS3xZsMF72u8LunovLefszso5Tk1nrUTkZxFkgGJ
 6ktce4e4HdyisVHynqDZLg14/OZkMoNsMU9WAMkjUG/KxHsStInquLhjlOQnHJvGWbnr
 KD7UDeb0CKclmWdnk6icaxAeaNHlzksEpT5hIR/mJcHTcoJwwumufBDq0UF0cMCXiS6R
 310vEagv/p12NNaUikc2W0liOFokaUIcpvr/UF14am0/HSsrLMLRCZC2y9m5cTynNfgC
 Os3g==
X-Gm-Message-State: APjAAAVSQSrJsnlMJsOALUJK56ScKUXgoZMlzpFym2KmmqhPrKXO/uUk
 QsvOIfifZQjV6nk2vdIcC1U=
X-Google-Smtp-Source: APXvYqywEhZq0Xx3WldtoPkbK7Ztka7DxSjmPgb7/bZ+Y4ZuXoDcNgiezqv9mvFy9PUMLzLL8ENXjQ==
X-Received: by 2002:aca:c505:: with SMTP id v5mr3284814oif.79.1569517447893;
 Thu, 26 Sep 2019 10:04:07 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id y16sm803729otg.7.2019.09.26.10.04.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 10:04:06 -0700 (PDT)
Subject: Re: [PATCH v2] staging: rtl8188eu: fix possible null dereference
To: Connor Kuehl <connor.kuehl@canonical.com>, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190926150317.5894-1-connor.kuehl@canonical.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <c0601b1f-9366-fbc7-7da8-9b00df94483a@lwfinger.net>
Date: Thu, 26 Sep 2019 12:04:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190926150317.5894-1-connor.kuehl@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/26/19 10:03 AM, Connor Kuehl wrote:
> Inside a nested 'else' block at the beginning of this function is a
> call that assigns 'psta' to the return value of 'rtw_get_stainfo()'.
> If 'rtw_get_stainfo()' returns NULL and the flow of control reaches
> the 'else if' where 'psta' is dereferenced, then we will dereference
> a NULL pointer.
> 
> Fix this by checking if 'psta' is not NULL before reading its
> 'psta->qos_option' data member.
> 
> Addresses-Coverity: ("Dereference null return value")
> 
> Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
> ---
> v1 -> v2:
>    - Add the same null check to line 779
> 
>   drivers/staging/rtl8188eu/core/rtw_xmit.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 952f2ab51347..c37591657bac 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -776,7 +776,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
>   			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv), ETH_ALEN);
>   			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
>   
> -			if (psta->qos_option)
> +			if (psta && psta->qos_option)
>   				qos_option = true;
>   		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
>   			   check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
> @@ -784,7 +784,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
>   			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
>   			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv), ETH_ALEN);
>   
> -			if (psta->qos_option)
> +			if (psta && psta->qos_option)
>   				qos_option = true;
>   		} else {
>   			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
> 

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
