Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD03CD1910
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 21:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFE7587B72;
	Wed,  9 Oct 2019 19:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRp5TEjmI209; Wed,  9 Oct 2019 19:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D39ED8793F;
	Wed,  9 Oct 2019 19:37:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C02F1BF3BB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 19:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7894120778
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 19:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MvTWMwA1ALZ6 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 19:37:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 3ED8F20470
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 19:37:11 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p7so3918736wmp.4
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 12:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
 b=bXhDVAbBSH3nu0+3VBqanYJaQtnG98xE7SV1K8c3DHjr98GUJ2+XwhgVwnX+OVbGb5
 vwG2VeyXxgj38EIhXlxDNJVyYx/APSFtH3OAgpD1mq1CKGv/QJeqgeZiiK9uPJrUMQCj
 5PD4B/kL1tmrvJGSduuDAb37gYg7XQrD9dIL30kq9HUqm9/xYxk1mQ3RUzn4gkgu1u4K
 LcFOQ9lCFeXvPl8gDkS5yXQ1jYE49yuEoRAXR1klzwqq+r34taKXdbrXOv8SZv3X0Vel
 01RUeYDU9UeZ3D9RZyCwOoPNg6b0PfriaEsUHbrq05tWR3qrxQLo7MJHVOOejjKveqHB
 Roeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
 b=lxqZdVHf0mBZrP05uSc9PFmilRBbQFQt+vh4F/FhO85PkkyHjDr1vn/xlL3qZEfqCR
 rJ1Gfzl2UM0FdQnBJYHfSfeD5SAskzHoq1BZaZZIjqVt34S96HF5KItrSG2j0S7ulq7c
 3HMyzCDZPPwV/slAHRHEaioyMAo6+34xAz81BJ7Ep0BOIq7Zbf1ijdMP+dJVA4B/MBGC
 lWwp2wUJcYmVxC3FS5aGj6HkqTUlY3homCZs36ljUdk8ehL71/KJg3kDBxVeOLIsvkUZ
 VdKP6NomOwqEAosirY5agyp1yyvEGwLuSpISkpHWlEejbiVjTbBf2ZkTAmV18AcQ6rN8
 5SKA==
X-Gm-Message-State: APjAAAWyzY8/OTslNYDrzgJlQOU4JPZ7JGhbaQYNOEugv26gEmiB8Kj1
 E46WlHlaZa+YTtdNO9Jo/g==
X-Google-Smtp-Source: APXvYqzZKRGEjsUvJFQOI0BXJvpGfq7FfTl+zFZ1bDADWZ6SAvKJ/nfywHK3MAPrtqMLk3UxYci22Q==
X-Received: by 2002:a1c:dcd6:: with SMTP id t205mr4005907wmg.10.1570649829007; 
 Wed, 09 Oct 2019 12:37:09 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id n26sm1603548wmd.42.2019.10.09.12.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 12:37:08 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: qlge: correct misspelled word
Date: Wed,  9 Oct 2019 20:36:56 +0100
Message-Id: <20191009193656.5209-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, grekh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct misspelled word " check
 issued by checkpatch.pl tool:
"CHECK: serveral may be misspelled - perhaps several?".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..097fab7b4287 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
