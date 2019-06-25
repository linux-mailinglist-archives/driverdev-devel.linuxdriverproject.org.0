Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E92C556E5
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCED685F8F;
	Tue, 25 Jun 2019 18:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-DG-mRhorde; Tue, 25 Jun 2019 18:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDDA385F81;
	Tue, 25 Jun 2019 18:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE1D31BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AAA102079C
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9IVWKTS7MtB for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5ABA420798
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:45 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id e5so9255030pls.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lUeZCQu7IkZyTo6f12/xdvpIlBPtEGZlNE9DSsLV+Ac=;
 b=p0xaDUw9wpzK5XCs9BWhC1JhfcU9lla/mab2ubGi5iGBKqf+d64Q9ti1qyZvpr0o0p
 mFwLMsI/VzpvDEm0gz7xs4N6qeFJDXQwJIftrhHtHJG5tmzkYtjxLN6rL/rv3zyu6IHs
 XhIk5h4N05NwP8cHWGrft6RmgCuV3YF3DuN4GZ/vuDoIeAR8MgbVKcH0cCBlWUApTInQ
 DhD9DGbiB5RJHBkoNEPdLtdPZoQa5Ud2GTk28pWNvbjfAGnX9d/40+ge2ZqhvcbPXA8e
 PcZqCO+5wZRAH7S6zOqLSDmJDx2CqntWw9H55YRdcashfJ5vyrURNpBY4KDh7u9mmiE6
 uHSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lUeZCQu7IkZyTo6f12/xdvpIlBPtEGZlNE9DSsLV+Ac=;
 b=DzDcgkGWcmP8Xd3uNXkqQ9TAJKHXIhgnZc1sgTafnoiHORsCVKi0JwuYC18YUTXtmI
 h7c1kBNVDawLru/h8HpdYnAbPbsnDD1GZEgihOgBN+in6JUCM3lymNx9QSmnoHAqRtJq
 m5aXHH03iNalBghwV5snjktROOK4GViil5zG9WBUiITU7KB8XqfO/+cW2UXgj4hpWXnI
 WxlRCwpsD7EZG3C1IEi1LGmozUymH1Zc2BBklEB4X6F8n5Y+mSWIqsKS5BRc1ib7iZiP
 Vuv6Z71Ve0SvlkGoh9y+DKtn+1V3Ms9P8f7835SauLr7VOAWmE0qMlGo0dfBOn4JOIdX
 V8KQ==
X-Gm-Message-State: APjAAAXW4eYWHnTjg6IPrwPE7Lok0owkug2qCv3kkg79MdlTPAVzdmH7
 N8T13OP1zk+HL0ujrkX1dtU=
X-Google-Smtp-Source: APXvYqzpSRRotp9f+BDQ8j/fYEO7IsawFqRe3jEzRo71rZcIGRM6NFM+Gv1j21drEqHDO76DP0kGig==
X-Received: by 2002:a17:902:aa0a:: with SMTP id
 be10mr2479plb.293.1561486665088; 
 Tue, 25 Jun 2019 11:17:45 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:44 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: vc04_services: Remove vchiq_send_remote_release()
Date: Tue, 25 Jun 2019 23:47:07 +0530
Message-Id: <20190625181710.2267-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_send_remote_release.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c    | 11 -----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.h    |  3 ---
 2 files changed, 14 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 5e231cc5c87d..183f5cf887e0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3538,17 +3538,6 @@ VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
 	return status;
 }
 
-VCHIQ_STATUS_T vchiq_send_remote_release(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_RETRY;
-
-	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
-		status = queue_message(state, NULL,
-			VCHIQ_MAKE_MSG(VCHIQ_MSG_REMOTE_RELEASE, 0, 0),
-			NULL, NULL, 0, 0);
-	return status;
-}
-
 VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
 {
 	VCHIQ_STATUS_T status = VCHIQ_RETRY;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b5e09d52b202..63f71b2a492f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -639,9 +639,6 @@ vchiq_on_remote_use_active(struct vchiq_state *state);
 extern VCHIQ_STATUS_T
 vchiq_send_remote_use(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
-vchiq_send_remote_release(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_send_remote_use_active(struct vchiq_state *state);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
