Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C1D205585
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1143588EEA;
	Tue, 23 Jun 2020 15:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6W9NB5rGSkj9; Tue, 23 Jun 2020 15:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5908188E5F;
	Tue, 23 Jun 2020 15:07:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1435C1BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 042DF88EC2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPSiR3HQm66c
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E81AA88E4E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924863; x=1624460863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=vJNxpQRr0TuLJ5CXtzdM9nP9esA5w30En4pitGx4lAs=;
 b=g0JJiu2kvHE2HISU50FMvTI4cqXWRdHCyqIAlArBuzH2+GAip1++nMmf
 WX9F7Zxl9IPVOXICCHU0iW9CEJg9UWLGJ6HeFdJ+wTNduUvrJMKZf8s5v
 Mo8Rd4sJNBi/kZMQiUZpbr2kzVR8vwF859yCTG99IKLtkaW2qKLmrkonB
 6i/rMGIKStu5NZZXUxRKpBfP4iOwWfrD9Owfa8GV3lA9sV8yb1V+IZDBf
 oBbop1EbCzs2NgjSkiJf+fZr7Q7JIhjUWQpmqJL1G3vqmQMoSd5/NmJgU
 JlHfBpgwSdaZG4yFwTL9VXsJZhG59iGPspMevXJ64wiNJoWIWLaCpPveD g==;
IronPort-SDR: GMV7GHkBi262t+0s8cuVw6Gu+EF/tTPNg9QUkrEm5SdfO7i59VMCDZGbRbJiBQR4yR/gyEbeNw
 3eQpn1AncMX2VYFmj4x4nJlE/+hJPgLt4UkxGTOjibJoe7/ucUjGYg/dbxs0t9oZDfavZ4/KPw
 YjrsyLCb0KRvPMyzMafpICbp/1Q3ZJTCrhvW+V7FzW8O/mW1HWHuHo7c6ClFrLgWDW8LpL+RvH
 fAJcW1jHPv910HLHffkx+1g/eMVKmcGABTGxGNWddMUYseXHEbFlEQyJEvOSCn3Qdq75Po8AZI
 4sI=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="16763298"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:32 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:42 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] staging: most: sound: remove overcautious argument
 checking
Date: Tue, 23 Jun 2020 17:07:35 +0200
Message-ID: <1592924855-25569-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
References: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The interface pointer passed to a component API function cannot be NULL.
This patch removes the unnecessary sanity check of this argument.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/sound/sound.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 7c56cdb..8a449ab 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -531,9 +531,6 @@ static int audio_probe_channel(struct most_interface *iface, int channel_id,
 	char *sample_res;
 	char arg_list_cpy[STRING_SIZE];
 
-	if (!iface)
-		return -EINVAL;
-
 	if (cfg->data_type != MOST_CH_SYNC) {
 		pr_err("Incompatible channel type\n");
 		return -EINVAL;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
