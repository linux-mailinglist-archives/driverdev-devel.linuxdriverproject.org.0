Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 487CF338761
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF9EC6F972;
	Fri, 12 Mar 2021 08:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dwzNisQ4JHF; Fri, 12 Mar 2021 08:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86FD66F593;
	Fri, 12 Mar 2021 08:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 203991BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E0356067E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhr93CzWwXJq for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 352C460607
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:04 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so15256713wml.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=+DUajT8D6GfJ/NUWK412xKj6f5zIZw/xXuUsj//7XRQ=;
 b=JW5Qia2bWiXA6OvX8BB2IBgEcfpqxy2IKw2OBOJx5zRuEiUiYiL0rLVxuGK5hWZJRP
 lIVRpkDLEHQHT1QbisCFTpUM08UbS3QgGFHo/S0YatVVweFvyShL/BEO/7w/q7bVuEi1
 xiJYG38Kc/AEb92S3KNfmLOL+c5NpoPFbeT6hoHsYAlep02G+VIRJvdtDpruSjx+Q6dB
 t3zvgA2zjCjn6Lb+MqP5oCIAAnjDt4h65xpnz5Y45vos/HWyWsYwoluPGdkOcS7nHF6r
 VxXS6VSfc113oIk1baSLrhN/5C3xdc+rI7gCpX8CPO+VQzXH+YuInWgTOu3tP7/lXHX3
 9QaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+DUajT8D6GfJ/NUWK412xKj6f5zIZw/xXuUsj//7XRQ=;
 b=GZ4wK4D2ajBp394BnfYA8scQi7gqZ4yDP8WDY3kthNFFK4P8BsLK485V/uKgrrjDX0
 6GpqCl9IEiEd8AoMl4H24857cRtnXgRWqWr3uOFnXmC8P7MWw+xlOKlN8IpM7OSqnrBe
 62pQ2LL/qYxY7tLRLmuSY2JU4TjMYxHwM3CNRb4GUTWyaMECJodJnKWRyPAkPzYCBOoE
 jP+fJWggH3CwPZ/4I7jqsuSvxDtcu0CUCxrt6iDW9rqNBKBQ4JB8ZfggXizhzzVBhUjx
 4RTRBKMXE3Gs1pdoczwT1HKgy4KKTLoMsgMWxN1wZSb5ddtSDOicAi0U/4n7l4Df+fgS
 Re9Q==
X-Gm-Message-State: AOAM5319+Y6hn5J46lMh27mrwyid7ZzR9osm4gr3trBR35Hr4JSQ3wT6
 sZlh9OtV1uqjKBkYeJZ/6hA=
X-Google-Smtp-Source: ABdhPJxOXrxzDjafpaye23sGP6mm+Ar6a6/stM5JZO2QW1tPDOzMS1qwQpW63GQjFqkAibIMQuwTxQ==
X-Received: by 2002:a7b:c396:: with SMTP id s22mr11738014wmj.38.1615537622507; 
 Fri, 12 Mar 2021 00:27:02 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:02 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 22/33] staging: rtl8723bs: remove typedefs in rtl8723b_hal.h
Date: Fri, 12 Mar 2021 09:26:27 +0100
Message-Id: <20210312082638.25512-23-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #173: FILE: include/rtl8723b_hal.h:173:
    +typedef enum _C2H_EVT {

    WARNING: do not add new typedefs
    #189: FILE: include/rtl8723b_hal.h:189:
    +typedef struct _C2H_EVT_HDR {

    WARNING: do not add new typedefs
    #195: FILE: include/rtl8723b_hal.h:195:
    +typedef enum tag_Package_Definition {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c |  4 ++--
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c    |  2 +-
 drivers/staging/rtl8723bs/include/rtl8723b_hal.h  | 12 ++++++------
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 55c95b38a452..8d4b87131f54 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3706,7 +3706,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 	return ret;
 }
 
-static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent, u8 *c2hBuf)
+static void process_c2h_event(struct adapter *padapter, struct C2H_EVT_HDR *pC2hEvent, u8 *c2hBuf)
 {
 	u8 index = 0;
 
@@ -3750,7 +3750,7 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 
 void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 {
-	C2H_EVT_HDR	C2hEvent;
+	struct C2H_EVT_HDR	C2hEvent;
 	u8 *tmpBuf = NULL;
 #ifdef CONFIG_WOWLAN
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 2d15a5f7648d..415e519e8aa0 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -349,7 +349,7 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 						RT_TRACE(_module_rtl871x_recv_c_, _drv_dump_, ("%s: rtw_recv_entry(precvframe) != _SUCCESS\n", __func__));
 					}
 				} else if (pattrib->pkt_rpt_type == C2H_PACKET) {
-					C2H_EVT_HDR	C2hEvent;
+					struct C2H_EVT_HDR	C2hEvent;
 
 					u16 len_c2h = pattrib->pkt_len;
 					u8 *pbuf_c2h = precvframe->u.hdr.rx_data;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index 8e6e972dd843..03024eea46d2 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -170,7 +170,7 @@ struct rt_firmware_hdr {
 /* Description: Determine the types of C2H events that are the same in driver
  * and FW; First constructed by tynli. 2009.10.09.
  */
-typedef enum _C2H_EVT {
+enum C2H_EVT {
 	C2H_DBG = 0,
 	C2H_TSF = 1,
 	C2H_AP_RPT_RSP = 2,
@@ -184,21 +184,21 @@ typedef enum _C2H_EVT {
 	C2H_HW_INFO_EXCH = 10,
 	C2H_8723B_BT_MP_INFO = 11,
 	MAX_C2HEVENT
-} C2H_EVT;
+};
 
-typedef struct _C2H_EVT_HDR {
+struct C2H_EVT_HDR {
 	u8 CmdID;
 	u8 CmdLen;
 	u8 CmdSeq;
-} __attribute__((__packed__)) C2H_EVT_HDR, *PC2H_EVT_HDR;
+} __attribute__((__packed__));
 
-typedef enum tag_Package_Definition {
+enum PACKAGE_TYPE_E { /* tag_Package_Definition */
 	PACKAGE_DEFAULT,
 	PACKAGE_QFN68,
 	PACKAGE_TFBGA90,
 	PACKAGE_TFBGA80,
 	PACKAGE_TFBGA79
-} PACKAGE_TYPE_E;
+};
 
 #define INCLUDE_MULTI_FUNC_BT(_Adapter)  \
 	(GET_HAL_DATA(_Adapter)->MultiFunc & RT_MULTI_FUNC_BT)
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
