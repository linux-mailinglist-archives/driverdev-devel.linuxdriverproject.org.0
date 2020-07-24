Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD4A22CCB0
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 19:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C71288914;
	Fri, 24 Jul 2020 17:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFyafDfY6T+k; Fri, 24 Jul 2020 17:56:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A098C882FD;
	Fri, 24 Jul 2020 17:56:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB221BF3C4
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 17:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99EB887E37
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 17:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sSdVi16hLRj for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 17:56:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBC4C88179
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 17:56:24 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id h1so7598635otq.12
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 10:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=crOELoHuO5UyCHwlOjSs28KQsKC5splMHLSUwDt5LfI=;
 b=WsYsRiGQq/Ne+jIHDnyOUOBwFQMSO8mx0SFa5Iv16nUbj/GxaWT7Oo97hPT3V+8i8E
 6P0QHd/ggEPcUPzWs5wlZmFqABDmPOc2y1onfiJiVNoFIeGDjo+N6AvBm97eWfW3FMrc
 ap8Xb95k9VObNlQB34nanTazZMzARB4pnkCmjmUiEZdMftNaIJ2X3erRf9iF9/e8TkWN
 1PwAUM+dq/TbWBjUpfNAaEd7hHVqv8iQo3Rr+kk1IHG7kW03EFsCE1ppj42sdqT2IPMX
 hZSwl8PKiwcp8gqEyven9Z1+daim39qVhgTxjg951sWWqg/t8T/G5kZe0P7VQaq9R9gB
 kQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=crOELoHuO5UyCHwlOjSs28KQsKC5splMHLSUwDt5LfI=;
 b=LuAjwO0tUtvGKqUaRriT2KkODrq8DfodbkWh7YVY2Dir2T5rA+k7hnR/p9k1Z2pZjw
 +Jnmh92YE2ZEO5JP49DUQdrfDpG79KtY8XMjv1znexdAs0CVIFZBG/qdWIz3cOiJLmlt
 VIEKVRVo6C6hPQMN0OeVTitFwP9joRHebTb4lOipHC8t/53Ufg57qXu9UC5C9U7zVlpB
 Ci4GS1EUuUnjX06kjeqmf7SO04DCNfTDaLZsaa+JRcgjxx2Bx6Su2gGs/VGGPPFJyAwn
 IzYS63tP7y128Sdv5/LPlrojp9TH80kuLPyfqN4avJ+VR6VRUiWapgArOfTdjS3QdmVf
 sFcw==
X-Gm-Message-State: AOAM533S8xDmYiR1HSrx7FBe4vrp1FIA/3+nMG4k5tg7arOpDpqQG08/
 plJHjv6gMZW5xVEjhzqH4Rc=
X-Google-Smtp-Source: ABdhPJzB+ySmpkZQodsm5CaoU4cuc/3IVfPnt5raiqSbjqvrnqiwWCuLSYICKSu1uPDuHLYpsteMxg==
X-Received: by 2002:a9d:5915:: with SMTP id t21mr9702226oth.372.1595613383978; 
 Fri, 24 Jul 2020 10:56:23 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id n7sm1559472ooo.38.2020.07.24.10.56.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 10:56:23 -0700 (PDT)
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable
 authmode
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
 <20200724132836.GC316746@kroah.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <66d9502e-682f-6ccd-ef90-138feee0c2ae@lwfinger.net>
Date: Fri, 24 Jul 2020 12:56:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200724132836.GC316746@kroah.com>
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/24/20 8:28 AM, Dinghao Liu wrote:
> The variable authmode will keep uninitialized if neither if
> statements used to initialize this variable are not triggered.

Besides Greg's comment, you need to re-parse this sentence. I realize that 
English is probably not your first language, but this one is not what you meant.

You likely meant "The variable authmode will remain uninitialized if all 
statements used to initialize this variable are not triggered."

A possible (line-wrapped) patch to quiet the tools would be:

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c 
b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9de2d421f6b1..9e4d78bc9a2e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1729,9 +1729,11 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 
*in_ie, u8 *out_ie, uint in_
         if ((ndisauthmode == Ndis802_11AuthModeWPA) ||
             (ndisauthmode == Ndis802_11AuthModeWPAPSK))
                 authmode = _WPA_IE_ID_;
-       if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
-           (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
+       else if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
+                (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
                 authmode = _WPA2_IE_ID_;
+       else
+               authmode = 0;

         if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
                 memcpy(out_ie + ielength, psecuritypriv->wps_ie, 
psecuritypriv->wps_ie_len);


Yes, in this routine, it would be possible for authmode to not be set; however, 
later code only compares it to either _WPA_IE_ID_ or _WPA2_IE_ID_. It is never 
used in a way that an unset value could make the program flow be different by 
arbitrarily setting the value to zero. Thus your statement "Then authmode may 
contain a garbage value and influence the execution flow of this function." is 
false.

Larry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
