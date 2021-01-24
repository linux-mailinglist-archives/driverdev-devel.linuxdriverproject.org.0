Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F256301CCD
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Jan 2021 15:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C730C87231;
	Sun, 24 Jan 2021 14:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wa2G96M6NY1g; Sun, 24 Jan 2021 14:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0E32871F1;
	Sun, 24 Jan 2021 14:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7951BF30F
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 14:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F4422044B
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 14:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRpAeKla5pwW for <devel@linuxdriverproject.org>;
 Sun, 24 Jan 2021 14:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by silver.osuosl.org (Postfix) with ESMTPS id BD8D4203C7
 for <devel@driverdev.osuosl.org>; Sun, 24 Jan 2021 14:43:45 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id cq1so6729342pjb.4
 for <devel@driverdev.osuosl.org>; Sun, 24 Jan 2021 06:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osMtOIqCXb/idGVAa6Cmd8MuwAYO+7JETSggruryKKA=;
 b=fyz3CUkD1kwnvK70qcpdDoYauqytIcvEdjznkrbmOVQc2/d18+HyzN1r1UVAVZ9gHB
 b/l+Zts4PcevayOcXTMj6+31FOLfvicQDJ6WZDZaYsaDAECEng/hwS8b+bTDUDSMPrtl
 +HAoLyJxV3+EAkitEUPBr219mF+hgSlgZfjJDdSHxaul0h/W+JlBYCqKz3oRZGc0gLwU
 1RD8JDXyuwbHp6A+sOAfGug2sSESfpbNAxWfhcUT21WjUPYiMZF9uRlmDWhU5Q242YbE
 bL6/BdVZDlNnMqqa3A+HXVnGM1lBb6m6qtywm9BPKA6Fk0ppP0r84Ad1M248OHPyU2h0
 8Rbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osMtOIqCXb/idGVAa6Cmd8MuwAYO+7JETSggruryKKA=;
 b=MOP69k4tUcxoJcIOUa4MY9P4ZshK2ucbbrHXaFg8MSR4I8xLDsr6xmKA2mjfeJ3dOK
 LM3B7SFRgPiP5zdfCO5R9kewwOFwkLgXuW6EPv2hr4iZQnzeF4lMz/XT09Sv42TsFBzS
 oeQkMbBAMDuqUgNAKl0TjSib9vhdqfd/uRUpsuPlqqLbK3WQXxpXtYuopR4f8kZryVuP
 iHbBWir0z3y8w7EKNtlQS010I4d57btZia1rp6+61Gx5H9wT8Uq0OTpQ72XgW3oKqSQP
 PhmHziepHn8J1J7rLNp7l3US3zkwEiyW17Fb5bEXUmvK/3v/UwCpu/3yjWNE82NqqfHV
 tHRA==
X-Gm-Message-State: AOAM530F1cAlPc3YHjhF7nAyC0/07yVVrs2kyodRy+GJ9hEs64APXKeu
 YyRRoNEIjONcbiFoW7xeRcM=
X-Google-Smtp-Source: ABdhPJxJk34fOVKGvlFobysn/pfrS40uEVinSe9YKjvv6o6axmOXfVeD1EEfKTBxLV5v7juaO6S0HQ==
X-Received: by 2002:a17:90b:949:: with SMTP id
 dw9mr6178804pjb.20.1611499425304; 
 Sun, 24 Jan 2021 06:43:45 -0800 (PST)
Received: from localhost.localdomain ([27.255.168.247])
 by smtp.googlemail.com with ESMTPSA id
 i67sm14378161pfc.153.2021.01.24.06.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Jan 2021 06:43:44 -0800 (PST)
From: Puranjay Mohan <puranjay12@gmail.com>
To: gregkh@linuxfoundation.org, puranjay12@gmail.com,
 devel@driverdev.osuosl.org
Subject: [PATCH] Staging: rtl8192u: use %s and __func__
Date: Sun, 24 Jan 2021 20:13:28 +0530
Message-Id: <20210124144328.121688-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change function's name to %s and __func__ to fix checkpatch.pl errors.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 63e0f7b1b852..fee3bfb99075 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -58,7 +58,7 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 						(enum rf90_radio_path_e)eRFPath,
 						0x14, bMask12Bits, 0x5ab);
 				} else {
-					RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
+					RT_TRACE(COMP_ERR, "%s(): unknown hardware version\n", __func__);
 					}
 				break;
 		case HT_CHANNEL_WIDTH_20_40:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
