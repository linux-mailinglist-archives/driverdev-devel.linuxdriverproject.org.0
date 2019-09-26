Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 269CCBE956
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 02:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EBF986834;
	Thu, 26 Sep 2019 00:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KeKaNhnyvtX2; Thu, 26 Sep 2019 00:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70B95867EC;
	Thu, 26 Sep 2019 00:05:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1902C1BF3F2
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 00:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 158D985F9A
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 00:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JEq1gYGu0jeO for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 00:05:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F12E85F6C
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 00:05:43 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id k32so423241otc.4
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 17:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cLDBlYUmNrPQrO4eVaMtvr6RX8X34auEyuZMhH4LAik=;
 b=UmBs2pc/Zvu6RyHaZ3E3Zph8I97+mpbFMmp0wAhC4XuCt4lrQ4CMSlnMa6oz/VbC0w
 808hdIHq6Qsn3oszdBYWWUIfr8yRYW35NT3/jAFdJKdtx2SDDuB2SGwltamMntDJaqgT
 lUkScSAQYQ+UsLYh8jaFzomkjdgDsKSWWYwlumew6E6ewzbOY1hnBAkKLEBVz/zPMNwI
 anizYEtGwTNmWvPPi8bPqhrtY8Xqup607P5kgu3SeWpl3G/blyzHnQAAbrBhk0+dYqGt
 oAI09pf7ovdOf2mjr6Uevr3SuEY2sVfi1dyefPoERqKTkxBJGTmAKLAWxk821fz7MQdl
 FsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cLDBlYUmNrPQrO4eVaMtvr6RX8X34auEyuZMhH4LAik=;
 b=KZta4HvQx4/4xSxWLLdVvM+iaWVzpRFsSIRuHt8iu7gQFCuWMwfimNbgUN2tqu5Acn
 P1B3u/gjNFSJF2COm7IlJutbP63zP7WnOXrdHc2I7rgn8JkkOwaEP2RxKinLhLR5cH4c
 iLGHcUdyV0uVfE92Zjq6elAGeKg5DeCSUazUXyqRoazhnBKDavGmxtLZo/EIU4asd1Jw
 1W0lrZcoUDCOrpq5vbZ9YdUlA9cVlYzBwwX7DItPmc7JwQVm52pZ3ht4WpOWYn2RYiWk
 xNDAk0H6ufg3Jeyx6HYUfvhkktFLHDgJXRfej/FVBYKWLl50vSeT0PybSUItrbVFVBSa
 RBdg==
X-Gm-Message-State: APjAAAWnGg0xgKIuQBBTsLv3cfFOGKKLqKlbyiiQgOYC3aNg7VQxttM+
 psTf0o4m4FoZnVX/g+sAUjA=
X-Google-Smtp-Source: APXvYqzKvmb5CmGQHuVV4hwjbageKrnNRU1k6G4PjsXBsHySHIWs6PSbzG/elNsMEYgii2B8aTgxQg==
X-Received: by 2002:a05:6830:4a5:: with SMTP id
 l5mr553245otd.150.1569456342282; 
 Wed, 25 Sep 2019 17:05:42 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id k34sm108144otk.51.2019.09.25.17.05.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 17:05:41 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: fix possible null dereference
To: Connor Kuehl <connor.kuehl@canonical.com>, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190925213215.25082-1-connor.kuehl@canonical.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <b725820f-525c-519b-4474-476abf004985@lwfinger.net>
Date: Wed, 25 Sep 2019 19:05:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190925213215.25082-1-connor.kuehl@canonical.com>
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

On 9/25/19 4:32 PM, Connor Kuehl wrote:
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
>   drivers/staging/rtl8188eu/core/rtw_xmit.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 952f2ab51347..bf8877cbe9b6 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
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

This change is a good one, but why not get the same fix at line 779?

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
