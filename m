Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B9432D0
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F41D86365;
	Thu, 13 Jun 2019 05:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TCCzFt_XTbR4; Thu, 13 Jun 2019 05:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14D6C8626D;
	Thu, 13 Jun 2019 05:42:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD1941BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B0A7E207A2
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ8+UW68ujZo for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 321A020014
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:09 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bi6so7216164plb.12
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZ27niwBGpfAIfPP356PRFpDH7tWD5oC0SDQLl+7hjI=;
 b=irZjJx78Il3dB/4zjy5yxsihjDpjF+AFRmUZ3kGSKoUr7erqJGKnMYVoscddaok+qv
 1A0ocqLDfn1u623r5IAc2SkikARbZKidtpPPEsLiAsB9xU2w1ox/TRo03ueWSUw8q9aH
 kFC8IlRNF6YgkTFmOxruPyONHzH1paIw0+xPm2hAEc0CJaR7TPBcNl8Idj35ALpkl7x7
 61l2UWbj2Ph4VHOdCm/cOtrjTu2lANp96d9COKDZU/apYENsGQWfay0ueTX3kUqXR61p
 CAOl+Yt/Nx1s07ax/YNyWk0tInLYL0JNzSQqYV4DbUZTe6/UN/gQ5/U1ID66Zc0KTgTf
 8x/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZ27niwBGpfAIfPP356PRFpDH7tWD5oC0SDQLl+7hjI=;
 b=Av74b8HI/r5cG6uGM68GBgoa5F/9gpTUuvaf3pQB/BWNbbKI0qCGTBil1px8dy22JE
 ihf+Gc7ZOcbpcDjRJ+ClIuEUydSnZrjkceksqCyLJXIK1eQ1DAO1X0Qa3cbnDGJTogd2
 7fhqI98QxqeJtqq+OuncFmpVY0Sb808Ao4k/6VLHBdwyGuIKiVxi7nhLClX8L/Ad03lX
 hQnbSBEg8QUJfuCMRi6zUxwnIHovK5jwBBtnLaQGE1nJrCsei9UYM2wVtGm9CNCkYGU+
 6r6eFEJ7DXx1zJW3xElmMIeyhSotSZXF6UzCAjEMbnyRuViV+KOfTAcCRBfQCULQc2fQ
 JdfQ==
X-Gm-Message-State: APjAAAXlWgJu00+PXwiEaGd4V+nO4aknm9/Zi+FjQhHFlOwzV1QKo/ML
 FuNVHqfMZeqsHn1Tdm4xxfQ=
X-Google-Smtp-Source: APXvYqz1sqKMp34APBgPUcBdSBwBPDd1rRYzq9+ixLowHhqDQX6RO9CWMZghBoBG0tRejmZiRGs42Q==
X-Received: by 2002:a17:902:205:: with SMTP id
 5mr80229564plc.165.1560404528905; 
 Wed, 12 Jun 2019 22:42:08 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 02/11] staging: rtl8723bs: core: Remove function
 read_eeprom_content()
Date: Wed, 12 Jun 2019 23:34:30 +0530
Message-Id: <20190612180439.7101-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function read_eeprom_content.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_eeprom.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_eeprom.c b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
index 433d5d255e77..8594848e9a56 100644
--- a/drivers/staging/rtl8723bs/core/rtw_eeprom.c
+++ b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
@@ -301,14 +301,3 @@ _func_enter_;
 _func_exit_;
 	return true;
 }
-
-
-
-void read_eeprom_content(_adapter *padapter)
-{
-
-_func_enter_;
-
-
-_func_exit_;
-}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
