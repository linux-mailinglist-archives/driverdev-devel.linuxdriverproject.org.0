Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D262B062B
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA31D2E1EA;
	Thu, 12 Nov 2020 13:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 577XTOh4U1x3; Thu, 12 Nov 2020 13:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F398F2E1B2;
	Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 376351BF3ED
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B1712E1DC
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i2P8vKZyOziV for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 949E72E1B2
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:04 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 10so5252894wml.2
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eMLK5wFM3ylLU00PJbRy+Dts0K2HhGy+/Yk3kcCr//I=;
 b=YGVtNKo+kKiaY6XJvBFtbaP8sFavkFFVBUBsegmYbjw8a+sYjC+4ONrRWozIwu8S1c
 zGMPeTeod0GBn++IiBgp3GwY3MolP4bntUVy8sAKCVgIzEEHImGBR+Oi5fcxorwZ7qlb
 iYDJ5V3MSDrK3zATgtfPQcDD6KBN6SutlkzmEsPJleMjm1hGdYuLQ1jTkUvqbNbM1l5G
 Tk0IFKdcKZLSY32AAXOIhaZhbrRFdEe0tWS+XiZjPKCtC4h5/+5c0YXhbU4Jdwt8xS0F
 lIvsl1rfWXBQYFsDWO26/0RFTEU3Cc5K/7ZiqhuGuIjRVL10I+a2TbO1+Y+W/I365Vf6
 C0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eMLK5wFM3ylLU00PJbRy+Dts0K2HhGy+/Yk3kcCr//I=;
 b=Ta9O7hSKQeOjESWswOQ3FSpMz3n5tFYib+jdUCdSVkv9aDLrq/aBh1cmPsfS3eB4a9
 ycK4+imtbOqOjORwZ1jrZp3r2+hU/IrFHHQbwp9uCwGzZDxp4nfmY3C52DP+LGmv/1TL
 kLjJJLTVvkiNA7xDxxQEkle9nPrTt5/3UO3lqHpiuhqEyow6UdgwwC1tNtsW/292wjqK
 1VSSdkHSMGAj6V6jBM+V23YN1SzHnIgso+0X9VVEz7obXmVLcSYiQPTxxPCPr3AH6JG6
 QhKIRzVQsiC/aT/CCxjXYfVgLSu94brAk10TQuko/kSRDMJnJWa4b7U1Jg/QfuPPkwGC
 fnMw==
X-Gm-Message-State: AOAM5307Z0CDmFczFG30DUpk35yQKOri3KOWMGiLpI8cyBM0Gz1uRouS
 2cHFNE8rCXHsjk9t5r+WIZljUw==
X-Google-Smtp-Source: ABdhPJypUJzBSf/UrRpXCaxMahDxGMlGNloxollAPMhwxtws4wXdGnm+IatNgsfEO+UfZfcWDSDYPA==
X-Received: by 2002:a7b:c05a:: with SMTP id u26mr10154380wmc.159.1605187202922; 
 Thu, 12 Nov 2020 05:20:02 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:02 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] Rid i2400m driver set of W=1 issues
Date: Thu, 12 Nov 2020 13:19:53 +0000
Message-Id: <20201112131959.2213841-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
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

This set is part of a larger effort attempting to clean-up W=1
kernel builds, which are currently overwhelmingly riddled with
niggly little warnings.

This is a rebased set that went to Net before the move to Staging.

Lee Jones (6):
  staging: net: wimax: i2400m: control: Fix some misspellings in
    i2400m_set_init_config()'s docs
  staging: net: wimax: i2400m: driver: Demote some non-conformant
    kernel-docs, fix others
  staging: net: wimax: i2400m: fw: Fix some function header
    misdemeanours
  staging: net: wimax: i2400m: netdev: Demote non-conformant function
    header
  staging: net: wimax: i2400m: tx: Fix a few kernel-doc misdemeanours
  staging: net: wimax: i2400m: fw: Fix incorrectly spelt function
    parameter in documentation

 drivers/staging/wimax/i2400m/control.c |  4 ++--
 drivers/staging/wimax/i2400m/driver.c  |  9 +++++----
 drivers/staging/wimax/i2400m/fw.c      | 14 +++++++++++---
 drivers/staging/wimax/i2400m/netdev.c  |  2 +-
 drivers/staging/wimax/i2400m/tx.c      |  6 +++++-
 5 files changed, 24 insertions(+), 11 deletions(-)

Cc: "David S. Miller" <davem@davemloft.net>
Cc: devel@driverdev.osuosl.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wimax@intel.com
Cc: netdev@vger.kernel.org
Cc: Yanir Lubetkin <yanirx.lubetkin@intel.com>
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
