Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F742CCA4E
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Oct 2019 16:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 315A120452;
	Sat,  5 Oct 2019 14:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SodjEl65t-Rd; Sat,  5 Oct 2019 14:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D842A203E7;
	Sat,  5 Oct 2019 14:19:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DEFB1BF41E
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 14:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1611D86448
 for <devel@linuxdriverproject.org>; Sat,  5 Oct 2019 14:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br8VsyV2obci for <devel@linuxdriverproject.org>;
 Sat,  5 Oct 2019 14:19:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7FF5486442
 for <devel@driverdev.osuosl.org>; Sat,  5 Oct 2019 14:19:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v8so10354439wrt.2
 for <devel@driverdev.osuosl.org>; Sat, 05 Oct 2019 07:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5c+80gfuhaDVm4O1ji2rUPY3d7u88SmARcL9f7vN7dY=;
 b=mZNHjWeNPmo5BapnTp7RGJqxGLhREJ4bX3fwgK/s9gougd5fNMzMt7OPcJjngnFQ3x
 7xkaxz25z1VWtliMz7q6nAuBj4Y6qQnUbkf7eZg+vFaj21YfS8L05t1WjDknNK/u+tsq
 a9XHHC2bJMrWUx15w7NYLn9prPjMkYQ2pukIA/TGblZPBVHvB2pQCcxiowCmOfxy2oaN
 QtJ7JCwdi22t6uQkvYQOndUpobBfsOYWhvOJjXhrK0UaqOFtsecOve3iAbEVmjtkvdCp
 +6v+8CgsOCWE7kvOOtIDvy903zkYlIOlfBGtpAtZwxMi7NA8FfxX/zyByD0epPyHKGwC
 iI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5c+80gfuhaDVm4O1ji2rUPY3d7u88SmARcL9f7vN7dY=;
 b=iI0JEi6087raxGqioy9VSrOscbdMT+5c78rXoPUCjTuldoWzzY5xs54dlpZfdMquH/
 q77uk+9EIPEDCY+eerRPLyHe9X4NchuRtabGb6YgsVl2dHCTH+mpwKeAvPxpRMX9MdQP
 PD0flSlxGSQ2PjChb0SlsPT+4Pog1hDyWuTTJ1yYfwtvr+z6q/ZjXty7fEIAZnr5OkH8
 FsPe0EOwNyycA79A3ykQctcpSERxtUDAOWpYZJQUICBXG8ahB8noD3izgqOUQdbCLU8o
 1hxt4ynG8Txufgwg0ZD2X012ejrpaifY5BPw20dEaOmUVPshvpweTJXYM/hHxSMDMTC1
 4+Cw==
X-Gm-Message-State: APjAAAVzvAtCRvIlNDP/SsJDD1oo/js1XTH28BjpmD1DZNtVGoQRMwHr
 UKrNjtyqaIOaaT93ohx6fRA=
X-Google-Smtp-Source: APXvYqwscbFmjT1IGg3hC0Kg1mBJY6UX/5CYfa0zNu/seamnmezggP7S0/FwWrabio+Ge1irjUcDXA==
X-Received: by 2002:adf:e588:: with SMTP id l8mr1614352wrm.290.1570285142895; 
 Sat, 05 Oct 2019 07:19:02 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id c17sm1480126wrc.60.2019.10.05.07.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:02 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unnecessary asignment and
 initialization
Date: Sat,  5 Oct 2019 16:18:52 +0200
Message-Id: <20191005141852.88712-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Variable badworden is asigned in two subsequent lines. So the first
asignment is useless and not needed. Also the initialization to zero
is not needed. Remove the first asignment and the initialization.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 02c476f45b33..d191dbef0bb3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -615,10 +615,9 @@ static bool hal_EfusePgPacketWrite1ByteHeader(struct adapter *pAdapter, u8 efuse
 static bool hal_EfusePgPacketWriteData(struct adapter *pAdapter, u8 efuseType, u16 *pAddr, struct pgpkt *pTargetPkt)
 {
 	u16	efuse_addr = *pAddr;
-	u8 badworden = 0;
+	u8 badworden;
 	u32	PgWriteSuccess = 0;
 
-	badworden = 0x0f;
 	badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr + 1, pTargetPkt->word_en, pTargetPkt->data);
 	if (badworden == 0x0F) {
 		/*  write ok */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
