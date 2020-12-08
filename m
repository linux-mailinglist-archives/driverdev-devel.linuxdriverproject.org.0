Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DD82D21BF
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0319F2E506;
	Tue,  8 Dec 2020 04:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tiLt1EqGVrBv; Tue,  8 Dec 2020 04:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD62C2E507;
	Tue,  8 Dec 2020 04:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 809C91BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D43887C39
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XG9Z7rqAvqMl for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA66A8769E
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:59 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id j12so7197153ilk.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B2kvsrP4A4w9Ll/8j0HYqPedZLnR0R37yVmOg87xaPQ=;
 b=WKCdaZbidtImG3GtcDYPK1cR3ReQS7JakYx9QXy3pR1y0BIVqyWTl1ijLYUnb+vpAW
 irZXTNSzo0t073Fe0BnUx7kvbF0uA+w7QT6uUw9eTkQbC+rhoJ+OTjpoTx8TShbnlfRk
 BxvnARs7qP1MFb4DlkKlsC6g5e5zU9m5ojzTDj69n0ZwILt7oeUZuh0y2DAA/Nz++60h
 rohZO8vkw9o/nyyKWN0iZCm2fCTDZgJc0CnMDI/sEYCL4IGTsSyPRp0bBY7Gx7V7dyWt
 jOCWpteiZO5WQtWi1WFYTssEe0J9SqE1R15gt1peXSaljTD8H0NovPbgGg/7C+g0pi3I
 gtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B2kvsrP4A4w9Ll/8j0HYqPedZLnR0R37yVmOg87xaPQ=;
 b=BOuBQVVMFr9rXfGOaxNcpvyos8EJrf101er3lFybnhMJJefO7/6AWSxl7QeDgIAJV9
 RImpLBYXdIWTHrm+pXY0KZCzYsiF7Kwc+hOes1pS8xMEqb/51wMpkDj2EYjOEmtb+rds
 rZKVSgteZiw9AOwG2LeAAGAP1h/db1ULeHyfOws4Z2DxH+2wBr35ePdCEDfRFpHIw5aA
 C5NvJvAPaMnkTTXE6E+pf50kGIB8vuinFlPnCjJ4p9mZLqVjf5OULL6YBzH3rTQ3OQt8
 m5dsSFudRXQkWkZZWJPvd7+UNhje3IKa8u/xU6ZBtMQxKm9Tgg1tIVRjpkZ3djmpZ720
 ByVQ==
X-Gm-Message-State: AOAM530z5RiPQA/TerHK9na/f+/FjJZYgl4etwbQylx+dRqKkVoOGUP3
 V1W/qoDh42QmggzdVCvyKzw=
X-Google-Smtp-Source: ABdhPJyyfqz3bycaiHCfu0MYFS5x9VmP/0W4+iqlTCHKYxWFFsnHrTVkjIEii/y1wUoON6+alAyEwQ==
X-Received: by 2002:a92:4002:: with SMTP id n2mr23931383ila.293.1607400479231; 
 Mon, 07 Dec 2020 20:07:59 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:58 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 19/21] staging: rtl8723bs: replace EID_EXTCapability
Date: Mon,  7 Dec 2020 22:07:31 -0600
Message-Id: <20201208040733.379197-20-ross.schm.dev@gmail.com>
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

Replace unique EID_EXTCapability constant with kernel provided
WLAN_EID_EXT_CAPABILITY from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index d05338015744..2c9425e2a1e9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2912,7 +2912,7 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
 
-	rtw_set_ie(out_ie + *pout_len, EID_EXTCapability, 8, cap_content, pout_len);
+	rtw_set_ie(out_ie + *pout_len, WLAN_EID_EXT_CAPABILITY, 8, cap_content, pout_len);
 }
 
 inline void rtw_set_to_roam(struct adapter *adapter, u8 to_roam)
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 9d172bd23911..fa4b0259c5ae 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3381,9 +3381,9 @@ void issue_assocreq(struct adapter *padapter)
 			}
 			break;
 
-		case EID_EXTCapability:
+		case WLAN_EID_EXT_CAPABILITY:
 			if (padapter->mlmepriv.htpriv.ht_option)
-				pframe = rtw_set_ie(pframe, EID_EXTCapability, pIE->Length, pIE->data, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_EXT_CAPABILITY, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
 		default:
 			break;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
