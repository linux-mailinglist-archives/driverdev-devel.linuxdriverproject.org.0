Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FD71EC212
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 20:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77446884EF;
	Tue,  2 Jun 2020 18:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4xlyY8IDPPd6; Tue,  2 Jun 2020 18:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3F4D88437;
	Tue,  2 Jun 2020 18:46:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D29011BF5B3
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 18:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF6078655C
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 18:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZ3C7DIyfvGf for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 18:46:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 582EE80ACB
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 18:46:32 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id r10so5491688pgv.8
 for <devel@driverdev.osuosl.org>; Tue, 02 Jun 2020 11:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KjGFYyFxgPYs05yaRJGkiTGGqOdTYKxkxLdoLAX2dfc=;
 b=umDxVyYdwoQVgslyAnCov/qRec06itnasXt33K/1Tx+Q8ZmZvHyxMaMvFdd28DbusM
 00OSH9nQ3R40zOLyUUXqK4jyjOKSjW5IZxLS+ityplv0VxKv8HxdfUDHTVT7PQKaoSeB
 CIRzOgqkQJ56y9F5GjagLKE5/3qqD8eGm3UZA6j2Ujd5zNrI2Q8Qat3qcFHeqOL3uKbo
 LaQsDdUIxL9GPZoHUNdLRXS1BBeitjt7kbbmGf2Al1kpzpNbAUm3iZg1x6oA7jGpcBh+
 hrI64AI9nCHF3YvHI0J1geuB6VLPTt20Gw0XZYK0+rAKn2jSk24PzrIGOl4HCvLJQKn3
 ZT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KjGFYyFxgPYs05yaRJGkiTGGqOdTYKxkxLdoLAX2dfc=;
 b=tbYOtTK1Ofm+NsLsoF7UwByEvuGUT9hE22DhacsmKalLUllgc6SUHfI2JUur9yf5yT
 k2ssrdVyHByfFl058Hai3+gkoF0u+sSr0vqcqz6z8BQE2eAxAxh5KRZeirHloyYYZ9Hq
 jAPLmuZ74ltBiZNc0IcYwWKuBIpGlnie5lZKN4jnFFiD3DhIJEWbozo/zm+xi28Oyik+
 lqVOrw7wh6XXqdx2LX+gsaCoaU/Q344ZW/ru5xV8EQ4TncO3jpa+F8cwn+XlrBlLEQnk
 izspGqVggYBNH8KpY6chh1OqXizKxWHKtAN1RQ4xkJTphp6xyjboZADbdbZKZJhRvEuJ
 vbPQ==
X-Gm-Message-State: AOAM533Oh+geWUZb/+kNMT4UtG6C6J486gMH4GIes9EQWdrwnaa/o4OC
 RiY7+wdczj54bhEH9XY+mYI=
X-Google-Smtp-Source: ABdhPJzXP7o7aqixQ14sESQ0eCXX2+MysWeKa5rOX2JW53KzJBa/ov2sDcBhfSB4Q3HNGTYycAWfDQ==
X-Received: by 2002:aa7:9910:: with SMTP id z16mr3427117pff.53.1591123591678; 
 Tue, 02 Jun 2020 11:46:31 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.172.1])
 by smtp.gmail.com with ESMTPSA id o21sm3056833pfp.12.2020.06.02.11.46.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 11:46:30 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jamal.k.shareef@gmail.com,
 dan.carpenter@oracle.com, marcgonzalez@google.com,
 hariprasad.kelam@gmail.com, tasman@leaflabs.com, nachukannan@gmail.com
Subject: [PATCH] staging: vc04_services: Convert get_user_pages*() -->
 pin_user_pages*()
Date: Wed,  3 Jun 2020 00:24:17 +0530
Message-Id: <1591124057-27696-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Souptick Joarder <jrdr.linux@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
        https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
---
Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.

 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 38a13e4..4616013 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -287,12 +287,8 @@ int vchiq_dump_platform_state(void *dump_context)
 			     pagelistinfo->num_pages, pagelistinfo->dma_dir);
 	}
 
-	if (pagelistinfo->pages_need_release) {
-		unsigned int i;
-
-		for (i = 0; i < pagelistinfo->num_pages; i++)
-			put_page(pagelistinfo->pages[i]);
-	}
+	if (pagelistinfo->pages_need_release)
+		unpin_user_pages(pagelistinfo->pages, pagelistinfo->num_pages);
 
 	dma_free_coherent(g_dev, pagelistinfo->pagelist_buffer_size,
 			  pagelistinfo->pagelist, pagelistinfo->dma_addr);
@@ -395,7 +391,7 @@ int vchiq_dump_platform_state(void *dump_context)
 		}
 		/* do not try and release vmalloc pages */
 	} else {
-		actual_pages = get_user_pages_fast(
+		actual_pages = pin_user_pages_fast(
 					  (unsigned long)buf & PAGE_MASK,
 					  num_pages,
 					  type == PAGELIST_READ,
@@ -407,10 +403,8 @@ int vchiq_dump_platform_state(void *dump_context)
 				       __func__, actual_pages, num_pages);
 
 			/* This is probably due to the process being killed */
-			while (actual_pages > 0) {
-				actual_pages--;
-				put_page(pages[actual_pages]);
-			}
+			if (actual_pages > 0)
+				unpin_user_pages(pages, actual_pages);
 			cleanup_pagelistinfo(pagelistinfo);
 			return NULL;
 		}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
