Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE5D338759
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:30:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF18C4ED5D;
	Fri, 12 Mar 2021 08:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KcIJo-9DQT9S; Fri, 12 Mar 2021 08:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E95794EC5F;
	Fri, 12 Mar 2021 08:30:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D43081BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3B8E4ED4E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgg7OpzWbpiD for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75F9A4ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id k8so1271561wrc.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=T9CKWo9sFF+W2eNWmCTBgx9PvhEcsMfsKlEbTp+0Zto=;
 b=YUvwLERXnzOW8auVb50fybBo050WbuYTuuXUOV4etYBniKg8+oTO9ch9G0x0LhVZaw
 tFJfAdzZ/YaRevWbS1pxQUBUn6xqqp6zYncBz+0eTXjC5Y1imqt1fgrkAntho/3GsjEY
 YrJ+xq9HovqcBIFeJejaBZoG0qKmG5epvqkguS/Rku09vAyR/0HANrbs1rTrZZTbakz2
 QiPXETGML6myaLp33EOCLrpA/b1hHwldo7U/wO9tydCUg5/CY7tGmMFjcmgJvRP42mG5
 zbgEPRD8xpV5mvMY9jiPd/hSwNRt+Royl9TmX1vkbGCzQzc8kMrpdINZ7nbE9i9DmjiB
 xElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T9CKWo9sFF+W2eNWmCTBgx9PvhEcsMfsKlEbTp+0Zto=;
 b=ZVqgdW4Nj1lpHeafN+xgqLE6U2Y8YIiepFVealSVwe16/UG8oqrWTsX46z/FjNrEJK
 8x7rdE4dFQLuUFeUCQTE1kEXLUHH6HYFYrJ4YYKRshmkkWHjk1XzuT51//WttfeQFuVH
 TIOUO0hhQVEEalw2mhnqPt0geQpmhtKJBUp0rjw0yz08GYIvrq2Bx3HvqVYRIoUktpb5
 T4DksoIwg5hOsb+Giece9Tbub8rzeT8dNsgDNIaLrD7Snq5dI6m0dvDNWhgRnSHKmiqe
 gUma+6KoN4UnuTwEt5w0Yi98NU/joTmsuOdZMGeQZP8lIK64M9QoIWg9KWu2gl6cbnnT
 cslA==
X-Gm-Message-State: AOAM5313pFTG0f9Qp1MfMyKE/SRAoXCNHeFDvyudbeuYw92JYjTeZ1zQ
 FtM5KfYIC4wWofI4IrFvYiz1dsbl6Oc=
X-Google-Smtp-Source: ABdhPJyLuux1MZcngIF2yRNkXbw5KDmG3zJXpZBLmnp8B0Hg5jKVKA3RpEfmmSRuv0LofAKX5ObD+g==
X-Received: by 2002:a5d:4fcb:: with SMTP id h11mr13339688wrw.66.1615537618783; 
 Fri, 12 Mar 2021 00:26:58 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:58 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 17/33] staging: rtl8723bs: remove typedefs in osdep_service.h
Date: Fri, 12 Mar 2021 09:26:22 +0100
Message-Id: <20210312082638.25512-18-marco.cesati@gmail.com>
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
    #83: FILE: include/osdep_service.h:83:
    +typedef enum mstat_status {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index dcc3cdce6d4b..c241bb66a23e 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -80,11 +80,11 @@ enum mstat_f {
 #define mstat_tf_idx(flags) ((flags)&0xff)
 #define mstat_ff_idx(flags) (((flags)&0xff00) >> 8)
 
-typedef enum mstat_status {
+enum MSTAT_STATUS {
 	MSTAT_ALLOC_SUCCESS = 0,
 	MSTAT_ALLOC_FAIL,
 	MSTAT_FREE
-} MSTAT_STATUS;
+};
 
 #define rtw_mstat_update(flag, status, sz) do {} while (0)
 #define rtw_mstat_dump(sel) do {} while (0)
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
