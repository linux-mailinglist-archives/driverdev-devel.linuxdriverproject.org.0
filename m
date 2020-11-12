Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8892B0639
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 306CF2E1EC;
	Thu, 12 Nov 2020 13:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tP2CWqrkiIKR; Thu, 12 Nov 2020 13:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 967E22E1F1;
	Thu, 12 Nov 2020 13:20:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 338841BF3ED
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E1DD870AD
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rfzSpxaLbI7P for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F7F7870A8
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id o15so5971297wru.6
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W7iFgNzjupYbkhuJ8ppUAnhnD6gEMwq5fnIgnkH5hQg=;
 b=xraKgwigr/3WOJ5/Z6ypYZXDmivlx16frB+i1AcULwNtfPPaL2QkclE4D9d6xSDk+y
 KtX84j8cy3C8188Z56CgA2Ec4qtJL/w0pADmaA3TXMIRDJOF2yF1+4XG+X383rojWTeF
 Pw/SMd+y6waKOyHZ+5xSamHLhCWDAKRO+cKNGC+uREUoNQHAq+1EZnAcD+bO5Ivx65tP
 pELabNcfICfoyJLlHJHKfWqLa+0bD91R80sjfp104cukICbWR0tgLtD5kmvMwSrhsajC
 Cgklf98XLad3yOrLH2qTWFBvWW6Z7eLJ8wiJWY/4wrLkh9Y0YB5FJo2MWLcWofw/fHXu
 D1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W7iFgNzjupYbkhuJ8ppUAnhnD6gEMwq5fnIgnkH5hQg=;
 b=XsnHrMw+sIRyY3CL5hSigSl8x6pV3ry0iLEncDmQ2nt5xBDGitqXUjndJNNCMDpwRc
 QFCNT2Bf5iASGjz4ikhQjNQnFlBKlUJuEaJfqvaGjshFnLCoR3tK9cmDRiejKGm3pEVz
 DsoHTVoSYuRRb8Q9DtgJEzsCmL5qa4tUAzv2Qjl/dCWX3X2yXRtSXY0LTRE1+nJRAqYZ
 h29yso812VxS1Z9DXLDhHZxOEgIpurduWHcgdP2xkXXnNKWyRCtQQ9teDMCwodBzELsr
 q0KazlDKzOstMzi+8Pmnl0yC94oI/Pa49v0BknuSs4aGQkIQKSr34xAERw404o6FmqZb
 H2jw==
X-Gm-Message-State: AOAM533gdeYoGvjPFtsbN0QdfxbTuU0RhjL1WMg8VvNOON5UfUPBpME1
 reFJ54ukAy22Zvear7Hk+jGeXg==
X-Google-Smtp-Source: ABdhPJzuIs7PpfSu/WiiGoB50ZqQyuxz+iEHv+8tsyK0usK3trHVokWiSyVgGqFbYbfBWpMw7zyczQ==
X-Received: by 2002:adf:f347:: with SMTP id e7mr25933848wrp.183.1605187210191; 
 Thu, 12 Nov 2020 05:20:10 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:09 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: net: wimax: i2400m: tx: Fix a few kernel-doc
 misdemeanours
Date: Thu, 12 Nov 2020 13:19:58 +0000
Message-Id: <20201112131959.2213841-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112131959.2213841-1-lee.jones@linaro.org>
References: <20201112131959.2213841-1-lee.jones@linaro.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>, linux-wimax@intel.com,
 Yanir Lubetkin <yanirx.lubetkin@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the following W=1 kernel build warning(s):

 drivers/net/wimax/i2400m/tx.c:715: warning: Function parameter or member 'i2400m' not described in 'i2400m_tx'
 drivers/net/wimax/i2400m/tx.c:964: warning: Function parameter or member 'i2400m' not described in 'i2400m_tx_setup'
 drivers/net/wimax/i2400m/tx.c:1005: warning: Function parameter or member 'i2400m' not described in 'i2400m_tx_release'

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: linux-wimax@intel.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Yanir Lubetkin <yanirx.lubetkin@intel.com>
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/wimax/i2400m/tx.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/tx.c b/drivers/staging/wimax/i2400m/tx.c
index 1255302e251e4..e9436212fe54d 100644
--- a/drivers/staging/wimax/i2400m/tx.c
+++ b/drivers/staging/wimax/i2400m/tx.c
@@ -681,6 +681,8 @@ void i2400m_tx_close(struct i2400m *i2400m)
 /**
  * i2400m_tx - send the data in a buffer to the device
  *
+ * @i2400m: device descriptor
+ *
  * @buf: pointer to the buffer to transmit
  *
  * @buf_len: buffer size
@@ -955,6 +957,8 @@ EXPORT_SYMBOL_GPL(i2400m_tx_msg_sent);
 /**
  * i2400m_tx_setup - Initialize the TX queue and infrastructure
  *
+ * @i2400m: device descriptor
+ *
  * Make sure we reset the TX sequence to zero, as when this function
  * is called, the firmware has been just restarted. Same rational
  * for tx_in, tx_out, tx_msg_size and tx_msg. We reset them since
@@ -998,7 +1002,7 @@ int i2400m_tx_setup(struct i2400m *i2400m)
 }
 
 
-/**
+/*
  * i2400m_tx_release - Tear down the TX queue and infrastructure
  */
 void i2400m_tx_release(struct i2400m *i2400m)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
