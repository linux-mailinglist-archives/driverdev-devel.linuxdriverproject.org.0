Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185753466C2
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 18:50:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 645BF4039E;
	Tue, 23 Mar 2021 17:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cInivw30LJ76; Tue, 23 Mar 2021 17:50:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB0FF400BD;
	Tue, 23 Mar 2021 17:50:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 633591BF9C6
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 17:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46F0A83F02
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 17:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GR3OOJtyvpqh for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 17:50:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A0F983E05
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 17:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=cYs10JHyoH5yneJP4u6+GykhJn1wBKFRR7cwcnvw6Do=; b=GtuOKmEvP5K2FUuiOup0T3CKZ9
 24YJ2Qm/iMTdJSYxmWg/71DkEzbxagYXCwBYCW+u1e9msRuJ6m6eXfwGiFdfKACpa1bXCcQqx9/hQ
 n0/NcNjVcwvSHQBL7nVmyuPoQKdQGV9yG4EeAjeJnrcKG/+UX2H4Dfo01Eo+OFGVnjOBh4iERx0Ht
 KDMlYutRKY7gSLHic4unMobis2RnQqrg47iTrZ+wLIL0xWvkZ/YzL30VLZTUdMd/ZwFKh+xqO/Iey
 QMFJpwtspR0X1f2LVzDuWyrIN0wm7xhDFBIjYS1VG/0Nzkq0E4R2dr9IsOjwtrfF/6bVUaoB9Hs/O
 CFrlq1LA==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lOlAE-00AMiA-V5; Tue, 23 Mar 2021 17:50:06 +0000
Subject: Re: [PATCH V2]staging: rtl8723bs: Trivial typo fix
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, gregkh@linuxfoundation.org,
 ross.schm.dev@gmail.com, yanaijie@huawei.com, amarjargal16@gmail.com,
 matthew.v.deangelis@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20210323092300.1740913-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <118087c5-e4f5-37da-1302-ee8206e9519c@infradead.org>
Date: Tue, 23 Mar 2021 10:49:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210323092300.1740913-1-unixbhaskar@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/23/21 2:23 AM, Bhaskar Chowdhury wrote:
> s/netowrk/network/
> 
> ..and an extra space has removed from the sentence.
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>   Changes from V1:
>   I have missed to remove an extra space in the sentence,
>   corrected,Greg pointed out,thanks.
> 
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 2c9425e2a1e9..562bc929be4c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -599,7 +599,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
>  		}
> 
>  		if (rtw_roam_flags(adapter)) {
> -			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
> +			/* TODO: don't select network in the same ess as oldest if it's new enough*/
>  		}
> 
>  		if (oldest == NULL || time_after(oldest->last_scanned, pnetwork->last_scanned))
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
