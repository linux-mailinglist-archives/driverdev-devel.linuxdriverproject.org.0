Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC79A807BE
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 20:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 230F387058;
	Sat,  3 Aug 2019 18:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rz6BMESQnrcd; Sat,  3 Aug 2019 18:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3968086D53;
	Sat,  3 Aug 2019 18:31:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4C5E1BF341
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAAA087820
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPLqDR1sx1wL for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 18:31:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A101877FF
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 18:31:04 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z14so427415pga.5
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 11:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=R7k1MGTcs79H0pzygs0dYcyTIeGRtDvx4PgK9+gsSEw=;
 b=E085XEUsMoxLXyGwzdzkpDF+25U+z8E7e1P1/V1fOCZQWrMzNehreLrw5M1UgECXaI
 6r2THyOKZwKh1OAjOgHcRjG7F0ymHwc6QBdduUAQYWc5mSkP+x8bMK0xb1v2B9j8LVKV
 vKl1eqqu9wdPZc06qAWeOARoYa3Cm9dg+sH7PlbzlvHjlpgLv7Sv8YyzSmOO1p8EL9p/
 rYxEW+WVZ7q1rNkDcCez2hogi0ZofSv9DoZY1me69jqHrpuUEsxxl1Ls10Tb3Lw+bImK
 MST/ajvSY1iJVaEw129JrjR2Gf/i/qIhWrT1YeMti57oeLdr3NjRTJ9RDwh5jpIQ73gc
 1YuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=R7k1MGTcs79H0pzygs0dYcyTIeGRtDvx4PgK9+gsSEw=;
 b=gq/cYNBOE4A18/Jgulc8+CrhHPzj4w02wPCyVGkDWCeX8KvwVzQDY4aYTkkRhEAoeR
 TjOk2R1kZv9/ioCvvMm52hC09obfqXlQx+PFKy5dVaJJ5DFQkR0AiEuCfecDkOFvBjxn
 bLCLx8gpF1djh+4+oT3sHqjyOkNE2A5x2RPX/T2AqNelo9j6bWoR++GvzJwd8brdByYv
 f1GZv9fOJeFY3ykovu+nRnrAlx5zSh6NWSYG/U+6NHNkgbwJUG01MFYF+0g8o75Ibatv
 LjVVv05n/241XcisSZIDqj4wC6v2eJm7zA4qNNrScZrnMdNDabv5e3E5YuOZHqQyo/Ij
 d37Q==
X-Gm-Message-State: APjAAAUZBlhifljCM7DyfYUknBbz1dBYyVugK58phXLtVUFFunYR0N70
 M/FeRQC/fgXjS6Ek2KFtgxjuazjs9U8=
X-Google-Smtp-Source: APXvYqzw31+QS/zmCfK7l01tJrTbdK2RW9EsYHSL+7jPFaIPpSYSu0ybGYEFzH75rZtZYkKvqYGsMw==
X-Received: by 2002:a63:61cd:: with SMTP id v196mr2961443pgb.263.1564857063662; 
 Sat, 03 Aug 2019 11:31:03 -0700 (PDT)
Received: from saurav ([123.201.163.103])
 by smtp.gmail.com with ESMTPSA id f15sm12412640pje.17.2019.08.03.11.30.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 11:31:03 -0700 (PDT)
Date: Sun, 4 Aug 2019 00:00:54 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 saurav.girepunje@gmail.com;, jeeeunevans@gmail.com;,
 mamtashukla555@gmail.com;, shobhitkukreti@gmail.com;,
 kimbrownkd@gmail.com;, hardiksingh.k@gmail.com;,
 puranjay12@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: correct spelling mistake in rtw_ap.c
Message-ID: <20190803183051.GA23151@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct spelling mistake in rtw_ap.c

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7bd5c61b055c..78b5782fb675 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -94,7 +94,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		} else {
 			tim_ielen = 0;
 
-			/* calucate head_len */
+			/* calculate head_len */
 			offset = _FIXED_IE_LENGTH_;
 
 			/* get ssid_ie len */
@@ -143,7 +143,7 @@ static void update_BCNTIM(struct adapter *padapter)
 		*dst_ie++ = tim_ielen;
 
 		*dst_ie++ = 0;/* DTIM count */
-		*dst_ie++ = 1;/* DTIM peroid */
+		*dst_ie++ = 1;/* DTIM period */
 
 		if (pstapriv->tim_bitmap&BIT(0))/* for bc/mc frames */
 			*dst_ie++ = BIT(0);/* bitmap ctrl */
@@ -292,7 +292,7 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			if (psta->state & WIFI_SLEEP_STATE) {
 				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
-					/* to check if alive by another methods if staion is at ps mode. */
+					/* to check if alive by another methods if station is at ps mode. */
 					psta->expire_to = pstapriv->expire_to;
 					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
 
@@ -916,7 +916,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
 	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
 
-	/* udpate capability after cur_wireless_mode updated */
+	/* update capability after cur_wireless_mode updated */
 	update_capinfo(
 		padapter,
 		rtw_get_capability((struct wlan_bssid_ex *)pnetwork)
@@ -1015,7 +1015,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		pbss_network->Ssid.SsidLength = ie_len;
 	}
 
-	/* chnnel */
+	/* channel */
 	channel = 0;
 	pbss_network->Configuration.Length = 0;
 	p = rtw_get_ie(
@@ -1827,7 +1827,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 /*
 op_mode
-Set to 0 (HT pure) under the followign conditions
+Set to 0 (HT pure) under the following conditions
 	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
 	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
 Set to 1 (HT non-member protection) if there may be non-HT STAs
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
