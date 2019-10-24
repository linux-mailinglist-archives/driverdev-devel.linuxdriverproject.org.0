Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10B3E3836
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3703488356;
	Thu, 24 Oct 2019 16:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nXDq44T9jwbc; Thu, 24 Oct 2019 16:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B9BB8829F;
	Thu, 24 Oct 2019 16:39:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF5B01BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABF1B86985
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGfYRnDAwdwE for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07D398699B
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:39:20 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id w14so38759731qto.9
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qxEej9ZhTTEroEC+KQyp8Bt7h8gyIv3VgjtcTdAbGc=;
 b=cChmRdzX28Kw1sZcn+RGsEflTdu+W0jowQ985PnjZ9JMREt9BwXphzbCAZw7enPVRO
 FK3gUvfSYrD5tWP9/Xzr9PX7cpuu7ymqz6odOX8F4rK1198PnxVJ0rnX+6/UdzGP/sms
 VXbz+zNUgnuMB11mVCofXcA3L1BGMVeXGx41c1C9ItAgdMzJ/jZbmyVj6+081eI4A8PW
 ySnhjBu1TgDfl2QSn9S1KjUnMcbRvi9x6QpHUORPLiWZBgtnqTS8mwyZDCznUiEDFJdW
 PDRnNI2VZ3f2RR0CqGFo2bCFtka+FIkrrKZine4AAuMzOqykTtuqDrYKTLrCDuuqnBgh
 9J4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qxEej9ZhTTEroEC+KQyp8Bt7h8gyIv3VgjtcTdAbGc=;
 b=t0LhFDWD5cnCh5/DrB29LrbzbnZI0jRmm6q5d5nuLJIegENA1CDzS1VN+Xblodl3/a
 7wpie3fR63S0TBjZ9DwteoeZRxnAg8Uz+I4I14Lkwa+1gm6bvEfCOo/YtewrVpczcOTm
 QRazGHC59hTV2k9wBCBKwbXe71yRW5slwmWq5Ogl/BsXBIBe5Js/jwlvoG2J6WlwlGSr
 5dCrfpETyQpWQvnAp5u5jpNmkjlQX2csqrKpM1B5eeVzv7IrjNPSa7Rk7mt3erZSxRC9
 x43YzqPxZjCOX7KOf9GNLEpkBZXUPXpeVAcf39QmMrRmDxfna0EPdxlVF95INZj2xJaL
 5c9A==
X-Gm-Message-State: APjAAAWqxHSyFEF2qO2YMeKbqWjJai6uwZlMzG0InviWbmIXfKwOTTD6
 MUrMUEpAQnsPphm7UVFQcdL7lmSe0L0=
X-Google-Smtp-Source: APXvYqx5wkL3B+B9EVLQiK3NwD0XfT33+WW76uAeEeNoCepjIHPbYXy9SGJ7HSpve1JTxF1pjnaCwA==
X-Received: by 2002:a0c:fe45:: with SMTP id u5mr15592957qvs.17.1571935157520; 
 Thu, 24 Oct 2019 09:39:17 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:39:16 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 3/3] staging: sm750fb: align arguments with open parenthesis
 in file sm750_cursor.h
Date: Thu, 24 Oct 2019 13:38:22 -0300
Message-Id: <20191024163822.7157-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
References: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Alignment should match open parenthesis"
in file sm750_cursor.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.h | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index 16ac07eb58d6..b59643dd61ed 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -5,14 +5,11 @@
 /* hw_cursor_xxx works for voyager,718 and 750 */
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
-						int w, int h);
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
-						int x, int y);
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-						u32 fg, u32 bg);
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h);
+void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y);
+void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg);
+void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
+			     const u8 *data, const u8 *mask);
+void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
+			      const u8 *data, const u8 *mask);
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
