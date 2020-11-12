Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A42A2B0635
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA7152E1F6;
	Thu, 12 Nov 2020 13:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vhKHH7mTD9KG; Thu, 12 Nov 2020 13:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED1D72E1F0;
	Thu, 12 Nov 2020 13:20:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 517ED1BF9B9
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3FFD92E1EA
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dssiGcXQTy9W for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id A562C2E1D9
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:05 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c16so5491184wmd.2
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8jk6HVNhRUeEoNSWaOGwYJftWHgUEkFSpcCabqTm85s=;
 b=sYfuYLr/GzDr2sN/zXiJloI1wO0uWu41b9GLLElDCpwpM7Zwt/WM1IxysnWMk1jIwZ
 1hMmGzs7IMj+ipZ2lwITHkFGIyrmiHMOIy8aIX6LOo32DuiZZOZ+vJ0JDAWjAEWs6cUb
 FCJYW0Sw2sx5qDJjlXNig5xR7y+dMVX2DaRtkcicQ7QHb1gOW1OT47pxmzuAmwVoPgcK
 9HhL77b7olhyPPl5kKPS0Y+x4Dvs9hI4+IuhVuUD7G/Xxxr+U3BZsjRBDIx3TMQptyA7
 kAW0jNeuYY+O4h/f3And5Obfdr6uCoZRpePi4s/0EWp8kA2kvl9rGObE/sArQAqjlhp1
 1sLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8jk6HVNhRUeEoNSWaOGwYJftWHgUEkFSpcCabqTm85s=;
 b=sbe494X5JeWWhf8YNysDEr33kb0G5atdqpAdcyNpTuv2ERC5XGvJCOFeBRWXd0TxbB
 A6m7dJ30p6s4S7SHgyPzq8bluKo6V38+HGnYnq9Pia16VrgF3RDcx4d6MXPnTVNIpPRI
 zwuKLAnvzbFgUwoAg+w04AdOFRc/tG2U44mckAPaQJqdQ3nRB2F6skOKjGQV8XSkXrUO
 Zh4/1PGx+jystKpkikZxeAr870LuZxEgtIuW8kfFBX8RncFPRuNYhJmdwikGAaWbkAst
 PV+NFgz27ONehRV45YIjLlpZ7RjkE9QQ0QtAT23KgUkOSLLiJ2ajN5Np8cIDN5lhtFio
 ceUg==
X-Gm-Message-State: AOAM5333CqHDss+8cQUDZz8Epzs7W10Eu4CMi+JP/LoFip4c5E+8yvkl
 YvAi3Mf34QHypkf9IxAmXebgzA==
X-Google-Smtp-Source: ABdhPJwLen6p98hcdn8uIN3ZeTDNPnMc6HQiolBj9ioiwahX9Vbjkh/wrjF9eDHn8Xo4EuMGJudwSw==
X-Received: by 2002:a1c:c203:: with SMTP id s3mr9791779wmf.77.1605187204118;
 Thu, 12 Nov 2020 05:20:04 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:03 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: net: wimax: i2400m: control: Fix some
 misspellings in i2400m_set_init_config()'s docs
Date: Thu, 12 Nov 2020 13:19:54 +0000
Message-Id: <20201112131959.2213841-2-lee.jones@linaro.org>
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
 Jakub Kicinski <kuba@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the following W=1 kernel build warning(s):

 drivers/net/wimax/i2400m/control.c:1195: warning: Function parameter or member 'arg' not described in 'i2400m_set_init_config'
 drivers/net/wimax/i2400m/control.c:1195: warning: Excess function parameter 'arg_size' description in 'i2400m_set_init_config'

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: linux-wimax@intel.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/wimax/i2400m/control.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/control.c b/drivers/staging/wimax/i2400m/control.c
index fe885aa56cf37..1e270b2101e86 100644
--- a/drivers/staging/wimax/i2400m/control.c
+++ b/drivers/staging/wimax/i2400m/control.c
@@ -1183,11 +1183,11 @@ static int i2400m_cmd_get_state(struct i2400m *i2400m)
  * Set basic configuration settings
  *
  * @i2400m: device descriptor
- * @args: array of pointers to the TLV headers to send for
+ * @arg: array of pointers to the TLV headers to send for
  *     configuration (each followed by its payload).
  *     TLV headers and payloads must be properly initialized, with the
  *     right endianess (LE).
- * @arg_size: number of pointers in the @args array
+ * @args: number of pointers in the @arg array
  */
 static int i2400m_set_init_config(struct i2400m *i2400m,
 				  const struct i2400m_tlv_hdr **arg,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
