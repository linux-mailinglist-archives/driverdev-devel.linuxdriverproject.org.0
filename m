Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216CF33FB05
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE69B43295;
	Wed, 17 Mar 2021 22:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Q-T7yU5yKem; Wed, 17 Mar 2021 22:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 200A84327C;
	Wed, 17 Mar 2021 22:24:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BEEA1BF9C6
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B8AD6F9BA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NanVTQge0x5G for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A02FE60636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:32 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u9so819933ejj.7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6r2bmypDTBOCpZ1FXxkS8cKovF8E1MvuCujcWVvaoGg=;
 b=EK0mQv1k5GaBI44C/MPSKHo6cozInCkHxaquB/V9l1jU0pUzX56qJ4JJgLuJTLpal/
 wY33E9Jq6Im2RABsbZq7H+co5KV5uOyRY5MYclh2PLJiY7T8eh98nD+MdI5DvgLcjV8W
 8A4O+IlNaY2xTD3G1b6UkRM8+IRRVyF0Dqaf2BMOZL6SGBzez1/3UaHMLVimIRLurUeU
 0UfYl7W5T7oAjSsa9AoG/aJKiETDNqAqV2J/8gxyUvMl/8H6FsvWgnWkDP0nXQ1mJVq9
 AOPh5dLq2uS9r51hg7gvgh8OZvxWuvP2wSaQSqhsD3TS5InSlpdunXsIB/6rqbD9gCgL
 EABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6r2bmypDTBOCpZ1FXxkS8cKovF8E1MvuCujcWVvaoGg=;
 b=Pvw6H6Lc5fUScPGIqJ6AVcMBC2ei0AS4M+VpUFjPMP9OgP1Gjzbd4phCuw5j9E6imK
 wS7CcUdCCLW6vQeU81mXdc/HtOpqAOsQHl7+31eGV9Z8FKfM9nwoaGzWcRIbpeBBcums
 P2qgznYpdDvZHbiEmhDnJyvSl+Y9MUO3XO+5+mvzDmEs7Hx3+lIew04WpZdZ+jvXrtmn
 iViKnoJvThPuyvF43IebWt52dI3VmBFVnwSoVCjIzQVnkdIdMT0IHlF+0DW1/mh26dd2
 K96UNxEQWm0w6+cqc9a5xGqgIHaJm5x3021hoLRmtN7ZZL+xaZ3txU8tfx92YYPvQedP
 m2Ig==
X-Gm-Message-State: AOAM532kWTY4et66RCGKLz0iHBxVQPx2aOwh1ez2sI5oDh83wfQmzbtr
 t4RVRKHiMSah/2XQXbgcg18=
X-Google-Smtp-Source: ABdhPJz1VwB6rD5Ky3aXfPIdxsIwS3Tna5Ap0xoQ4D1nv2hWPkzaFDPtaj4les4Szfeq/w9ehc6DlA==
X-Received: by 2002:a17:906:3b84:: with SMTP id
 u4mr37328012ejf.431.1616019690891; 
 Wed, 17 Mar 2021 15:21:30 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:30 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 18/43] Staging: rtl8723bs: fix names in rtl8723b_hal.h
Date: Wed, 17 Mar 2021 23:21:05 +0100
Message-Id: <20210317222130.29528-19-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtl8723b_hal.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ++--
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c    | 2 +-
 drivers/staging/rtl8723bs/include/rtl8723b_hal.h  | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 44bbffab0c02..f33b084011b5 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3695,7 +3695,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 	return ret;
 }
 
-static void process_c2h_event(struct adapter *padapter, struct C2H_EVT_HDR *pC2hEvent, u8 *c2hBuf)
+static void process_c2h_event(struct adapter *padapter, struct c2h_evt_hdr_t *pC2hEvent, u8 *c2hBuf)
 {
 	u8 index = 0;
 
@@ -3739,7 +3739,7 @@ static void process_c2h_event(struct adapter *padapter, struct C2H_EVT_HDR *pC2h
 
 void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 {
-	struct C2H_EVT_HDR	C2hEvent;
+	struct c2h_evt_hdr_t	C2hEvent;
 	u8 *tmpBuf = NULL;
 	C2hEvent.CmdID = pbuffer[0];
 	C2hEvent.CmdSeq = pbuffer[1];
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 9e1b33c71710..17a3e7bf66ef 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -349,7 +349,7 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 						RT_TRACE(_module_rtl871x_recv_c_, _drv_dump_, ("%s: rtw_recv_entry(precvframe) != _SUCCESS\n", __func__));
 					}
 				} else if (pattrib->pkt_rpt_type == C2H_PACKET) {
-					struct C2H_EVT_HDR	C2hEvent;
+					struct c2h_evt_hdr_t	C2hEvent;
 
 					u16 len_c2h = pattrib->pkt_len;
 					u8 *pbuf_c2h = precvframe->u.hdr.rx_data;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index fdade62bda28..95dfcb338fa8 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -156,7 +156,7 @@ struct rt_firmware_hdr {
 /* Description: Determine the types of C2H events that are the same in driver
  * and FW; First constructed by tynli. 2009.10.09.
  */
-enum C2H_EVT {
+enum c2h_evt {
 	C2H_DBG = 0,
 	C2H_TSF = 1,
 	C2H_AP_RPT_RSP = 2,
@@ -172,13 +172,13 @@ enum C2H_EVT {
 	MAX_C2HEVENT
 };
 
-struct C2H_EVT_HDR {
+struct c2h_evt_hdr_t {
 	u8 CmdID;
 	u8 CmdLen;
 	u8 CmdSeq;
 } __attribute__((__packed__));
 
-enum PACKAGE_TYPE_E { /* tag_Package_Definition */
+enum package_type_e { /* tag_Package_Definition */
 	PACKAGE_DEFAULT,
 	PACKAGE_QFN68,
 	PACKAGE_TFBGA90,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
