Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732551844DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 11:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FE9C26FA8;
	Fri, 13 Mar 2020 10:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LmE1xMCEglx; Fri, 13 Mar 2020 10:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9F1926F4C;
	Fri, 13 Mar 2020 10:29:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7C31BF349
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B5B386E25
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sE4xfpKmMVay for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 10:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9949286E09
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 10:29:25 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d9so4029651plo.11
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=kqXMRjosvrMwbkpWYYUMv/eKp41LgZaQN2jfs/TMCUU=;
 b=EWbg2LKqIyxcTZt54OZrlCbltZOHFk7QAr/BjENsjZfWl63N37tNSXyfPxxA0hTRu3
 or4rZWujQhztrFqJsYFJUd8k74Q1F4Tqhf2S3hd6rGIxw40W28bThPpt6NfqCcHbHQWA
 4FXoQ7Pd1UOft3mx57iVigFUPwH0cIsV5yat2JaHnEto1jFCq+jPPaepNxUksBrEPIid
 vY9b4GzJoo4MUSaptYYtogEF/CGnjXQOAaYUFXQZCP0VmpL2vY5j+nwNFN0guSeNqH7Z
 D+3voASXKTB12c7Rt0W6n1c5MEXIcUb0v8hC0Y4iv+tApge+jorRS2kNNs5Gpg95KcqX
 CtFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=kqXMRjosvrMwbkpWYYUMv/eKp41LgZaQN2jfs/TMCUU=;
 b=S2r9o5nrcpPXlyswbUp2dUXm9doGoZZVzKRQZ/jvuHqSl8Xlg+h/H67lHeJ5d0Pd6H
 N2S9Ge2YxO9vuwdAQN7nrbTnu5KCXcjgf62XvVEAmFbcRN0zF+LX8mvaCsZ9EvekqOW3
 GXiAUXb0XTC7NDAFY7WvA+VlfdFH1vIGH/hFQOSROSxqKf7Ifc/jLzeQCYc6uCIoHo8T
 UQ9g0xgDaaLv+SeqSY4NeB5qCRdfVUFhnIbRzjpQBbTNQg8oyYkKDoXNcVhiqqaS7rvR
 tLQiCWd4qPkfvqH7jn5GzeqfJ4dYrlKJRtsxiCoPD0k4z+tOvNqFtPUdWcX4w8BjWgyb
 BR7w==
X-Gm-Message-State: ANhLgQ3lWchk1KpuuEs95J3qYRkt/3PqO8xrqgQboKg5gNs2Yf1bd6km
 mldnD20z+2QztTr+b4DL1Ow=
X-Google-Smtp-Source: ADFU+vsY8iYgbuRFlAd9U61nsaldOQC1hqGGqTzZvDEDjvVId3qGfnZZieGIXk2tsNLODrFDhDxEhQ==
X-Received: by 2002:a17:902:7592:: with SMTP id
 j18mr12588240pll.180.1584095365090; 
 Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
 by smtp.gmail.com with ESMTPSA id
 u24sm55719326pgo.83.2020.03.13.03.29.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:29:24 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Date: Fri, 13 Mar 2020 15:59:12 +0530
Message-Id: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary if and else conditions since both are leading to the
initialization of "phtpriv->ampdu_enable" with the same value.
Also, remove the unnecessary else-if condition since it does nothing.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2
  - Remove unnecessary comments
  - Remove unnecessary else-if condition which does nothing.

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 71fcb466019a..d7a58af76ea0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* maybe needs check if ap supports rx ampdu. */
 	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
-		if (pregistrypriv->wifi_spec == 1) {
-			/* remove this part because testbed AP should disable RX AMPDU */
-			/* phtpriv->ampdu_enable = false; */
-			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
-		}
-	} else if (pregistrypriv->ampdu_enable == 2) {
-		/* remove this part because testbed AP should disable RX AMPDU */
-		/* phtpriv->ampdu_enable = true; */
+		phtpriv->ampdu_enable = true;
 	}
 
 	/* check Max Rx A-MPDU Size */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
