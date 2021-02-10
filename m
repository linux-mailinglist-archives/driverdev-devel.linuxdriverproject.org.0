Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9129316BF2
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:00:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1ED5D86EB2;
	Wed, 10 Feb 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 21Wz1FKTg55k; Wed, 10 Feb 2021 17:00:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BFB686D18;
	Wed, 10 Feb 2021 17:00:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48AA61BF41C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 463E886D18
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxr377n3tkuf for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:00:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 72CDB86CE0
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:00:29 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id y134so2432666wmd.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZcMpsIok+hiSaO1SUKncalhw3n5LvdHZipOyoQRgJxQ=;
 b=zRfhwShUvUJfkBWUzkGm0izYVluBz/HUmhopEh5/rqELh1hr4uRlvYTEL/7ykXztDW
 503gCvXXekXn2mUViz10wEwU48OMpSf4Ms7cqukL4svm1VLXjuvHXhR+EDJy23E1k1jM
 MlygBUkOkMGDhw6lXdipkUwQFtQPcMqZ/marlTmAxv0AXzR/7se1gSDVxL2LbNvBAZ/F
 Ysr/OA9kMQ8k3pG+OODdRwX1HN6sKCu7HhEkjsDyJJaLV63ICSHvV+2LQ0+YHDpgy7vB
 xDC+ty4heEaiW6Bvk80Z+GUbJyDzs4/f/TLxa9eBkq7ujDnXVLZAzuH6OQhC4j1YrT4w
 Jr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZcMpsIok+hiSaO1SUKncalhw3n5LvdHZipOyoQRgJxQ=;
 b=ibIRxni7Z1vGL1vp0SGehx8UCeP4z37jZl/7J7wMDACDtJxTj2jyM6Uhdqqru2yJ5L
 2KIISmrrzYAZR9oRTwzRBNLdxMSLZmIsf3/qf8yyCGCqDqaDzi+WUibv77QUNfpwLKCV
 hwuVZmGqIqfcFe/AoYOx5hyt3pCJHfw/AEV9nqa6KPa7FCsheav1p4cLl3ETVUkI3gNv
 V7MVv8SxH7XUzN8E2p4T4PpZw3OKJIlr6EQQOfdX8cpp3ulqfe8YmxIqGcHoQyaHTpvP
 LUoWSeSgGEe4XELUlcUse60EvhONQWNAvKYUPF9ldHvM40d31HoYAQDFc5K7ReY7Uf0m
 jBHg==
X-Gm-Message-State: AOAM531NNG3+s36gMQPHSeaiq8iSo14LzzYXyVU42o4Une+li0aD0eka
 9g4yl2JtDO9a8BlFgTka43K+Wg==
X-Google-Smtp-Source: ABdhPJwoTNiNDBlw6GvBoxPFCy9ADtEZvxhrUgkoESKJ1QDiX6oG4WcQ/XlBSznWpYBqCKitRm6J1g==
X-Received: by 2002:a7b:cd08:: with SMTP id f8mr3755835wmj.142.1612976427988; 
 Wed, 10 Feb 2021 09:00:27 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id u14sm4349739wro.10.2021.02.10.09.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 09:00:27 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove blank line from include/autoconf.h
Date: Wed, 10 Feb 2021 17:00:24 +0000
Message-Id: <20210210170024.100937-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove additional blank line from include/autoconf.h, fixes one
checkpatch check notice.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/autoconf.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/autoconf.h b/drivers/staging/rtl8723bs/include/autoconf.h
index 8f4c1e734473..86cf09ca5f06 100644
--- a/drivers/staging/rtl8723bs/include/autoconf.h
+++ b/drivers/staging/rtl8723bs/include/autoconf.h
@@ -5,7 +5,6 @@
  *
  ******************************************************************************/
 
-
 /*
  * Automatically generated C config: don't edit
  */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
