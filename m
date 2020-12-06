Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B217C2D0054
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D8DF2D059;
	Sun,  6 Dec 2020 03:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7h2JU8OC2nWD; Sun,  6 Dec 2020 03:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 76CBC2D9B5;
	Sun,  6 Dec 2020 03:45:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D34D71BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE9A227261
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v7pEh58lnUL3 for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0DE282725F
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id p187so9982567iod.4
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6FWjizWuJRJzOHlR9/efz3H59npCauuI5HbcXIPudd8=;
 b=kFAMSx7tayFUtRXPakbWZ0IE/2OK1Y1MjRIvowPtMichMwQSxj7T+i0DMkr62qfmdk
 GIef9Z1D8JXX7uHJH00o/yiw0BqhaqOWehGHFAU0KCESnpKNkMlq8yoFa7C/BuvZfib8
 zczmDdi6SQkSGqjQeJGohP3I2gOnRaLhUM3LVdGznLz2vA7+ehwZHfa/l0p+JI2C8JMm
 SLp8atHeuz5YFCI0y2q0aIKvjK/5V8aM7q2Tg3yLHdrlmkW4CLosvMA3quGKV8kM+R7l
 OOIdx2zMTYtoj5Sd3yuy6s9gac2I2wI1wZnPCAAAZRzBdFchTV483Nw7zpMMbNBtr2uT
 fYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6FWjizWuJRJzOHlR9/efz3H59npCauuI5HbcXIPudd8=;
 b=E+l2ktFoRaqakypVLq0OAa36qWFqa1HZHQCvDvFxnlFbHrFDbFZ9kq8JO7B2g4adeg
 zCT/2PyyH24S0BHQA9RNf+U40txd496bRee/ce66BikKKBBiJYVgKDOfpj0TpzHfOaTF
 Uytb9VXgWLyfQ6CX0FwcNsb4ZMThhlSYGY8EzmKs3T65rONcJKVLVs7MJcMrfNouw0z6
 pnShCZuk+8w4pSNtkf2yfv0sNQX2wrXKeJi8itXijSmoQ9QZH2F3D6IyME/tZ48odm/J
 6HehG9jeWdQm1JeGxE9fjns96uQSGKXNxPAWEmO1jbf1KkZFEEQTxmGTV9FkSNFIOZSp
 SXdw==
X-Gm-Message-State: AOAM533JtqFQiAyvkDxHAv4vUDFxYhjHLyCnnncQlLZk+gTZI4JSxIR2
 F07aDmJ44B+Itoa2vLD6eiA=
X-Google-Smtp-Source: ABdhPJz6w18g9cLn3Lo+Lk951J+vFuG8eIYnvUdK5JjYVqtA5NOMIzc00kCvvoZ2o0/7nih/T8c1dw==
X-Received: by 2002:a02:2c3:: with SMTP id 186mr13165606jau.34.1607226329471; 
 Sat, 05 Dec 2020 19:45:29 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:28 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/10] staging: rtl8723bs: remove WLAN_HT_CAP_SM_PS_* macros
Date: Sat,  5 Dec 2020 21:45:13 -0600
Message-Id: <20201206034517.4276-6-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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

The WLAN_HT_CAP_SM_PS_* macro family is already defined in
linux/ieee80211.h, remove them.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 2fb1687ecabf..2e8ca191c608 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -666,13 +666,6 @@ struct ADDBA_request {
  */
 #define IEEE80211_MIN_AMPDU_BUF 0x8
 
-
-/* Spatial Multiplexing Power Save Modes */
-#define WLAN_HT_CAP_SM_PS_STATIC		0
-#define WLAN_HT_CAP_SM_PS_DYNAMIC	1
-#define WLAN_HT_CAP_SM_PS_INVALID	2
-#define WLAN_HT_CAP_SM_PS_DISABLED	3
-
 #define HT_INFO_HT_PARAM_SECONDARY_CHNL_OFF_MASK	((u8) BIT(0) | BIT(1))
 #define HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE		((u8) BIT(0))
 #define HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW		((u8) BIT(0) | BIT(1))
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
