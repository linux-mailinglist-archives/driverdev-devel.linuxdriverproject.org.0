Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 470BF39B8B
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 09:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C22521539;
	Sat,  8 Jun 2019 07:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USgEUhLpksph; Sat,  8 Jun 2019 07:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD34920375;
	Sat,  8 Jun 2019 07:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8DB51BF47F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 07:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E3D27866AB
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 07:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snnyqyElELD0 for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 07:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CA38866A3
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 07:28:04 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v11so2324523pgl.5
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 00:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KSVlshasRK6kuaYQCslppXn0EIERktbEU2+65t8aULE=;
 b=ZHCVPBZoPBaQWlf8nIINFwXbAilNBdit+ZmITnKBqY3URAhzkS5ZLYD3Sg5WD1+SlM
 EHe0fZWtxnhSit8QaxsgDYsgCpywkciqBAPULG6pdgOTkZdaOr+ld1la+t9CSdKlTcB2
 B+FURsMt0keS6+gRy1S8Pb3Pv09Ol/LiTZzr119sCuy3pJueuYwYN0EaBie5Q08eX0oW
 mKbDmBcVaaVauEn16BanZ1AO12lfeba6gNRIVPIwDS4GEOoPNSHfkjAEz/cMcTOUuZrw
 SDv1m13u/pzzPkmX0iVJa9DrbDh6ELJhQyd7VuvTxtSIvRBUZWRHZ1o9M6ppdemiQlYc
 hh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KSVlshasRK6kuaYQCslppXn0EIERktbEU2+65t8aULE=;
 b=ICLwkF/Th3ft1Vpxu0h32D5ZhV+sHdhs7oQwxuCswZSdSB7OFpSWtdY2FybhifA+QL
 YmXa/HVEqPnTu62X0q6m9XPblgVgUPi6QjhZDZr6jz6oeSNvcKLQJPH3Z+0hxH+o6TaT
 XZfUfG93wOB7LaXxiYn94crW+ppA5awUGMdJCWTbuhjeKlNFozVcZ6b7480M2fDjLJiO
 2W8NU1uhHPu+wPqAnbuFTkc4RKbsrq9vb0BE2SIVp9ZmG7/BHkvO2qztWSVyiHXKt2Qh
 yHPG8UZxPwL1XPTHWx9L3zYbIfO3qJ9/qqDEP6Z/b9vIo8RqpN7yg60sr0GT9aZPNnTH
 vhoQ==
X-Gm-Message-State: APjAAAUEhOSE+N+PTE2vUFqw68mc9N15CCEV9osyK93BWyT4UZfCJLU8
 qHX+3cgBAYZLFXnsaX5sdpY=
X-Google-Smtp-Source: APXvYqx/txq/nXjor41mhXWLGqcqTht4Z1OGnsEiB2uBILygtD1esnEile4rletDWLc40Xo/gxtTFg==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr62586880pfd.115.1559978883957; 
 Sat, 08 Jun 2019 00:28:03 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.157.107.159])
 by smtp.gmail.com with ESMTPSA id b8sm5092440pff.20.2019.06.08.00.28.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 00:28:03 -0700 (PDT)
From: Hao Xu <haoxu.linuxkernel@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: kpc2000: kpc2000_i2c: add space after ,
Date: Sat,  8 Jun 2019 15:27:47 +0800
Message-Id: <1559978867-3693-2-git-send-email-haoxu.linuxkernel@gmail.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
References: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
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

add space after , for #define outb_p(d,a) writeq(d,(void *)a)

Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index de3a0c8..69e8773 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -126,7 +126,7 @@ struct i2c_device {
 #undef inb_p
 #define inb_p(a) readq((void *)a)
 #undef outb_p
-#define outb_p(d,a) writeq(d,(void *)a)
+#define outb_p(d, a) writeq(d, (void *)a)
 
 /* Make sure the SMBus host is ready to start transmitting.
  * Return 0 if it is, -EBUSY if it is not.
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
