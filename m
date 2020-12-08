Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2442D21AF
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:07:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C976987CDA;
	Tue,  8 Dec 2020 04:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUhN6prxgNKT; Tue,  8 Dec 2020 04:07:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5990E87A0A;
	Tue,  8 Dec 2020 04:07:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 240031BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A4EF879F7
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4FpQTfnJbCe for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8555287C94
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:44 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id d9so7077476iob.6
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7nZfJo4AhsmkiAbDV7RJy5PY1ud6WNkl7G/hQUCfN8o=;
 b=mJ8AwGvxv1UmTKLidpSCYN8BUKosVJZJ4tXeNzBWCGbSYmFP73ofXgkkVSRcHYe6LB
 1FbmavTNkDEF7vZRJL11bTsVIGTx6I9/0MYGW3oWlYXH6sA7nHJZcrDkc2zN7KYZ1Rbc
 kr4uF946mTokY5clOCv2sDcHVJGZtGW5fkpiZorryjhu+WgRltoixv28MBX8FB7S/Yqn
 Mwh2s8zXkzchCxISamTNr/F2BNcX2PwBauxPb42hzSkT2dl/cyqQxZtESRb9B1dArFW2
 YtVBC8ZNZLn7qFKn+5La04xylK5mKMMvP/E5zApGq1zjnb7oOAr08vyFAsFGY/Qm4S7E
 +S4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7nZfJo4AhsmkiAbDV7RJy5PY1ud6WNkl7G/hQUCfN8o=;
 b=i8+MCA+0iSNzzno4/i3e56J2AGOUly3rIzXLsVcGghXXqRH+CytwiYF5I535xlDZro
 muUMBK7D1JD1XWGmThmkMiRrH//9z1LtepzZgJ4LW+9DqsNK5S126gTclY/MN9FtVgUn
 qfL5OfUPo7EgoRn+Lc9qkL+YSJcMIiZkfavGUlwY4XiDlD9g9WXAFyJAsN4asEkyeD9i
 HuZkhKli7s0UNYLrKfkKWTQ46xmQMtjVdVFY3wYjpa+pU12zsar4SKbKRg+FxP2QipZj
 7bPO7I+EdBs4wejN7qiRpbnCpa6yE5sJbvdVRshtLHcknmptCpAq8/weSi9dD5yoz44+
 f00A==
X-Gm-Message-State: AOAM533XDbH43ieKM8oHlLx9H9sO8xNVubxDvG/UYYJMIo5fOAgHE7fu
 AWqd59wI41blAlnmoViJQnQ=
X-Google-Smtp-Source: ABdhPJytX2nqi+EVlXVzYGHMWxf2J5EX7r7I0vqEiR5kx4cWU1twP/Hz73kqN/s1uhnoRnu6qKl1cA==
X-Received: by 2002:a02:a582:: with SMTP id b2mr24684981jam.77.1607400463884; 
 Mon, 07 Dec 2020 20:07:43 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:43 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 05/21] staging: rtl8723bs: replace
 WLAN_EID_VHT_OP_MODE_NOTIFY
Date: Mon,  7 Dec 2020 22:07:17 -0600
Message-Id: <20201208040733.379197-6-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique WLAN_EID_VHT_OP_MODE_NOFITY macro with kernel provided
WLAN_EID_OPMODE_NOTIF from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h  | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ff4f493e8dcd..182cc8c0b7d3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -1072,7 +1072,7 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 			elems->vht_operation = pos;
 			elems->vht_operation_len = elen;
 			break;
-		case WLAN_EID_VHT_OP_MODE_NOTIFY:
+		case WLAN_EID_OPMODE_NOTIF:
 			elems->vht_op_mode_notify = pos;
 			elems->vht_op_mode_notify_len = elen;
 			break;
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 880d3f0a32fa..20c53c290aa1 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -352,7 +352,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_EID_20_40_BSS_COEXISTENCE 72
 #define WLAN_EID_20_40_BSS_INTOLERANT 73
 #define WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS 74
-#define WLAN_EID_VHT_OP_MODE_NOTIFY 199
 
 #define IEEE80211_MGMT_HDR_LEN 24
 #define IEEE80211_DATA_HDR3_LEN 24
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
