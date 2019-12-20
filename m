Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19148128196
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 18:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F35D25445;
	Fri, 20 Dec 2019 17:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jk5-ao-gefqw; Fri, 20 Dec 2019 17:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B5A242049D;
	Fri, 20 Dec 2019 17:45:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88D0E1BF2B6
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 17:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EF2B888E2
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 17:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNrOrDaKJs2L for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 17:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 771EC888DB
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 17:44:59 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id d73so9782849wmd.1
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 09:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb72jc4spAcABwLaDNL79fswtIsTkbWjFqxfZ/KoMkQ=;
 b=sbiLKIjoBcIPp6lfdCUskCN7rdWS5ztUieDzd5hGCa43P6jDxZRKu/2VB4JjQp9fVv
 5ipiNrhR2ruTMTgIxzvyVQjCpK8kngCih3h1WZcvdZUxmdYoVwdWLuLg8jW2PMdM6MfW
 bERjEraoO7LAhdGBDaogKaO0v3ftBxYc1j9Rn+yeAnMdM/Tq9YIskDox2i40bI9O5n8J
 yt6NPD2X3le9L6KopHwuS5nKvGoHjZnnmSMunaQ9w+HSSewc9RhkJMDyIucnLCYY+YzL
 +bSwUY9/fXkbpP6U0T+YO6mSB9o10qjqDWqepqez56HVJu4vATttHZfXxP7/khnVcJ/T
 Mjrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb72jc4spAcABwLaDNL79fswtIsTkbWjFqxfZ/KoMkQ=;
 b=Pr54ApRXsn2y31rB5aOlIyGcVI/3eYydAJy0UQ5bLUuNAPTMXbz13kklxD+zr16hJ8
 PblZ/Wz4BTHu5DXTYJK+EMYy4bQ7agITGKU+PsvozxEpNdzo7G/iuFFtRi0p3C4mpbf6
 EJShu7jKvTQw6kxNO+SXx/YH+q1TEafm8BIhr1pSTgQ2+w3R56bJjTG+E0qGGymNXuQ2
 jMRxvvQLvzEJpKUIQOuV8WULHl5ulnu5npKRJsbXQUYvvmOd7bNURS9iiAMHS5uDZy5J
 /gm2MPKexI/CRKpAueFNo3fdycithJo0xTKn8bAGrXGUNIJPVEZkxYXn5/cGb1IWAVh4
 GIVw==
X-Gm-Message-State: APjAAAWTBYh1GUlopJ6aVztZTC3fXfdH5whz1HZTUXf2suvwhriraU6r
 OCC3GZtqSDmjuIGon3c4k2Q=
X-Google-Smtp-Source: APXvYqxrHraXo73B9lFeIY5XoWKQTek2jE0WVcL0zSjObjZUUXEqjBNuXikx/k4BRqrNKhXKKYAEyw==
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr16881907wmf.60.1576863897866; 
 Fri, 20 Dec 2019 09:44:57 -0800 (PST)
Received: from localhost.localdomain
 (dslb-092-073-054-252.092.073.pools.vodafone-ip.de. [92.73.54.252])
 by smtp.gmail.com with ESMTPSA id b68sm10715536wme.6.2019.12.20.09.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 09:44:57 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: use break to exit while loop
Date: Fri, 20 Dec 2019 18:44:13 +0100
Message-Id: <20191220174413.13913-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable bContinual in Efuse_PgPacketRead() is only used to break
out of a while loop. Remove the variable and use break instead.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index d9b0f9e6235c..0b86ae8338d9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -402,7 +402,6 @@ static u16 Efuse_GetCurrentSize(struct adapter *pAdapter)
 int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 {
 	u8 ReadState = PG_STATE_HEADER;
-	int	bContinual = true;
 	int	bDataEmpty = true;
 	u8 efuse_data, word_cnts = 0;
 	u16	efuse_addr = 0;
@@ -422,7 +421,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 	/*  <Roger_TODO> Efuse has been pre-programmed dummy 5Bytes at the end of Efuse by CP. */
 	/*  Skip dummy parts to prevent unexpected data read from Efuse. */
 	/*  By pass right now. 2009.02.19. */
-	while (bContinual && AVAILABLE_EFUSE_ADDR(efuse_addr)) {
+	while (AVAILABLE_EFUSE_ADDR(efuse_addr)) {
 		/*   Header Read ------------- */
 		if (ReadState & PG_STATE_HEADER) {
 			if (efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data) && (efuse_data != 0xFF)) {
@@ -464,7 +463,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 					ReadState = PG_STATE_HEADER;
 				}
 			} else {
-				bContinual = false;
+				break;
 			}
 		} else if (ReadState & PG_STATE_DATA) {
 			/*   Data section Read ------------- */
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
