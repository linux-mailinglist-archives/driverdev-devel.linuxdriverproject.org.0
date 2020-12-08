Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E39A2D21BD
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC0EC879FC;
	Tue,  8 Dec 2020 04:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HygnXttwjl0Y; Tue,  8 Dec 2020 04:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AEF7879F7;
	Tue,  8 Dec 2020 04:08:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30BFE1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 092952E508
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zh+B78qQZuQY for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id BB7A22E4FA
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:58 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id d9so7077925iob.6
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6MaVqJz1MuuStc7gDSsvfbbKwLVl2c/1PaFY5X49f+I=;
 b=Dw2PYBS7dZNE4iApn4YXNNn/BPheR9wKellsPeZngD3fTgGfr57vWfsZh/iU0WSkTi
 uciEUxlx46dda8SwY0QnkhlvY5DNR4dpVrCK+A6U4h/1dm/COuxJ8YkOzXDkEIYe+RyM
 TBerNobNeuqUvxuyNj7QCc9RY9BSbdYMzxJ4XcsnfTQDnt98eOWT50RMeUIZWRTjmsdF
 qN+hW8ryeXP0hAyJ7xys3jTRl4r7a4Q/Gvb/FyhliRcah+yOMf+y+4zT5/rDxqakYGe1
 qP+GAGkiPJVywVNeHWOzlACyAF6Ig78MBrfZTZ7RYQy0JVbPmxGUWLl5M0f9wwJ5Mv/B
 dwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6MaVqJz1MuuStc7gDSsvfbbKwLVl2c/1PaFY5X49f+I=;
 b=Fz1zGtgcWoLGUjYgPzghA4imeVk/nOv5gymkL2dov8oZNR/d0vexumpw6BtQJ48xR4
 g7BwWKCJDakIL9e2Xu99RE+3sSkWA4ONgDUywGSTsuWAja9cflOa2SX0PDqJVZS1U22q
 6WfBhC4W3w3C8BMTS2DsRzMbfpqd+t+rzSRGYZzleIygyHaCw2yeqy430TnavExEnfq6
 bcMT2VbqKdfatkYAj60nU8laA13tm3O2P3eGnHfk2p42KXiMYA02jOjo81cK557MXXEg
 PQFqpkXxRnrb+JckEiYakSulLPdRFYZFdOZ2YaiSz0uKX41vPfAeWkuN+pWOucjFfL/3
 tz+w==
X-Gm-Message-State: AOAM532eklF0IccH2FKnUPWGNLLM/IJR/dGGPW57SrnNb4qqytYHxtVB
 mXuGGgLBB4vVeKCo6mEmfwc=
X-Google-Smtp-Source: ABdhPJwNTdDKjmZcYmE4d/l04GJR52zwFDSWh8HKV47/GioKHFbmbKYYC8Js3uH2Ow25r5WpERbboQ==
X-Received: by 2002:a02:a419:: with SMTP id c25mr24706945jal.91.1607400478188; 
 Mon, 07 Dec 2020 20:07:58 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:57 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 18/21] staging: rtl8723bs: replace
 EID_BSSIntolerantChlReport
Date: Mon,  7 Dec 2020 22:07:30 -0600
Message-Id: <20201208040733.379197-19-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique EID_BSSIntolerantChlReport constant with kernel provided
WLAN_EID_BSS_INTOLERANT_CHL_REPORT from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b6e255f6cdc5..9d172bd23911 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4160,7 +4160,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 					}
 				}
 
-				pframe = rtw_set_ie(pframe, EID_BSSIntolerantChlReport, k, InfoContent, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_BSS_INTOLERANT_CHL_REPORT, k, InfoContent, &(pattrib->pktlen));
 
 			}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
