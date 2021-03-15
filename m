Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCA633C3D6
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F419D4DD08;
	Mon, 15 Mar 2021 17:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUeKx6RF7VPp; Mon, 15 Mar 2021 17:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 196C04B08F;
	Mon, 15 Mar 2021 17:14:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DC841BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D80E6F584
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZAHbSKGRt8a for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDD036F56D
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:47 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id r17so67486374ejy.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=+FaNFRkhT1XuS46MxjbWP0waFSzZwUipnV0aI+hmCJ4=;
 b=JUe+3G2j4+U1NH0cgRqQYvlxnDD9BM0p9Z/RhH+LZZU0vgzvSmsNzozhFYS8Yt2S+/
 7ndEo+VoNhunSo9QaDvYg1oXsZFvJMBj7To2mMdYXdyrBRuTFMlQQH4DqBmoEI7EuHh1
 b4FkepoYwzR+Btbfp7OWK+odDwKRqD54b3uB7CLKVYcWGcF4qDFFaHmyWKOYnaRFraDP
 HuKekgMO5YT5wFOtsH6pBNEuLE40C24JQTDyKs/zL+lBXk2FyU9+IIYDmnBTwIBmzQjM
 mEx9Ph8XQ7ayhpFqRmvqL/9vmIfG1xv2U6+bbfsv46h7u37x1LziDBuEnYnKg42gIFPs
 0XDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+FaNFRkhT1XuS46MxjbWP0waFSzZwUipnV0aI+hmCJ4=;
 b=lzjeN4IfRyXJLxucWTHn0TpeHxxXnJ0yAzxLlrXwwXCKgmvrdbvPk7gGkTAYexFimH
 gMlf59nvcf111uj9VqNIAdo/9n4UvrZWGhG6hs5PiVghmrGAz15mNKjuhj7iHIueOiC2
 Ra2Ce06GTdiqirb6/oz+oltu68fSLtvcvzMGoZIBzfY7mpvs6WpHehHvr2Myi436h9fc
 Xuk9ME3vFYadgrT264NubhXSi4SPDYjDRG6f8E+3bB5imQ2fIWDCdes5CKkOYXotswwm
 9Uk7jUBamr4baBEx9s1bQ5Wjwm/haKa2DEDusbyl7whsCVwsX+NGa+EY8hpn/1WGnLx2
 cufQ==
X-Gm-Message-State: AOAM5303yqlFVFOM+AjjqzECAFNiH5p5msaj140EVYq5+yjuIWwyPVpw
 OoURcg02k77vnA+m2HIMy2Q=
X-Google-Smtp-Source: ABdhPJzBVklQDr2y/JsP+OYbp9O5wURMY8BB49ZsOqzPCNkHogTZuLmybSiYkEoEvD5Su+bnqRHX9Q==
X-Received: by 2002:a17:906:b747:: with SMTP id
 fx7mr25403928ejb.474.1615828006119; 
 Mon, 15 Mar 2021 10:06:46 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:45 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 45/57] Staging: rtl8723bs: fix spaces in ioctl_cfg80211.h
Date: Mon, 15 Mar 2021 18:06:06 +0100
Message-Id: <20210315170618.2566-46-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo*bar" should be "foo *bar"
    #109: FILE: ./include/ioctl_cfg80211.h:109:
    +void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char*msg);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/ioctl_cfg80211.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
index 2907a6fce7a9..7c86d05084d8 100644
--- a/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
+++ b/drivers/staging/rtl8723bs/include/ioctl_cfg80211.h
@@ -106,7 +106,7 @@ void rtw_cfg80211_indicate_scan_done(struct adapter *adapter, bool aborted);
 void rtw_cfg80211_indicate_sta_assoc(struct adapter *padapter, u8 *pmgmt_frame, uint frame_len);
 void rtw_cfg80211_indicate_sta_disassoc(struct adapter *padapter, unsigned char *da, unsigned short reason);
 
-void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char*msg);
+void rtw_cfg80211_rx_action(struct adapter *adapter, u8 *frame, uint frame_len, const char *msg);
 
 bool rtw_cfg80211_pwr_mgmt(struct adapter *adapter);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
