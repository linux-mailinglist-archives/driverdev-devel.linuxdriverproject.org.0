Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F816E243
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 10:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CE598793D;
	Fri, 19 Jul 2019 08:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ufKxWZ+j4Jl5; Fri, 19 Jul 2019 08:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40DA887675;
	Fri, 19 Jul 2019 08:10:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4725D1BF3BC
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 08:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DCC0881E2
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 08:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4Aq0y6DO7R1 for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 08:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21DDB8818F
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 08:10:24 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id c14so15204193plo.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 01:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ldCcok439XiSVa6AGYJGqO7cyqiS7oTbReHSOBCfvnE=;
 b=pKmSqnllu7Ylmp71SktjrAuLTPt/Aj9dQ3RdkOi6HrILRYK5FQEWnUxEwsal7uiuUt
 sdeihZFIaKfmiQowAovtE4yy2/iZD1YIHo653AcbDHg+tMPdGzmV9F/EtKKcOkWWVQvp
 ukuAov9z65TUw09OjxmfLyvKohabXmOwHHFlodDD1E7TZg/GmSVV54jEpYkI2gQpznWo
 9pkAtGAOVQbE8hxBQIXDgCetd2BYeNyMVKcXjd5xQ5U66hIh46Kb4fUWF3hi5MaPzEz4
 YbxtvbfRN7eoitHB7VCbl5lgLw5Lqy2n9dRxq970Mt5Mx6zlrUjhmtpCsUDaWztIIbX6
 8/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ldCcok439XiSVa6AGYJGqO7cyqiS7oTbReHSOBCfvnE=;
 b=Wizkh1gt3AlVPmXQoi0P4gYKC1yHapIm0ZuIg/tBtQ2pbu/osZFTX6uTKtqPI3GSnH
 UvJUVq9WbsFUrorE3qdgbkMWUhMQjIHpYTKR+tMha+QSxZxJ0IvVksNy2WqCZ3SdKdys
 NjEHbYdEXlqLkyDhycdhhPXZbNhB1Js58n3I4SsJ0QBRf/84WhQ6GTKG3LpXMsaOBhdo
 O3vFS+4DKEVCSiR18MYK4auWfbN2RmHGntJlL/TCrDeoQ/nL/WeKHLN9x8cPmoKembAX
 3aPYVE1MHD2ZvooDW6eLjAoNQKqmg6KS2r9dsmlsza230xlN86T0otE6+9fYAf1zRntX
 FwoQ==
X-Gm-Message-State: APjAAAVacsR0jbiVW62Zz5ZjsT8MR1rhZYkwA67MRFKeBdkS/e85CuSY
 ou7n4bQ0u3AfGVkZQUqQBL4=
X-Google-Smtp-Source: APXvYqykkOF8/von8g5LZdSGDNFmG9Aj6nytf+VL5Z4Vd9CSBfS89tB/QwlOHkxkf1zeWyOnvoV88w==
X-Received: by 2002:a17:902:20ec:: with SMTP id
 v41mr52314648plg.142.1563523823694; 
 Fri, 19 Jul 2019 01:10:23 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id 33sm35849261pgy.22.2019.07.19.01.10.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 01:10:23 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Date: Fri, 19 Jul 2019 16:10:06 +0800
Message-Id: <20190719081005.4598-1-hslester96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chuhong Yuan <hslester96@gmail.com>,
 Adham Abozaeid <adham.abozaeid@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Merge the combo use of memcpy and le32_to_cpus.
Use get_unaligned_le32 instead.
This simplifies the code.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index d72fdd333050..12fb4add05ec 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1038,8 +1038,7 @@ void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size)
 	s32 freq;
 	__le16 fc;
 
-	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
-	le32_to_cpus(&header);
+	header = get_unaligned_le32(buff - HOST_HDR_OFFSET);
 	pkt_offset = GET_PKT_OFFSET(header);
 
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
