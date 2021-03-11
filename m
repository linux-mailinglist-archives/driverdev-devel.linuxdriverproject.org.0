Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD2336EF1
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 10:33:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8310A430DC;
	Thu, 11 Mar 2021 09:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4kjdhmEFYf3; Thu, 11 Mar 2021 09:33:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA624400D6;
	Thu, 11 Mar 2021 09:33:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54CB41BF395
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D4EB6F5A4
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uts2C539f0Wn for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 09:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 903C36F502
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 09:33:07 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1lKHgn-0002l7-3v; Thu, 11 Mar 2021 09:33:05 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ross Schmidt <ross.schm.dev@gmail.com>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: Fix spelling mistake "disabed" ->
 "disabled"
Date: Thu, 11 Mar 2021 09:33:04 +0000
Message-Id: <20210311093304.5573-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a comment, fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index fe984fcb66a9..4080803d9b1b 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -719,7 +719,7 @@ struct ADDBA_request {
 
 #define	P2P_WILDCARD_SSID_LEN				7
 
-#define	P2P_FINDPHASE_EX_NONE				0	/*  default value, used when: (1)p2p disabed or (2)p2p enabled but only do 1 scan phase */
+#define	P2P_FINDPHASE_EX_NONE				0	/*  default value, used when: (1)p2p disabled or (2)p2p enabled but only do 1 scan phase */
 #define	P2P_FINDPHASE_EX_FULL				1	/*  used when p2p enabled and want to do 1 scan phase and P2P_FINDPHASE_EX_MAX-1 find phase */
 #define	P2P_FINDPHASE_EX_SOCIAL_FIRST		(P2P_FINDPHASE_EX_FULL+1)
 #define	P2P_FINDPHASE_EX_MAX					4
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
