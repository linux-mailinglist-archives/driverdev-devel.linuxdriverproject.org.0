Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C81A62CFFBE
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 00:26:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 050B78747D;
	Sat,  5 Dec 2020 23:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBMWYL_uoISV; Sat,  5 Dec 2020 23:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74114862FC;
	Sat,  5 Dec 2020 23:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2057A1BF361
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AD5A86D58
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXQzjg1Kc8m4 for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 23:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4572186D21
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 23:26:17 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id y9so8774120ilb.0
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 15:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RU6EFQh1S/6AkxZgPu0ztIFG6U3Ch6OfhisIOPgc61w=;
 b=JZATfjc5+bZSQ2pHbP41E8SH3FsKWqyknaXfVinZ6EZZ0RqyMADdhfd28BT9xFFYml
 y9aOpyrCh27N+aWuRXgE8eCXr1Va2gfhhoOAHrvT4ZMiGZXigYcUbp3kHB6B5n55FgpT
 ecfgiNAqPx9PVBpZYExjh1MEpx+EGlVpuI43Bbbro45V0VLq6tt8JYzxt+nxlVqWyYD5
 DRwlDMBSs2wBrj5J54qHF9zDC9gSoYcQ1qpGz5veO7cWSkBFiYKzTMmXiUtN/z5OsW9u
 XZY8Tjds6xsmwbNohzoQAk+YqQospx4r7nJRj6vrOI1hhE6hhzEIusyHbgu9fYWJnstY
 C/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RU6EFQh1S/6AkxZgPu0ztIFG6U3Ch6OfhisIOPgc61w=;
 b=F9F2QZbEyGB15tRwFa93by6xwJHDeHvFYIflme5OyvWyLpZFHkOw+4aOcbkUgXuR7u
 BkBp7l3N8yGfeKa3dwFgrwjWw0IawCkOe4KF3r3C5hJxbzIpqOMuorZAlz9W0z/+FGwG
 HXFc6esUnef2AOEXhEVFOTB0UpZnda90jv8LmdFh2CtbYPC1hMm6DoXy5kSNGyWcNXal
 Kay/g7MyFhO+bZqkaITFQzgjC+AkpA1yzCmEr/gNGcM/LcopwQiysGGtiQ7SJZo7LJLW
 PQIdciuE9rouezm5jUjdR3SjV38tptph9irD6i3U0/fsbdqs3SPtW7MrGzlrvNaMOa+K
 V+9g==
X-Gm-Message-State: AOAM533NvknxiZOoBgOsU5pBuqhzwczdGYLrWfU2QI7q2PPC8JtQk8EW
 71AyYQph3UmjdnYoFIjZfI8=
X-Google-Smtp-Source: ABdhPJwIExGoL+a+lQWGWftrdZkw+iCsntqk+eoxs10iT7WVj5gpvAjBJqmPiftuEmmffYnWUzGyAw==
X-Received: by 2002:a05:6e02:e8e:: with SMTP id
 t14mr12758873ilj.207.1607210776474; 
 Sat, 05 Dec 2020 15:26:16 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id r3sm4245582ilt.76.2020.12.05.15.26.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 15:26:15 -0800 (PST)
Date: Sat, 5 Dec 2020 17:26:13 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, ross.schm.dev@gmail.com, vkor@vkten.in,
 dan.carpenter@oracle.com, pterjan@google.com, amarjargal16@gmail.com
Subject: [PATCH 2/2] Staging: rtl8723bs/core: fix brace coding style issue
Message-ID: <8ddd195a246696e9315dacfcce06b7ba7f9d7d1a.1607209336.git.matthew.v.deangelis@gmail.com>
References: <cover.1607209336.git.matthew.v.deangelis@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1607209336.git.matthew.v.deangelis@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary braces identified by checkpatch.pl at lines 740,
1039,1602,1922,1939.

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index ce8484e0e5b9..b95d31fc8413 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -745,9 +745,8 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 
 	padapter->mlmepriv.LinkDetectInfo.NumRxOkInPeriod++;
 
-	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst))) {
+	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst)))
 		padapter->mlmepriv.LinkDetectInfo.NumRxUnicastOkInPeriod++;
-	}
 
 	if (sta)
 		psta = sta;
@@ -1033,9 +1032,8 @@ sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 
 		process_pwrbit_data(adapter, precv_frame);
 
-		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
+		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
 			process_wmmps_data(adapter, precv_frame);
-		}
 
 		if (GetFrameSubType(ptr) & BIT(6)) {
 			/* No data, will not indicate to upper layer, temporily count it here */
@@ -1596,9 +1594,8 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	u8 *ptr = get_recvframe_data(precvframe) ; /*  point to frame_ctrl field */
 	struct rx_pkt_attrib *pattrib = &precvframe->u.hdr.attrib;
 
-	if (pattrib->encrypt) {
+	if (pattrib->encrypt)
 		recvframe_pull_tail(precvframe, pattrib->icv_len);
-	}
 
 	psnap = (struct ieee80211_snap_hdr	*)(ptr+pattrib->hdrlen + pattrib->iv_len);
 	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
@@ -1916,9 +1913,8 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 		a_len -= nSubframe_Length;
 		if (a_len != 0) {
 			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
-			if (padding_len == 4) {
+			if (padding_len == 4)
 				padding_len = 0;
-			}
 
 			if (a_len < padding_len) {
 				DBG_871X("ParseSubframe(): a_len < padding_len !\n");
@@ -1933,9 +1929,8 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 		sub_pkt = subframes[i];
 
 		/* Indicate the packets to upper layer */
-		if (sub_pkt) {
+		if (sub_pkt)
 			rtw_os_recv_indicate_pkt(padapter, sub_pkt, &prframe->u.hdr.attrib);
-		}
 	}
 
 	prframe->u.hdr.len = 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
