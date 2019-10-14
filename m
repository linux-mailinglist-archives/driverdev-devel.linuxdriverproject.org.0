Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFDFD597D
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 04:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4611887C16;
	Mon, 14 Oct 2019 02:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Dt6SDbNBFlA; Mon, 14 Oct 2019 02:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B95287AFE;
	Mon, 14 Oct 2019 02:09:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A01AE1BF3A7
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 02:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93A2E2154E
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 02:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgOpQcgZW7vx for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 02:09:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 74D912152C
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 02:09:56 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 23so9155655pgk.3
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 19:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JkHBk/oYXM6517BAgEL0tKLuS2H0cul0uF9oC7gkoSI=;
 b=g0CNjKkzhyTA61CsKBL3iHOy8nLVAGAa3cJ5rCVNL1BN+SBG/vzrLhjUGkRWjlW/W0
 JYqfPxA6SiW5JscfbYjjGHVZCvtO2L2VsjMdTxS4Dsl4DjKC8ayzmiJQWoTbhBT7D8WE
 1nvvRVtDYtCHKCeL8BGlrTZLFtoh3u5sueL5Vl/vNPFo/McUdpIRVF4gCoIpllmVEvJU
 HRaocmIeVyO8KOnVOBLQcUxlioZMDUmElvLXCmb9oPSEQxijkgkLsFfvDZ9jazraowWd
 3/+Y2aSR5tO2k5Gk4bDv5iiQwuCl8swt9p+GtEtxsxJ+oiySHwRe6POlJwI6CIiyuq9X
 nAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JkHBk/oYXM6517BAgEL0tKLuS2H0cul0uF9oC7gkoSI=;
 b=uKwJmyALRQ9qCsV7w9t4pAm6nCn2uZln2m03WWMMqNrxmUZhGkD0V9q8aBqo1mjMQm
 Faf6SfeC0hFOwIqiEMalsvCbQoqB5NTAAZ8zD79ytazrpK/p1LF/phYArJpBDDBoPzU7
 a9WJrU3j3OmUDm49qgn66f0LvRQy6Dr+4QwW5lybUeff3ChTWpeeImn6Kj6tGc8uBQGE
 0btQj22IhZQLoyXj5i6cRoVZ0xLi9TLs+T5upttmFVZkemNqCb+bZntPn5ECud+Y+wE2
 MhM+wbQQo/lDgcPVTEPy2x5iugjoUohpMeim2UJNfzTKBCGEJpPqp5ONcMwz6E3/Iw0G
 ObiA==
X-Gm-Message-State: APjAAAXKVT9s/j31gRTw+KTBJQO7uQxMn9eDb61RcOOBvytmAea/5oSQ
 3jpvoar3lkYxdSLwXu1UPlo=
X-Google-Smtp-Source: APXvYqyHAW0ZGrxC+x3fqBgDGqyUuLIvlW9MkiUlzXZSZrs3uS94Jw7zBKKzmWK2wSSKmIEzfOXIOw==
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr8687157pjs.5.1571018996018; 
 Sun, 13 Oct 2019 19:09:56 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id q128sm16589880pga.24.2019.10.13.19.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 19:09:55 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: imx7-mipi-csis: Add a check for devm_regulator_get
Date: Mon, 14 Oct 2019 10:08:48 +0800
Message-Id: <20191014020847.9203-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

devm_regulator_get may return an error but mipi_csis_phy_init misses
a check for it.
This may lead to problems when regulator_set_voltage uses the unchecked
pointer.
This patch adds a check for devm_regulator_get to avoid potential risk.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..9a07b54c4ab1 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
 static int mipi_csis_phy_init(struct csi_state *state)
 {
 	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
+	if (IS_ERR(state->mipi_phy_regulator))
+		return PTR_ERR(state->mipi_phy_regulator);
 
 	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
 				     1000000);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
