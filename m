Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6026D180D75
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 02:25:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8441F21FFB;
	Wed, 11 Mar 2020 01:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCHKUCyHc5tx; Wed, 11 Mar 2020 01:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 559F521563;
	Wed, 11 Mar 2020 01:25:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FF601BF5A4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:25:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A77B86C4A
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 01:25:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veKDkY5+1avJ for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 01:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7BB4869E6
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 01:25:42 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id u25so596010qkk.3
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 18:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Fukjl9q8moe8CzDk64XDMos63vCyfonbgEhEiAaGvw=;
 b=DGaA0U9LZTxFDk9p+UrQTc+2w6FbZ2lAa1NdcuJN6FekMurcJUwLjEEAb30LZopenF
 IhQQqBpDgZ/B1xli5AROa0jXmEJRoFr02uu/7E/l3xzQdINShRX0rY6vlr8pNZDUEmu+
 lZCOyQ6Kz/rqCIq9UC4KZUNXRnvLdwhb/ShruKQrjpmEkIk64zxarVhNYPB8QfGuhQbZ
 CjR6OS8+dQFdIojetGmZej1ArM7tpp/ZT+eMwCO3FmHKjNmgyu5Rw9LxF4HyEAniCgn6
 mTeiCpXNH5mPFpBF7eBXIVTPfqKTUi1t2aq8/UoyLMzwd6IBCM1Z2+ivahWqzXIk+6i+
 P65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Fukjl9q8moe8CzDk64XDMos63vCyfonbgEhEiAaGvw=;
 b=PmcGEJZpW0Kd1uTNHPuSEP7ccrO3Zc371okIrysXcSrmBGLz5dpF+fEwUwBpvtGeVM
 Z8dyVUMQIQu4aXKNpN/ym5Y0gadhpqrO7nw+zxpMjoJVoe5mbTwCyuYoO25RhsRRHQlc
 XKsVzBBOdujmXTyC15loJLVupOHOjLYfnBSMalSRG40fZqPijpIakggAqX6DkvXTtfCX
 7ZfdK7migBMd9CX4M/YXe+pTLSbEaT5o3ML0EkYmJI7eOT4a3Yw4htrpsP+iK7I9K8eT
 zzBFtZRU5xbDIHfE5UhYU11zrt16VwA1TrTo7Mr/8QlBbda7BDHlUo64LRmYNSgdm3uy
 xQzw==
X-Gm-Message-State: ANhLgQ0mvMReOI1unkZwKlyc/W5fYlQ9ENZyMOJ+UEMm78sS4Td+PNrJ
 8s2/RmO07I/anFTFHRGZaws=
X-Google-Smtp-Source: ADFU+vtwivKOZ8x2mrkiVtdyMruWBJg75D32INLdZIi72P50DVRuj9bAjvMTNxFmNm86LOt8++lszQ==
X-Received: by 2002:ae9:f504:: with SMTP id o4mr611927qkg.306.1583889941922;
 Tue, 10 Mar 2020 18:25:41 -0700 (PDT)
Received: from 73ec49dbc856.ic.unicamp.br
 (wifi-177-220-84-29.wifi.ic.unicamp.br. [177.220.84.29])
 by smtp.gmail.com with ESMTPSA id i66sm4618570qkc.13.2020.03.10.18.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:25:41 -0700 (PDT)
From: Marcio Albano <marcio.ahf@gmail.com>
To: gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: fbtft: Remove prohibited spaces before ')'
Date: Wed, 11 Mar 2020 01:25:33 +0000
Message-Id: <20200311012533.26167-1-marcio.ahf@gmail.com>
X-Mailer: git-send-email 2.20.1
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

Fix checkpatch errors:

"ERROR: space prohibited before that close parenthesis ')'"
in fbtft-bus.c:65 and fbtft-bus.c:67.

Signed-off-by: Marcio Albano <marcio.ahf@gmail.com>
---
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index 63c65dd67..847cbfbbd 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -62,9 +62,9 @@ out:									      \
 }                                                                             \
 EXPORT_SYMBOL(func);
 
-define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
+define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
 define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
-define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
+define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
 
 void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
