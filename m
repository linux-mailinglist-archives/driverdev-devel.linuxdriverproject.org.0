Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5A930FF27
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 22:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E259C87272;
	Thu,  4 Feb 2021 21:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yffbliZKBHOT; Thu,  4 Feb 2021 21:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17AD387245;
	Thu,  4 Feb 2021 21:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35E341BF33E
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 21:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 303B92D059
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 21:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbaN2Wey6mL4 for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 21:18:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by silver.osuosl.org (Postfix) with ESMTPS id E64702D8B7
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 21:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 054CD50DCE;
 Thu,  4 Feb 2021 22:18:08 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wPuzTRtVEr2; Thu,  4 Feb 2021 22:18:06 +0100 (CET)
From: Ayush <ayush@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612473485; bh=/+NEzUUuQp8RPmE1cUqmrXC27+S+5xXWCOlWoYZdB4g=;
 h=From:To:Cc:Subject:Date;
 b=GjQ6lvo+pLXAJc1j9SuI5fs1UqMvn9Y5cacOQTLY03lftdlkJxkLn/+tNhBpUJPyc
 YV6OtcXedCMO9imUF8Gv0LaeIC9GaVV1e+jjYiBVRrJpstNxidGw63EIngxzYNG42q
 cs2/dQYEs2ic8SgErMDcN1fw5Bq2wPmPde0lodNwZfPVwn7Ka41hoioRYAfuHcdnEY
 iJiJbtO1OIZ/CgMn1Th7CP7ptCOIJ3753rJgWoliBZdjyGQgvCyngds93XZgQphUMi
 JE91oVQnz28dW7ATy8bk+DlgnKFcJ7gjhAbBjIX1FGij5DmZD5yUesULCwAwwRf9mK
 6ij7HnDPQDETA==
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: fix pointer declaration style
Date: Fri,  5 Feb 2021 02:47:50 +0530
Message-Id: <20210204211750.102129-1-ayush@disroot.org>
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, luk@wybcz.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some pointer declarations where '*' is not adjacent to
data name.
This fixes checkpatch.pl error: "POINTER_LOCATION: "foo * bar"
should be "foo *bar""

Signed-off-by: Ayush <ayush@disroot.org>
---
compile tested only.

 drivers/staging/rtl8723bs/include/hal_intf.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 1de5acaef8ff..426c8d58c444 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -257,8 +257,8 @@ struct hal_ops {
 	bool	(*Efuse_PgPacketWrite_BT)(struct adapter *padapter, u8 offset, u8 word_en, u8 *data, bool bPseudoTest);
 
 	s32 (*xmit_thread_handler)(struct adapter *padapter);
-	void (*hal_notch_filter)(struct adapter * adapter, bool enable);
-	void (*hal_reset_security_engine)(struct adapter * adapter);
+	void (*hal_notch_filter)(struct adapter *adapter, bool enable);
+	void (*hal_reset_security_engine)(struct adapter *adapter);
 	s32 (*c2h_handler)(struct adapter *padapter, u8 *c2h_evt);
 	c2h_id_filter c2h_id_filter_ccx;
 
@@ -384,8 +384,8 @@ void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter);
 
 s32 rtw_hal_xmit_thread_handler(struct adapter *padapter);
 
-void rtw_hal_notch_filter(struct adapter * adapter, bool enable);
-void rtw_hal_reset_security_engine(struct adapter * adapter);
+void rtw_hal_notch_filter(struct adapter *adapter, bool enable);
+void rtw_hal_reset_security_engine(struct adapter *adapter);
 
 bool rtw_hal_c2h_valid(struct adapter *adapter, u8 *buf);
 s32 rtw_hal_c2h_handler(struct adapter *adapter, u8 *c2h_evt);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
