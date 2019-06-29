Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6875AA30
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68BA9204B1;
	Sat, 29 Jun 2019 10:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9E-XncP5Esz; Sat, 29 Jun 2019 10:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B48EE203AF;
	Sat, 29 Jun 2019 10:36:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7131C1BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DE9185C47
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7AZsu23JTf9 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C56F985C00
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:36:07 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t7so4643989plr.11
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5LHkBJhseA7dswWKyXE2Jck+WxMFtGP/bseyhBGdc+o=;
 b=kdBm/5W3nCQHYCHkDl3RPvqQ77+P01XIG8cKg5dIOThq36njd2kH8bzO+dXt+6jtff
 u1nwN19fXhEiJbSxCG0+vEJPA6hJR2zNl3faM/igk2C7iQY+LRcjvcfk8YvvEAkICQMc
 /01P08NoKF03qF4lRmC04VieWwaFWLGP5uOXlzIhoxT6+PfhRch2N/95Fe3UBL/tQ5bq
 DBDn3pbIY71TMv6kOhh3hLg3pUPInqG1Ab9SpuScRbrVwKch0GoZm2FMO95KeERn7J1O
 +RBrjYE414hSyrmtS8b9uitql24/WZLc8SQ/ubTYibLQH7XmopfJ8cbT4F3kH6XiTvl8
 UJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5LHkBJhseA7dswWKyXE2Jck+WxMFtGP/bseyhBGdc+o=;
 b=jOJC8y+8OUWS93rxfLrSy8jtUCFU6g+gzXOH8yZMKExwHXz5dY86R2PFrAiPrUZv0q
 hPRLlIruXZAZBtDAuoimw7KmEPx6yWysyJePQJaBQ8ZBi/Xms89NUnlwbNIAILrfkyWx
 MozxUTS+hs7NSLw0DZMkCpA5Hez8Ex9K2K0AXH9OZImvrV1vM1xsmUjiytnXjPMB5pH+
 ZI6rNr2XJfz7COEY/KN4FBMoPdtx+VQXW7erA2RtGDPrHCWiNtuWquPkgJs3bYBMZcri
 2OyUWpzNDfCMtjrIhBhohGnaO/ShGeI5OsRY4ysdxg4NA92iTybcakpCmGOl7r/jOAC/
 nOHA==
X-Gm-Message-State: APjAAAUAZrGxhCE0Jggvc03GEfwXdqNdoxfkLTI+By6xqZQsDweGvnNP
 GVp0CXWvCufogmRTYAVMk4cGncqU
X-Google-Smtp-Source: APXvYqwMrWBD5H8o3UVSrF+L8X2bCKm5bqMVp9I6iEetozmgmMMea+YSQpZIG2AbN7yNfHV5ShX6Qw==
X-Received: by 2002:a17:902:7c8e:: with SMTP id
 y14mr15913012pll.298.1561804567526; 
 Sat, 29 Jun 2019 03:36:07 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 65sm4306022pgf.30.2019.06.29.03.36.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:36:07 -0700 (PDT)
Date: Sat, 29 Jun 2019 16:06:03 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629103603.GA15524@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_phy.c b/drivers/staging/rtl8723bs/hal/hal_phy.c
index ebaefca..520f860 100644
--- a/drivers/staging/rtl8723bs/hal/hal_phy.c
+++ b/drivers/staging/rtl8723bs/hal/hal_phy.c
@@ -81,7 +81,7 @@ bool PHY_RFShadowCompare(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
 {
 	u32 reg;
 	/*  Check if we need to check the register */
-	if (RF_Shadow[eRFPath][Offset].Compare == true) {
+	if (RF_Shadow[eRFPath][Offset].Compare) {
 		reg = rtw_hal_read_rfreg(Adapter, eRFPath, Offset, bRFRegOffsetMask);
 		/*  Compare shadow and real rf register for 20bits!! */
 		if (RF_Shadow[eRFPath][Offset].Value != reg) {
@@ -100,9 +100,9 @@ bool PHY_RFShadowCompare(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
 void PHY_RFShadowRecorver(IN PADAPTER Adapter, IN u8 eRFPath, IN u32 Offset)
 {
 	/*  Check if the address is error */
-	if (RF_Shadow[eRFPath][Offset].ErrorOrNot == true) {
+	if (RF_Shadow[eRFPath][Offset].ErrorOrNot) {
 		/*  Check if we need to recorver the register. */
-		if (RF_Shadow[eRFPath][Offset].Recorver == true) {
+		if (RF_Shadow[eRFPath][Offset].Recorver) {
 			rtw_hal_write_rfreg(Adapter, eRFPath, Offset, bRFRegOffsetMask,
 							RF_Shadow[eRFPath][Offset].Value);
 			/* RT_TRACE(COMP_INIT, DBG_LOUD, */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
