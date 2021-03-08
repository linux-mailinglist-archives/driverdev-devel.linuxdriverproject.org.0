Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B3B33114A
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:55:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A2CE836E1;
	Mon,  8 Mar 2021 14:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3cwFrAcsyth; Mon,  8 Mar 2021 14:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8C6E82E94;
	Mon,  8 Mar 2021 14:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39DA31BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2841944C77
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgQ-atSBJaF4 for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com
 [IPv6:2a00:1450:4864:20::641])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDE90447DA
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:27 +0000 (UTC)
Received: by mail-ej1-x641.google.com with SMTP id ci14so20885946ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bnsuh0vq+62rnjm7MYYTgLga5GlY2kr+7IxJtOibpCI=;
 b=N1FVc8Z2tRKpwYH9fL4HKr6THyo8PevHEbp5v/qmeSlrVfPEeD2O4/S67ivryQUiAm
 aHbIGxNRQCHxify3UOabLTHBV+N4iuRCqJGz1dioXQpq6yiOrHxiTpU1B2/04j7FeGYD
 naZAz5C88GdXr02+gdOeKgpp+/vPN5i9r6DE6Jevg/trUbSIPqGOA12rwUmXfk/3xlPE
 gI2iKvVsLM8N4x4iI6yZvqFllB/T5QTPrEFU/UBhAK6dMYmeo9NL18w9OAUhg5WrdFh7
 CZRO1vh1Gqqw4UoKII36MvrLn7gDqM6bTGT1nTcvH49iRiMerZw5pVKwtsOJqOAfeb6n
 C3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bnsuh0vq+62rnjm7MYYTgLga5GlY2kr+7IxJtOibpCI=;
 b=t1H27Wf+kB+vY3mBJ3C32+jzIbiOZiRai7yo7vaaFz6WJ2K+ipIpkOlnBpaLrtEkHJ
 9CkRXio1yYHHlmok1vqioC/PBICrkP6Pn8PjRxEgepLe53lyF3iO3kvXgPsMVp1djcjo
 KXTm6msbuvtGMZMCQTo/S9h1wUc8qxICMrvJH4Dg+XsO0ThypxhLnNhdLZQgPbksXtkD
 MZXKa32fcXV+nk3CD9XiUb5j1buD+YlozNnMe720fA0UK+FQRUDZS5jj6BftLBQsqcQe
 xqezA7fr1u1ohjnKGSGXPVzvN2yBrANK2fsE/q3qYc8LfEcAiiXcr0RCA44J3WhHURh4
 Q14A==
X-Gm-Message-State: AOAM533zCH0s4yYOX91hmv+Ghv5J+XYkUVYpychDnm/5lYdRmh6ZRiyp
 XcDASul7ZutPv5S+hhoNGtiJqw==
X-Google-Smtp-Source: ABdhPJycjUzbWfr6Q1XYlchcZzEFGdtIgBWKvfrweQMg1xKHbjHGHXbtsc0WmUKOX45WAIgHuFYsOA==
X-Received: by 2002:a17:906:3c50:: with SMTP id
 i16mr15683196ejg.175.1615215325807; 
 Mon, 08 Mar 2021 06:55:25 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:25 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 00/10] spi: finalize 'delay_usecs' removal/transition
Date: Mon,  8 Mar 2021 16:54:52 +0200
Message-Id: <20210308145502.1075689-1-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, Alexandru Ardelean <aardelean@deviqon.com>,
 vireshk@kernel.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A while back I started the introduction of the 'spi_delay' data type:
  https://lore.kernel.org/linux-spi/20190926105147.7839-1-alexandru.ardelean@analog.com/

Users of the 'delay_usecs' were removed from drivers.

Now it's time to remove the 'delay_usecs' from the SPI subsystem and use
only the 'delay' field.

This changeset adapts all SPI drivers to do without 'delay_usecs'.
Additionally, for greybus we need to adapt it to use the 'delay' in
nano-seconds and convert it to micro-seconds.

Alexandru Ardelean (10):
  spi: spi-axi-spi-engine: remove usage of delay_usecs
  spi: bcm63xx-spi: don't check 'delay_usecs' field
  spi: spi-bcm-qspi: replace 'delay_usecs' with 'delay.value' check
  spi: spi-sh: replace 'delay_usecs' with 'delay.value' in pr_debug
  spi: spi-tegra20-flash: don't check 'delay_usecs' field for spi
    transfer
  staging: greybus: spilib: use 'spi_delay_to_ns' for getting xfer delay
  spi: spi-falcon: remove check for 'delay_usecs'
  spi: fsl-espi: remove usage of 'delay_usecs' field
  spi: core: remove 'delay_usecs' field from spi_transfer
  spi: docs: update info about 'delay_usecs'

 Documentation/spi/spi-summary.rst |  7 +++++--
 drivers/spi/spi-axi-spi-engine.c  | 12 ++++--------
 drivers/spi/spi-bcm-qspi.c        |  2 +-
 drivers/spi/spi-bcm63xx.c         |  2 +-
 drivers/spi/spi-falcon.c          |  2 +-
 drivers/spi/spi-fsl-espi.c        | 17 +++++------------
 drivers/spi/spi-sh.c              |  4 ++--
 drivers/spi/spi-tegra20-sflash.c  |  3 +--
 drivers/spi/spi.c                 |  1 -
 drivers/staging/greybus/spilib.c  |  5 ++++-
 include/linux/spi/spi.h           | 12 ------------
 11 files changed, 24 insertions(+), 43 deletions(-)

-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
