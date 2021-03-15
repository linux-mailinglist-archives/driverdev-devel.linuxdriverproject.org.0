Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B02C433C3D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56B3C4C4BF;
	Mon, 15 Mar 2021 17:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRz_Ylwh7Evt; Mon, 15 Mar 2021 17:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D3374694A;
	Mon, 15 Mar 2021 17:14:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F41A81BF387
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F087F83486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8oFhfTAv1KW for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E83C83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:47 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id dx17so67559264ejb.2
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Tolw+zB7mFh3kEi8VVbHYOd/s3YXKJCd4sfzT6RXuWA=;
 b=eAhB8T/3UTqAedXYuLEZOMKcM5vJWi17ST+MniuoozmAIZybey3vE03tF7EOxUu3Xe
 ZWP8Np8WwsNrsyOzTDAxrwILTIGwoDSRYsuSU1PoPZvXd3J9mXMYFJx6cmFy79hQlX3y
 jwEeEqNRVaF2p0+eS5NeuzWx8rt4/AlXCpwyR+VHNdmZw3Y1Tv3GZiTRYwcesvHSvD5n
 1QFEdi8BEGZzV6lvYxh/3x5QAsZEPdem+tnkAdT6zk1BHI7LU0xuAwyIbwReHplwFfLK
 yhOWIe1nUMIaIVqWBJMN+vx/CdDos8wxgWy4gKYHjHwlD8VDCFPGsbCb2RtRT6K/gcDQ
 5Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tolw+zB7mFh3kEi8VVbHYOd/s3YXKJCd4sfzT6RXuWA=;
 b=GXR+isn2Ke9dP6eQBBiWwqk3ay9Qfngb2ByQyUPJHTV30OYnnJmFe3Mi+RCHS9sYke
 ctqulveI08n7NL3tfC1IfsTQHuzKt8vayFgIYRi/8kWdtRnKFdM5/m5urFgfT37LBkyr
 9Ec3pIb2iLD8Gg9PhLZPpOdpvhhkRsRtaZlX+VwVqV8ZKKN6Kp9iEO2o/Npuxgb1+YLe
 VnISE9z/ZcSYXhundjR75Mafdbm3cbyhBfvVSI+mGGxz5WUQ/Sbn7xobizIGXBn9U2+g
 A8aWIWA23Y/yfa7RM5Q1P0Cv4xPIyFnj5PK6VMbTArchWE4GoYyqSYxSB11mwzwipYHV
 zBRw==
X-Gm-Message-State: AOAM531f8W+PSA2LBiziVZbFosoqKdUWuZNNurjhAiqNvEKPEcUl8L6A
 ZY+TMdYhV5mX22LUxwW550c=
X-Google-Smtp-Source: ABdhPJz9idgqAu1FMJ7CAgwtg8tW2U6fWj8U6zy/4e01bCXsM5FtLvnJtw4A0u9oSUkOSUA2xf+mSQ==
X-Received: by 2002:a17:906:9501:: with SMTP id
 u1mr25154890ejx.324.1615828004218; 
 Mon, 15 Mar 2021 10:06:44 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:43 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 44/57] Staging: rtl8723bs: fix spaces in ieee80211.h
Date: Mon, 15 Mar 2021 18:06:05 +0100
Message-Id: <20210315170618.2566-45-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
MIME-Version: 1.0
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
    #1001: FILE: ./include/ieee80211.h:1001:
    +u8 *rtw_get_ie(u8*pbuf, signed int index, signed int *len, signed int limit);

    ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
    #1029: FILE: ./include/ieee80211.h:1029:
    +	for (ie = (void*)buf; (((u8 *)ie) - ((u8 *)buf) + 1) < buf_len; ie = (void*)(((u8 *)ie) + *(((u8 *)ie)+1) + 2))

    ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
    #1029: FILE: ./include/ieee80211.h:1029:
    +	for (ie = (void*)buf; (((u8 *)ie) - ((u8 *)buf) + 1) < buf_len; ie = (void*)(((u8 *)ie) + *(((u8 *)ie)+1) + 2))

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1049: FILE: ./include/ieee80211.h:1049:
    +u16 rtw_mcs_rate(u8 rf_type, u8 bw_40MHz, u8 short_GI, unsigned char * MCS_rate);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/ieee80211.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index bda5712aac62..1c671b778c57 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -998,7 +998,7 @@ enum secondary_ch_offset {
 	SCB = 3,  /* secondary channel below */
 };
 
-u8 *rtw_get_ie(u8*pbuf, signed int index, signed int *len, signed int limit);
+u8 *rtw_get_ie(u8 *pbuf, signed int index, signed int *len, signed int limit);
 u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, uint *ielen);
 int rtw_ies_remove_ie(u8 *ies, uint *ies_len, uint offset, u8 eid, u8 *oui, u8 oui_len);
 
@@ -1026,7 +1026,8 @@ u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8
  * @buf_len:
  */
 #define for_each_ie(ie, buf, buf_len) \
-	for (ie = (void*)buf; (((u8 *)ie) - ((u8 *)buf) + 1) < buf_len; ie = (void*)(((u8 *)ie) + *(((u8 *)ie)+1) + 2))
+	for (ie = (void *)buf; (((u8 *)ie) - ((u8 *)buf) + 1) < buf_len; \
+		ie = (void *)(((u8 *)ie) + *(((u8 *)ie) + 1) + 2))
 
 uint	rtw_get_rateset_len(u8 *rateset);
 
@@ -1046,7 +1047,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork);
 
 void rtw_macaddr_cfg(struct device *dev, u8 *mac_addr);
 
-u16 rtw_mcs_rate(u8 rf_type, u8 bw_40MHz, u8 short_GI, unsigned char * MCS_rate);
+u16 rtw_mcs_rate(u8 rf_type, u8 bw_40MHz, u8 short_GI, unsigned char *MCS_rate);
 
 int rtw_action_frame_parse(const u8 *frame, u32 frame_len, u8 *category, u8 *action);
 const char *action_public_str(u8 action);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
