Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7448F32819E
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 16:00:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C96E1606D6;
	Mon,  1 Mar 2021 15:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5R5O0DOGm7K; Mon,  1 Mar 2021 15:00:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0DDC606BB;
	Mon,  1 Mar 2021 15:00:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D88A1BF361
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D2144EC7E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xzu2MVMV4vEm for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 15:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 468054F10F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 15:00:22 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id m22so25994455lfg.5
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 07:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IrzebvTFKgqD1tEnWXGRgClheSsS2AvJ2cizyO92Q7g=;
 b=tPBHPdC2st5V/ZjCPpdqeAQRpeqdrlsXgyoBL3vJpGh87+z8lk5CRakeszVcUImKWv
 SFaKEObjZj99ZHNrO9oQxxCyu7MIRf5B8PeseceutXWhMuosT31g13torDZzEeZLIZkA
 Jp5u1AF2UzHfcPaXbubskirJ76pWR24ZkzzhoE9ls6NuWnEfyH6gdVqnJRy+XpJ9rYuM
 x5t7gjUZdMT3lV6/tcwaITNk/pj6ONw/V+HQsNuWWC4ZnEKcGAlL8cySG081h5vD4pRK
 xatH3zInlW3qxOQTntZsa71Mb7jK1zEXEuzBH6lmaR+lmcEUwtHToH9Ml4FmmcRoK45r
 32nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IrzebvTFKgqD1tEnWXGRgClheSsS2AvJ2cizyO92Q7g=;
 b=B4CuBJNsoANQPqf5HGyQndq/iGOmrzBFhC9zgBzbLJSUQWM8sIH7TP67DJY9ouqAUh
 N3aMSW79Gumu+SjpWwSMenX2O8twJvCoFeC0+XkKxARMlWooGXBZL7+zfL5bZW97dNZj
 BVWTHkItr/COYmhfsLxbMh/k7hZn20y8yG8zt+Of5Dh719tvc/M0Bzu+DDoyHxpxjX5g
 V5FQBG/jPZCMEPhDcTg+PeGuN5V83uQtyhRcQXFs7L1wSNK649WkQ6GO99JHomSBJPke
 +TlQ1rrZrxvpWUUUc8hIberLjVRPu+qW3/K4hqFL+eJQC55IiMJ/j63DzaNKIUbbz5cf
 noMw==
X-Gm-Message-State: AOAM532e3jYQDznaWopoPuR7nNCpl4aR7O3i9BVQquHuQaGERboxPV1i
 QB/gFwhtB4wxiYceiF1XtCgMcg5JAoJo
X-Google-Smtp-Source: ABdhPJz59QsT0L0/Jr2yvfSeGMnWaP302oyghcZzN4YnBYvZUvG52gkuWU1Q1pIQKQLCRopWi/r6vQ==
X-Received: by 2002:a19:6c6:: with SMTP id 189mr10262643lfg.426.1614610819816; 
 Mon, 01 Mar 2021 07:00:19 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id b14sm2470377lji.120.2021.03.01.07.00.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:00:19 -0800 (PST)
Date: Mon, 1 Mar 2021 22:00:11 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 3/3] staging: rtl8723bs: os_dep: Replace sprintf with
 scnprintf
Message-ID: <d76c5f1db8dbf02ac0ab954b0971ce24e5a8b9bd.1614610197.git.cfebriyanto@gmail.com>
References: <cover.1614610197.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614610197.git.cfebriyanto@gmail.com>
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
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, hdegoede@redhat.com
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
Changed since V1:
 - Dan Carpenter: assign the return value of scnprintf to the length
   variable instead of calling strlen

 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 23 +++++++++----------
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 ++---
 2 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 41389e266f54..78ba2423ed65 100644
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
@@ -365,17 +367,16 @@ static char *translate_scan(struct adapter *padapter,
 
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
 		memset(&iwe, 0, sizeof(iwe));
 		iwe.cmd = IWEVCUSTOM;
-		iwe.u.data.length = strlen(buf);
+		iwe.u.data.length = scnprintf(buf, MAX_WPA_IE_LEN, "fm =%02X%02X", pos[1], pos[0]);
 		start = iwe_stream_add_point(info, start, stop, &iwe, buf);
 		kfree(buf);
 	}
@@ -5082,8 +5083,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		case IW_PRIV_TYPE_BYTE:
 			/* Display args */
 			for (j = 0; j < n; j++) {
-				sprintf(str, "%d  ", extra[j]);
-				len = strlen(str);
+				len = scnprintf(str, sizeof(str), "%d  ", extra[j]);
 				output_len = strlen(output);
 				if ((output_len + len + 1) > 4096) {
 					err = -E2BIG;
@@ -5096,8 +5096,7 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		case IW_PRIV_TYPE_INT:
 			/* Display args */
 			for (j = 0; j < n; j++) {
-				sprintf(str, "%d  ", ((__s32 *)extra)[j]);
-				len = strlen(str);
+				len = scnprintf(str, sizeof(str), "%d  ", ((__s32 *)extra)[j]);
 				output_len = strlen(output);
 				if ((output_len + len + 1) > 4096) {
 					err = -E2BIG;
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
