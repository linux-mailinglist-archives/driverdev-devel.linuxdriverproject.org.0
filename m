Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4050B39B88
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 09:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E30A586985;
	Sat,  8 Jun 2019 07:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCc25F3x6Gnw; Sat,  8 Jun 2019 07:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE5C88547D;
	Sat,  8 Jun 2019 07:27:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00C4D1BF47F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 07:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF42C866A3
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 07:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQPTKAmgPaD9 for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 07:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DDA9866AB
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 07:27:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g21so1684099plq.0
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 00:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=u3CahkhmSiM44HPpH15qbfZKuXzf9Enid5wRXgbVRzs=;
 b=oI7K3Ky5YWP4vEmEaG26Gk7Hc9F18TkCUNPvTuvYtP1PLJEPrkU7rHxO2v/L0GPDSf
 BEnT7rW+WK62rddCmTDAEXQ9LhbNsBYG3VoMDHsTahKzGFReGtuR7ciBJVm71523pBNm
 bh0UR5op5/VSqeA8OMy1rNCV7efUGgEAvchjrt4z77pRY+URwnhPR8QPq8IrsZ6dHHa6
 VjqEf8yV7a1m6cq/3ApvhOm8knVZwRBD95I33fbhqnYDVyLDLjZ76o4We3G31hni/nrb
 gNdngn7cgP4WTwDg51wl0Sv7JmWLRxIRcB8iUDZ91KoNYWkx/5eQT6eCl/xHWzCDgxFS
 W04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=u3CahkhmSiM44HPpH15qbfZKuXzf9Enid5wRXgbVRzs=;
 b=Htm+zT8TPlgyA7FWFz9bUJo+H8kcHX6dfU8P9Jv115vcsypLCa5SviQbedHbj5l1GH
 a93KAmbIbzaPYlDtTgsFpHhDV+jXLH8mEgOF2RYdR3U4G1f7mAol+EGbsC0YVvnM9tgD
 aBDTQlOhrgxVvh3GdCpDm7eiMp4Vpfs0+PHXNHH8freynNJgZzqkyOJ5th9YjhzcDF1c
 nfMwKPai7dqmNAZGBYxNXSC5t+NZ2djeQETvDgD3JUfRWbWNU9ssBAjzIrJ1SFZ4bU+Q
 kkkoDo5w17eTtOEWuVrECmBe7HH5VKVDsO+iUHqVi3eo5kF298My5aGQWOh1ZnRFLdNF
 zEAQ==
X-Gm-Message-State: APjAAAUSvl79yqpk5eaphwy/3nwv4wguxWPWIA8DbjE0JVHcFXr0254h
 6D1bMZrDVt2vvZj861eX1tA=
X-Google-Smtp-Source: APXvYqx4asH8uTguE/RI7yxJFB3rZqVXoepMJxIxz+Z42k0MFHzygCvVUYr7k9FIYhZI1VEUX5f6yw==
X-Received: by 2002:a17:902:24d:: with SMTP id
 71mr61476859plc.166.1559978871004; 
 Sat, 08 Jun 2019 00:27:51 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.157.107.159])
 by smtp.gmail.com with ESMTPSA id b8sm5092440pff.20.2019.06.08.00.27.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 00:27:50 -0700 (PDT)
From: Hao Xu <haoxu.linuxkernel@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: kpc2000: kpc2000_i2c: void* -> void *
Date: Sat,  8 Jun 2019 15:27:46 +0800
Message-Id: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, haoxu.linuxkernel@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

modify void* to void * for #define inb_p(a) readq((void*)a)
and #define outb_p(d,a) writeq(d,(void*)a)

Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index a434dd0..de3a0c8 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -124,9 +124,9 @@ struct i2c_device {
 
 // FIXME!
 #undef inb_p
-#define inb_p(a) readq((void*)a)
+#define inb_p(a) readq((void *)a)
 #undef outb_p
-#define outb_p(d,a) writeq(d,(void*)a)
+#define outb_p(d,a) writeq(d,(void *)a)
 
 /* Make sure the SMBus host is ready to start transmitting.
  * Return 0 if it is, -EBUSY if it is not.
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
