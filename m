Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F14ECD906
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D95A8788D;
	Sun,  6 Oct 2019 19:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mU+OTT3niCXx; Sun,  6 Oct 2019 19:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4951F87552;
	Sun,  6 Oct 2019 19:59:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BAC31BF23B
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 332CE203FF
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQwJD5xIPDyS for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:59:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C09D5203D9
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:59:02 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id m15so16323397qtq.2
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 12:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VIkpy/BTy4mETTGYhXyFaeQ00CMXQeC2LlAguquFlNU=;
 b=pDwKgK4YdK/MSdTSfrC/TmAWkbMFvvFSShd8fVkQMfx3aAXzSj8hex2s7n1x7COIIt
 h4KQdh2r+KpzkQ0A3CKgE7jJEsLD2LTpKHEBf4z70qBU16XRy5AySI6bgtzj6q+T0v7n
 LCGTtoVf28CCk2wij8bzGt4CX0DQS4Uh/GI7/UEqg3wEjj8NAlti8YamJ9Mt3bHxzU8P
 Q4VrFiuo7EoO9Yw68JbP7n7MEVO5UhsID7REX6KWnCk/DwDApBMGvzxLybTTauqcTJDi
 QPjIRW2HwX04ziBiFo4jNELLUkWuOZ4KOrkNBxfvYYcuAUYprjEPLlI6xrlkd0IvZz3a
 +AEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VIkpy/BTy4mETTGYhXyFaeQ00CMXQeC2LlAguquFlNU=;
 b=uoRvbWGGFrdjBjgczkXFhHCg6nM8TJjrgDAZ0419gI0XNUBCF/wGUbSui8pXYjst3v
 6YC8FJLHENziB+/hUOBt31caWxI5rKYEGAeLpBvYnu7L6vfiGPQI/vZdikteHmoh4fT9
 TlzpBfBOqDmRwgAlXA32vVMJaj39CTjdlUlYNvbGSqNXAiVqhE9p2Y98mnC5J0PcvZcV
 sAL1okYNmJk5f1gu3wLdp7vzUB1C7XsTv+2NrZ46eiAKJDj/L4nXFDIky7auXSTgZH2C
 UlSncA4n3CnD4I/IZEeDZn4tRXCFMLhFypX9M1u60avmgOVAXvy27uw61x4zo1XCEhct
 vokQ==
X-Gm-Message-State: APjAAAUHlIqoPhW4KrPi6qda1rnFbMf1ZpjYE7OXgQ4wj/HHsyp51krS
 bx0+voCwhYFaLtqM4VcgGu4=
X-Google-Smtp-Source: APXvYqx7veuDUF0aEJ2IVMT+VXi/lM3pCmKBg1TD15llbzkY0LhmaMrCug97yL5C8QkcY+WsZnYp/g==
X-Received: by 2002:a0c:db94:: with SMTP id m20mr24595199qvk.142.1570391941678; 
 Sun, 06 Oct 2019 12:59:01 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id k54sm9623911qtf.28.2019.10.06.12.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:59:01 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
 gregkh@linuxfoundation.org, quentin.deslandes@itdev.co.uk,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 trivial@kernel.org
Subject: [PATCH] staging: vt6656: remove duplicated blank line
Date: Sun,  6 Oct 2019 16:58:54 -0300
Message-Id: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "don't use multiple blank line"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 856ba97aec4f..a1884b5cc915 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -362,7 +362,6 @@ static int vnt_init_registers(struct vnt_private *priv)
 			goto end;
 	}
 
-
 	ret = vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
 	if (ret)
 		goto end;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
