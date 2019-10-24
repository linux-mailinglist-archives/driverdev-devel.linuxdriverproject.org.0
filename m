Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8E3E3826
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 329B8878C1;
	Thu, 24 Oct 2019 16:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i+XEmFZZP9rr; Thu, 24 Oct 2019 16:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B1B7878A9;
	Thu, 24 Oct 2019 16:39:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4191BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8743D88311
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EmYVd+tV7y+6 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:38:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E90A3882B0
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:38:58 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id c21so38738450qtj.12
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JBkAEAHyhcMPhU/HM87Wnb8+AYbsPLYrzfZ2kbcSds4=;
 b=U77v+xrQBX5EgzRNSk0HwGcyC7fd1Fr8Ij5+E9THHVZwterT/Vq+sgvSm9y7Jabwbd
 Tj7s2JGAD73155WXh7726JQLEum1Qm6cWiJBfsWasVtT61Ts8fUaRrJiNsE0s5rS+jjV
 7LQzcK8yaQFiODf6uh84hqCSnGxG570yDuWQRRddOZk2rgql770Hn+KEXoGfPQ0tu8NE
 80h5rQUI14/ApIyzx15gFnmgLMZmslLqpVwBn1epXMD/34V2Y6gIRDd0esp/DgcgmUlz
 HxvKUSst3EOUNdzpLq1c9LdEgKUk5yHFzIYxL1jqlRNxXjUji/4IDbkPFXdl+NgVuSjU
 CJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JBkAEAHyhcMPhU/HM87Wnb8+AYbsPLYrzfZ2kbcSds4=;
 b=hL1jrH194AVM9cYEEH6NnYCsqbPmGcXl64/Q7V62WFtYGMJDIZ26SlnXYoWg5hy6Nr
 2KlQDfG76IyKWOoPscMTxD0pRmVu7UtRxoUWRBwkTF700FaflPiO+0qBph+9lbvDcVul
 8vstsQs1q04Ugb94dTkpz56qBMTwyPGvGjWM2cAZbWwUBhOdqwuhpw2EpPwqVwoDbc3Q
 RyFLsfOjf9wN6xT2bDn2CaZA3kazvk3SDLGO4N2kGFjHdBT/7JmezpFX/2peVsV8OEPR
 ElqQGaAt7XKj3TXGP+CuUUhJa14P4MOmhmDwFjEuQlvBJNwTRd8Ss3DW2NL8LB8doahm
 bWKg==
X-Gm-Message-State: APjAAAUiSpsE0vpl4GmTIgwDgrETFr6KFkdgX32zS43Xk+9WI8AvYJKY
 ozpN1YvunBFORGfXXrrrOaY=
X-Google-Smtp-Source: APXvYqwsyAuKL1oNUlTF/saCGiUkUfhTm47TCg9IXrbcJpfJqFln8YXoQD6i5Tl5ddPVsi3KTJUoSQ==
X-Received: by 2002:ac8:ac4:: with SMTP id g4mr5103867qti.326.1571935137807;
 Thu, 24 Oct 2019 09:38:57 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.38.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:57 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 1/3] staging: sm750fb: align arguments with open parenthesis
 in ddk750_sii164.c
Date: Thu, 24 Oct 2019 13:38:20 -0300
Message-Id: <20191024163822.7157-2-gabrielabittencourt00@gmail.com>
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
in file ddk750_sii164.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index bee58edc84e7..73e0e9f41ec5 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -141,7 +141,7 @@ long sii164InitChip(unsigned char edge_select,
 
 	/* Check if SII164 Chip exists */
 	if ((sii164GetVendorID() == SII164_VENDOR_ID) &&
-			(sii164GetDeviceID() == SII164_DEVICE_ID)) {
+	    (sii164GetDeviceID() == SII164_DEVICE_ID)) {
 		/*
 		 *  Initialize SII164 controller chip.
 		 */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
