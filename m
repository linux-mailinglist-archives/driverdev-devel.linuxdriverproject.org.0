Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8AA327F24
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:14:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14DD04F256;
	Mon,  1 Mar 2021 13:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nSNOTYxc5Xea; Mon,  1 Mar 2021 13:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6C724EC99;
	Mon,  1 Mar 2021 13:14:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0B851BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFDA960659
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOa8qqqKKBkW for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:14:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0BAA60640
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:14:01 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id r5so11443055pfh.13
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FkzCq0554O1sdNYGrimVegsqZ4+zMMBk0iuCRddH0b0=;
 b=D6M/hinLwFWa0bn65Khyf0wYLzYjg3jcJudgl7esgJgva/fuEHKLTtEfcGvqZp6PCg
 JWdSApY7YqvlhmRUJqLgfqjHAaeafp9TClOTp0Wb6Kce0P1TW2grD0jEbeGCgAx8/rHX
 RyXvZkK2TBAc253vY37NCPOcjVs4UgmoVcU4YWH1Ru5zaapHVa4aEA2d2ldkiFKfACsu
 yt2dE6koFR2r5Eev24m1Af1gY78FrKFwFxTwpfcoUo0hZCKO6R2MHVkUyMInLhEqUbQJ
 88XQDJRVzWBeJAD7KsSZZE/stqICj950q4h9nCUYrxJws6B/0JpfTukufsvwWK2mA3Zb
 ld8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FkzCq0554O1sdNYGrimVegsqZ4+zMMBk0iuCRddH0b0=;
 b=RIhoqLIO7GEiDO989WiBmwTZcxcliIyiwFw7ckuYamPUBKpfTPTwO7h0OSDAtYo8j4
 iVQDpPl6V3wZI8C1JBdx/VfDx2ETgag5VUV6kwfkDKV5j8/PV2jxvBGUQYW9BBW3iyE5
 m4pfH+BsdwiSiqD7flFQG8EovfKt5Fcw2TbKSaRQOV8s5dWqQiofZUva9v1KEsJ//9fi
 5fJdgtGPJnVbtk6nT2lyEhnK+tIMEk58VPIrOm3TqbrqHwDXf6rY5m5NwJ8Q37d4xeHF
 FGFhkxq+OOJexEkCPKSkc+d8Qc79RlBT7dD6UtCjlohEK1oRP304sAzqrul9hVJ6FnYs
 G88Q==
X-Gm-Message-State: AOAM530T89uBr+kYS5at/NYDZ6TXgCB1IpfWXEogZVhkUdHP7udmb7VT
 y+6qqebK/pzwGFAwfFhrJw==
X-Google-Smtp-Source: ABdhPJyc6oEAnI28FulRqITPh6tILV/pyh9uDu5IPy06hWlMLjPsdXdBDx75aEwHanyErtwsyrHmNg==
X-Received: by 2002:aa7:9486:0:b029:1ed:d077:d574 with SMTP id
 z6-20020aa794860000b02901edd077d574mr15371056pfk.32.1614604441241; 
 Mon, 01 Mar 2021 05:14:01 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id e8sm14125671pfl.101.2021.03.01.05.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 05:14:01 -0800 (PST)
Date: Mon, 1 Mar 2021 20:13:54 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: [PATCH 3/3] staging: rtl8723bs: os_dep: Replace sprintf with scnprintf
Message-ID: <502b559ee7d6a2736f10d8228002ac7780243cd1.1614603705.git.cfebriyanto@gmail.com>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614603705.git.cfebriyanto@gmail.com>
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

The use of sprintf with format string here means that there is a risk
that the writes will go out of bounds, replace it with scnprintf.

In one block of the translate_scan function sprintf is only called once
(it's not being used to concatenate strings) so there is no need to keep
the pointer "p", remove it.

Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 20 ++++++++++---------
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 +++---
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 41389e266f54..0bc3585d7097 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -240,9 +240,10 @@ static char *translate_scan(struct adapter *padapter,
 			return start;
 		if (wpa_len > 0) {
 			p = buf;
-			p += sprintf(p, "wpa_ie =");
+			p += scnprintf(p, (MAX_WPA_IE_LEN * 2) - (p - buf), "wpa_ie =");
 			for (i = 0; i < wpa_len; i++)
-				p += sprintf(p, "%02x", wpa_ie[i]);
+				p += scnprintf(p, (MAX_WPA_IE_LEN * 2) - (p - buf),
+						"%02x", wpa_ie[i]);
 
 			if (wpa_len > 100) {
 				printk("-----------------Len %d----------------\n", wpa_len);
@@ -265,9 +266,10 @@ static char *translate_scan(struct adapter *padapter,
 		if (rsn_len > 0) {
 			p = buf;
 			memset(buf, 0, MAX_WPA_IE_LEN*2);
-			p += sprintf(p, "rsn_ie =");
+			p += scnprintf(p, (MAX_WPA_IE_LEN * 2) - (p - buf), "rsn_ie =");
 			for (i = 0; i < rsn_len; i++)
-				p += sprintf(p, "%02x", rsn_ie[i]);
+				p += scnprintf(p, (MAX_WPA_IE_LEN * 2) - (p - buf),
+						"%02x", rsn_ie[i]);
 			memset(&iwe, 0, sizeof(iwe));
 			iwe.cmd = IWEVCUSTOM;
 			iwe.u.data.length = strlen(buf);
@@ -365,14 +367,14 @@ static char *translate_scan(struct adapter *padapter,
 
 	{
 		u8 *buf;
-		u8 *p, *pos;
+		u8 *pos;
 
 		buf = kzalloc(MAX_WPA_IE_LEN, GFP_ATOMIC);
 		if (!buf)
 			goto exit;
-		p = buf;
+
 		pos = pnetwork->network.Reserved;
-		p += sprintf(p, "fm =%02X%02X", pos[1], pos[0]);
+		scnprintf(buf, MAX_WPA_IE_LEN, "fm =%02X%02X", pos[1], pos[0]);
 		memset(&iwe, 0, sizeof(iwe));
 		iwe.cmd = IWEVCUSTOM;
 		iwe.u.data.length = strlen(buf);
@@ -5082,7 +5084,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		case IW_PRIV_TYPE_BYTE:
 			/* Display args */
 			for (j = 0; j < n; j++) {
-				sprintf(str, "%d  ", extra[j]);
+				scnprintf(str, sizeof(str), "%d  ", extra[j]);
 				len = strlen(str);
 				output_len = strlen(output);
 				if ((output_len + len + 1) > 4096) {
@@ -5096,7 +5098,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		case IW_PRIV_TYPE_INT:
 			/* Display args */
 			for (j = 0; j < n; j++) {
-				sprintf(str, "%d  ", ((__s32 *)extra)[j]);
+				scnprintf(str, sizeof(str), "%d  ", ((__s32 *)extra)[j]);
 				len = strlen(str);
 				output_len = strlen(output);
 				if ((output_len + len + 1) > 4096) {
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index d46c65ab384b..20899b2cff43 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -159,15 +159,15 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 		}
 		p = buff;
 
-		p += sprintf(p, "ASSOCINFO(ReqIEs =");
+		p += scnprintf(p, IW_CUSTOM_MAX - (p - buff), "ASSOCINFO(ReqIEs =");
 
 		len = sec_ie[1] + 2;
 		len = (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
 
 		for (i = 0; i < len; i++)
-			p += sprintf(p, "%02x", sec_ie[i]);
+			p += scnprintf(p, IW_CUSTOM_MAX - (p - buff), "%02x", sec_ie[i]);
 
-		p += sprintf(p, ")");
+		p += scnprintf(p, IW_CUSTOM_MAX - (p - buff), ")");
 
 		memset(&wrqu, 0, sizeof(wrqu));
 
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
