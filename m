Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19660BF89C
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 20:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 71D53226E9;
	Thu, 26 Sep 2019 18:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCCf2hBRC+Ta; Thu, 26 Sep 2019 18:00:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10273226B0;
	Thu, 26 Sep 2019 18:00:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1661BF853
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 18:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C0A98619E
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 18:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSe1vrGYjPle for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 18:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 923DF86149
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 18:00:23 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y135so7170447wmc.1
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 11:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yt1IsVUKjYQaKm/AvxEUk4/OIGKh6xPQUX0IWIVIWz4=;
 b=MfoxsbTOd7CE7lu/tBKmqAxmmPLffab11eVdUuD21vTZLiwGkFoZJVPvU5/SXB9D0w
 o+zEzQLqEHOXW4XmzDuAhdH0zRo/w3D5238gENnU8fsuSSkMZzROM/VF5V5qDdjIVUgq
 fWBsfP2YfN3Egm/Mnfnn79mWLWmqYf4TYsGfcF4Dz1hWtkNntmjB5avWTiMONI1fM/iv
 LjuxW0T2SbpHPZYgD+YQt1WtMqI8POPoEWAmahoRVx+vROUfgt5UhaxIH1TxLPc/AMdo
 pNngM+DHGIuESDAW6dBuUAIh9vb9aIOwZohQZ3FaHNLn5VuL3pElt1lwiae3QJ6AVZpf
 FF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yt1IsVUKjYQaKm/AvxEUk4/OIGKh6xPQUX0IWIVIWz4=;
 b=DIZEBFU9KttEfZqXr9NfPkLmozBmWBZU4YcZa31RQLRYHYxEi8ZwnZ8RFQK+Y3iKhz
 +ODZ2JiJMBH5loydVqzF9k9jUoThdwXHoodOVxi7KwSd7GsfgvC259Hb40+iIPhFqaFA
 PcLKooplkem/oDNymtgaULlRgaJUxwaRWv0Yle8RlVG3KxDh7Ey79aKochxMMq90nEvN
 XhmpavdJUE68XKarCufYjfKy1LRJ9GBavhgSs5BGp+1hdpJffvrPiNx8jRIdevwfs698
 5BziUpWb2qvTG+2UWpi6Sp/rgo6eos0LsClUKtgIeoYeVDZv+163f3jPpO5vzqqlWp3Y
 tGOw==
X-Gm-Message-State: APjAAAUls1Fx+Yp9TZggV8/qB65VDT6WG9eWqwvyTQ2ax6AxBhPXKjyJ
 gRBCvgyZwe4KlmnX5RXtP8w=
X-Google-Smtp-Source: APXvYqy98BN/fP0M1TwKem39Ec84DDIrutllK92T6sDfFbkX94gmpqbHy+NL9lOY4PqnHLoCLA1TKg==
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr3959754wmf.125.1569520822037; 
 Thu, 26 Sep 2019 11:00:22 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p7sm4458308wma.34.2019.09.26.11.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 11:00:21 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove unused function
 write_cam_from_cache
Date: Thu, 26 Sep 2019 19:59:33 +0200
Message-Id: <20190926175933.44967-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function write_cam_from_cache in rtw_wlan_util.c is never used,
so remove it.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 13 -------------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h |  1 -
 2 files changed, 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 5ab98f3e722e..3933e8637e57 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -606,19 +606,6 @@ inline void clear_cam_entry(struct adapter *adapter, u8 id)
 	clear_cam_cache(adapter, id);
 }
 
-inline void write_cam_from_cache(struct adapter *adapter, u8 id)
-{
-	struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
-	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;
-	struct cam_entry_cache cache;
-
-	spin_lock_bh(&cam_ctl->lock);
-	memcpy(&cache, &dvobj->cam_cache[id], sizeof(struct cam_entry_cache));
-	spin_unlock_bh(&cam_ctl->lock);
-
-	_write_cam(adapter, id, cache.ctrl, cache.mac, cache.key);
-}
-
 void write_cam_cache(struct adapter *adapter, u8 id, u16 ctrl, u8 *mac, u8 *key)
 {
 	struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index fd3cf955c9f8..73e8ec09b6e1 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -576,7 +576,6 @@ void read_cam(struct adapter *padapter , u8 entry, u8 *get_key);
 /* modify HW only */
 void _write_cam(struct adapter *padapter, u8 entry, u16 ctrl, u8 *mac, u8 *key);
 void _clear_cam_entry(struct adapter *padapter, u8 entry);
-void write_cam_from_cache(struct adapter *adapter, u8 id);
 
 /* modify both HW and cache */
 void write_cam(struct adapter *padapter, u8 id, u16 ctrl, u8 *mac, u8 *key);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
