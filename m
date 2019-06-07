Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F2384D4
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8289D86BC9;
	Fri,  7 Jun 2019 07:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pv1N2P6Zf7Af; Fri,  7 Jun 2019 07:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 311D68693D;
	Fri,  7 Jun 2019 07:18:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1651BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B8D18693D
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgGRN3xfuGSQ for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9A7378323C
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:18:16 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t16so653245pfe.11
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N3m8s+2059Fu//diNFBATOjWg3fyZfQ3e6DmQTqD6d8=;
 b=iOMVbhtnqeRZvvXsdXNBoe43Jqxfa+bhlO3TY5YwqJsr/f0immkDnHSix0UdxqBtga
 4olOcewyVGr5YbODNCk/k1NHp4833YxSm6kYX2e8+yc3v/nOBj7XeVNLvdPBbdbx+vs4
 o7zG6ZlOzAlmPLX6qXi0PXe5mEHsyFZExAk3tbbZFpNe2767b2zJBYRJDvmSSD2oSZlP
 J+RIXGK1pO+srwmT40YPbCNxLPWFGZ4elNfTtmVzrWZhSGRgEnIoQvVVHBsye90IPMlD
 hj9A7yboMiuINF58nDdt/GIA+rr9wbvqxnGSqi0taB0xicmA3H0B991w4JfEiNQw39w/
 x4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N3m8s+2059Fu//diNFBATOjWg3fyZfQ3e6DmQTqD6d8=;
 b=lZrASTZZK4o+ON7bxA9Lch5PHfBEXwj+UxE7+D7GdHqif4dUBfdrQ5ukRWiJJfW3/x
 RJ5/wMk+UfYTxXBITUueC3JqCOB7VSPwF2JcsHAFnm6KbEVOzkfYQEoB307JEdt3jCom
 nyInDeF/KFxx/RqAZCJOfXxejUrzFfzpyh7nF8Did6iCjK8JWP5CpB52fKtpYaRbfTa2
 /Caei3aWTkys7ZwoIqKAz/IYNGfRhdCRPChmaWSyBGfTU8UccFREbWykv7V80OUnGNKq
 Lx/LKMNsT7BuxVs1VOsYWuqDIYn187xlr9VtLAiTrThnlFQWNe5HIuQNVpg9KwKg+oDo
 jh1A==
X-Gm-Message-State: APjAAAXVUJX3zs/I+lh3Wf3R1R4QaoEVbkStb517u8qX0Cli+DKbpLb1
 O0Q6ovEEcimiH+vQO4vCi1Q=
X-Google-Smtp-Source: APXvYqxpj7tRa6U0t++O/ryXNuCaMRHWHGvYKe55FI9ONfUDOjSC8O0y20Xo/7Mqp8fMYwICAjyQVw==
X-Received: by 2002:a63:5d45:: with SMTP id o5mr1564440pgm.40.1559891896267;
 Fri, 07 Jun 2019 00:18:16 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id e26sm1222390pfn.94.2019.06.07.00.18.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:18:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, colin.king@canonical.com,
 hdegoede@redhat.com, straube.linux@gmail.com, julia.lawall@lip6.fr,
 hardiksingh.k@gmail.com, pakki001@umn.edu, hariprasad.kelam@gmail.com,
 arnd@arndb.de
Subject: [PATCH] staging: rtl8723bs: core: Remove variable priority
Date: Fri,  7 Jun 2019 12:48:01 +0530
Message-Id: <20190607071801.28420-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove local variable change_priority, as it takes the value of the
argument priority; as both of these variables are of type u8, priority
can be modified without changing the value of its copy at the call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 53146ec62ae9..b5dcb78fb4f4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -625,13 +625,11 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 
 u8 qos_acm(u8 acm_mask, u8 priority)
 {
-	u8 change_priority = priority;
-
 	switch (priority) {
 	case 0:
 	case 3:
 		if (acm_mask & BIT(1))
-			change_priority = 1;
+			priority = 1;
 		break;
 	case 1:
 	case 2:
@@ -639,19 +637,19 @@ u8 qos_acm(u8 acm_mask, u8 priority)
 	case 4:
 	case 5:
 		if (acm_mask & BIT(2))
-			change_priority = 0;
+			priority = 0;
 		break;
 	case 6:
 	case 7:
 		if (acm_mask & BIT(3))
-			change_priority = 5;
+			priority = 5;
 		break;
 	default:
 		DBG_871X("qos_acm(): invalid pattrib->priority: %d!!!\n", priority);
 		break;
 	}
 
-	return change_priority;
+	return priority;
 }
 
 static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
