Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D572141941
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 20:55:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80DE88560C;
	Sat, 18 Jan 2020 19:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WjC0N9A00gS0; Sat, 18 Jan 2020 19:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D90885531;
	Sat, 18 Jan 2020 19:55:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 371481BF45A
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EAF120130
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Vu29WiFQZYE for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 19:55:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id F074F20110
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 19:55:12 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a5so10620460wmb.0
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 11:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eM0XrNuGjQFOSpo+CZClXSAP8gXCw6sp9uQ5zawRgtI=;
 b=IwKVDQ8JkIHm1b7AigJDfK4SmLviI6HnzRsLfL5aA2kxFduiJpmQgW0Jg5lImk5zVZ
 6hHF962TrC54WZNuTwgrzKvkOqtyYxptb7VBNouO/yMe0Lmja8L5F5Y8Ha0//mmGtsbN
 uOftkFPjGH+OVkhr0DUkwqxrKfrBCdZK19rPUVRXWjSHLoKrW3WKvbhwMAhLEv2oZz7I
 jeUw/0ZVdCX7HFcmCgpH+wzZEZqhVauYOBBlK6b8IbkTizoaX5Qtg6bOiO5BlD+NAO8E
 HLxgPLP1gsKpccJ1AjDhcAKFw//kcEvSD6zdrY99LCZrTnCpXJmi1GCcnc63YeIf7RRQ
 5u3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eM0XrNuGjQFOSpo+CZClXSAP8gXCw6sp9uQ5zawRgtI=;
 b=eNny637FhE2xL/gWkara4vP5nxgJ1kLrarmzGQqqqr31qEKliwUjA/AqkC+RHgg9aG
 aOw8PqeLHxqX+c+5XQ7dpCSpBBm/NIQpRH/eWXEPIofqBcth4DQQ4DaanUv2+6f0VuE9
 05tnd6rcXA13zUIDRrKYqM/qe0eh9FoVPogz2Mp91DI5Uu4Lus5jk+IrB9WiYy0lM3hS
 GnqxaTIeTXwM+qc4X2jy+zvrS2xniADhK55yJYdnO6QiT2K2hmr4XqD6MsGlfQr47far
 yrs67YbBHaVAwBlxc0IUtiQWKdbvfYsZpLQJPHww5QJHoZgpcgbAgQAgGvig5gHJjTpu
 pr4w==
X-Gm-Message-State: APjAAAU+PSUO/Ax+Xz29MQir0Vf8NCbtkalBK/EJ5GOgGfy0pVjryWBr
 zDMmekkCWjUGm8fLvk1YnP8=
X-Google-Smtp-Source: APXvYqwMBqLoaxtd7GUtIPi9YaNzM/dA1ehyBk5DdKCzfkfHtgLcs8qbzHDs6Qe396P9B4fJ1rm34g==
X-Received: by 2002:a1c:44d5:: with SMTP id
 r204mr10884223wma.122.1579377311339; 
 Sat, 18 Jan 2020 11:55:11 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id z3sm39877523wrs.94.2020.01.18.11.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 11:55:10 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8192e: simplify rtl92e_evm_db_to_percent()
Date: Sat, 18 Jan 2020 20:53:03 +0100
Message-Id: <20200118195305.16685-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use clamp() to simplify function rtl92e_evm_db_to_percent() and reduce
object file size.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index dace81a7d1ba..caf36b6bf0dc 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1973,18 +1973,11 @@ u8 rtl92e_rx_db_to_percent(s8 antpower)
 
 u8 rtl92e_evm_db_to_percent(s8 value)
 {
-	s8 ret_val;
+	s8 ret_val = clamp(-value, 0, 33) * 3;
 
-	ret_val = value;
-
-	if (ret_val >= 0)
-		ret_val = 0;
-	if (ret_val <= -33)
-		ret_val = -33;
-	ret_val = 0 - ret_val;
-	ret_val *= 3;
 	if (ret_val == 99)
 		ret_val = 100;
+
 	return ret_val;
 }
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
