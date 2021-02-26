Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB25326342
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 14:27:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AEFC841B7;
	Fri, 26 Feb 2021 13:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BreOjJ_pat17; Fri, 26 Feb 2021 13:27:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDC0384183;
	Fri, 26 Feb 2021 13:27:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3B51BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 13:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3687D6F972
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 13:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ED8N05-D0j_3 for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 13:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 699026F81F
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 13:27:33 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id p1so6438735edy.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 05:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLLlvYr9QKdqQQnfxyPXzWw7zEpLbduYElS6GfnImdY=;
 b=h87/cS62zMT74w+TwzbzqbBJdPMHLTmCzH5RkccgxHZj0m/HbMD3PubLD3SmYRU6+A
 PS5w50QrqEmi02btDIVk0HZWrlU7T//7HDZa7I90yhmx9a6UwOH1blKu+PEopuCQl0wm
 BPQGCTnYPM1KM1MlQ4WnLYKgm85o+Kcmh87bYjq729fp6Y2U2N5fDArgfwSWX4LIjZUt
 1dwQrhNNgha4VXk0QDG7k52j56jZtaqmkiiVUYGsSxj9DsGqTDNUXynsogvBF1p1qEQQ
 8EACM+FfNSaT3nmcbTkIolVvUj+p/MQb0zgAeACzElAYtLJJcKVsf6xccHZq3mZwsy/H
 yGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLLlvYr9QKdqQQnfxyPXzWw7zEpLbduYElS6GfnImdY=;
 b=sA8qIO/jgA74oJixAiyf16ZZWAwHT6thPcaf2aLlrI4xyd4SjxZkORA/BEFN4cj7e/
 Llhe5wDMYdH5EwRq0ZseSm+JUQbuHp0BU5P/3LvtcDb3M/9gX0rEOwQwvkTu2mV4SvxA
 eJOHNCIQo0Fpb+5qs4zQ5rOIRgguXGCE+p0e2HHM0Hk8jNaWBugvYu2EanPmq/PQTmMx
 HwGK9/FvY9/qKhlh11fdnPxsJldpS2r8dhEeUC4Mce2dndKBwgFiki7Za48cy1uAVx9D
 nm6kgeH7uBeSE4ZTdrTkVMXPmF7+Hu1AilVCGH6s1yUecgf2ZytUdzlkj5A/WF7pCvWd
 Hd+A==
X-Gm-Message-State: AOAM5310n+d9Nm4iyBxaEt6FeRxNbUwF1iUu/te/29CDVxraCssGmGaW
 DiSb42wy8spKqo1WSBlDQwA=
X-Google-Smtp-Source: ABdhPJw1JgBpVRK3GI27KYxAYcGDeV2InBiC/JLEkTODZ/zbRWCARoOnYGjRYk82Puvu7CMjo1n+8g==
X-Received: by 2002:a05:6402:17d6:: with SMTP id
 s22mr3309235edy.232.1614346051406; 
 Fri, 26 Feb 2021 05:27:31 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id f20sm5328024ejx.16.2021.02.26.05.27.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Feb 2021 05:27:30 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Date: Fri, 26 Feb 2021 13:27:25 +0000
Message-Id: <20210226132725.401813-1-leegib@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function _rtl92e_wx_set_scan calls memcpy without checking the length.
A user could control that length and trigger a buffer overflow.
Fix by checking the length is within the maximum allowed size.

Changes in v2: 
	Changed to use min_t as per useful suggestions

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index 16bcee13f64b..407effde5e71 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -406,9 +406,10 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
 		struct iw_scan_req *req = (struct iw_scan_req *)b;
 
 		if (req->essid_len) {
-			ieee->current_network.ssid_len = req->essid_len;
-			memcpy(ieee->current_network.ssid, req->essid,
-			       req->essid_len);
+			int len = min_t(int, req->essid_len, IW_ESSID_MAX_SIZE);
+
+			ieee->current_network.ssid_len = len;
+			memcpy(ieee->current_network.ssid, req->essid, len);
 		}
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
