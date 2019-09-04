Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CE3A946A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 23:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C04B87BFE;
	Wed,  4 Sep 2019 21:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id raeVxAVbLZ-O; Wed,  4 Sep 2019 21:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 441858740E;
	Wed,  4 Sep 2019 21:03:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E9531BF3D1
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B88686739
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7YhaQqoPYF7 for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 21:03:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEE3A86407
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 21:03:32 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id u40so107185qth.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 14:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CzEDh/TsIq7upWl5Yv4giE6ogitNU/Rn6EYmhnKlYvk=;
 b=oNH2euNPlkfsmgsbVWioFIdW/n5Zsqzl3Xc42ZsNtjCeEXUBg47otMMdcUkPnpAVeq
 fSYRdgt/3W0BQMYCwvFNN88AczjtCFjXr4iMki7BjJk+cuGkWJytORNuhmWSNBVh7CGN
 r1pPapMWW4MdJiPK45JbSB3idS16Kazwy6D+S7mhUIytq+2+zUAmksQjRzAMfe9xkmLt
 +zZ/8NcM53m5NFTwk400QeODytz4F8l30idy13m6BbHs56HtLEzq/uYEWL79u6i+lNkk
 RSbVGU0l3NARncpWYVOpRPerW03Ma9wvaOhOo/W+2eeufNqnodfid9F92qhWaubQl3b8
 DiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CzEDh/TsIq7upWl5Yv4giE6ogitNU/Rn6EYmhnKlYvk=;
 b=nLMeYA0nSKsPv8JvWAZhGjzsFoAvbbs8L5JJjD0vkLwMtTT3TFNHVOuXjtwyHKZ8WH
 Lv3bEykFi/pLscqIGaHkL8G0fPFRQgX8OmI8eqinLbiXMaI4Hyf0x2O0xMA2aJ4Dc/sL
 WcTdKII05Jqle7Z6xDz7CbE5nrS5mtgkpPTgYJKs/8aPEziaQ416FBWkpQV6L81/V7+i
 tsuioRkJ8Rik9siiBe/86SElaaKUvGryU69nlIAt18ZSQmQBeyc+/VVvHl0HjBjSgaRL
 qJko2RwaXaDs0vBCuvKNZ1SSv/9L1iwUXZgWc25dtmadqyoTH89NTOXITu+w2Boi7+y5
 xO9A==
X-Gm-Message-State: APjAAAUy3YFAlgh/sZbNMYK8qw1PgN30C7bJfbKmYIDJmvSoFNMzzCu6
 Oar+WQ+l0KnvNPramTwlq7vYuNvs
X-Google-Smtp-Source: APXvYqyiG8Lc/uvqk95Uzde1T+GxJ7uHvZpxs0K5bY6Y8JzN3eTEDKj2o6jwgMg/OfQN/pNR4g2eJA==
X-Received: by 2002:ac8:2b82:: with SMTP id m2mr69263qtm.35.1567631011842;
 Wed, 04 Sep 2019 14:03:31 -0700 (PDT)
Received: from 657840b88179.ic.unicamp.br
 (wifi-177-220-84-123.wifi.ic.unicamp.br. [177.220.84.123])
 by smtp.gmail.com with ESMTPSA id t55sm81669qth.6.2019.09.04.14.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:03:31 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanet.br.org
Subject: [PATCH] staging: rtl8192e: remove unnecessary blank line
Date: Wed,  4 Sep 2019 21:03:26 +0000
Message-Id: <20190904210326.17983-1-martinsdecarvalhobeatriz@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpath error "CHECK: Blank lines aren't necessary after an open
brace '{'"
in rtllib.h:482.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8192e/rtllib.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index 7a0128815..328f410da 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -479,7 +479,6 @@ enum wireless_mode {
 #define P80211_OUI_LEN 3
 
 struct rtllib_snap_hdr {
-
 	u8    dsap;   /* always 0xAA */
 	u8    ssap;   /* always 0xAA */
 	u8    ctrl;   /* always 0x03 */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
