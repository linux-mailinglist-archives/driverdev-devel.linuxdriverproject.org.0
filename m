Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0080422FF68
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 04:15:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AA4C228B4;
	Tue, 28 Jul 2020 02:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0ytVio3MU0R; Tue, 28 Jul 2020 02:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDEB82287D;
	Tue, 28 Jul 2020 02:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D55721BF32E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 02:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3D112276C
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 02:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UMXkClKEjnoD for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 02:15:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C77BD207A9
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 02:15:38 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id 72so9118941ple.0
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 19:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hBlxnjAq+NQ7xq9tyIscN6vQVF0VMix+mjCrmXItPMg=;
 b=uOHtcrYTmCosLIc22eS/NeLsVC6fVrazz3QS9IfOvftpZ3IVdvH2jSELcQ0Je6XAfn
 VpGwJrxu6PCnYN9hqFHF2IIdLqcu19CjfZqEZvgqhU0QWQWzmL+wTIC7Uq2x7OsUB9EO
 xKCUWBc9YUqJhxjPfkDl5NtTJRVDTm4FpftsNZ//mhhq5WkOQAqX6bWILHe4g09GAR3Q
 pdUpSA1e0c7ej0pkI8wZXxJS62RtHuNYBk7+GwV4bJ+06tNjKfVC9r3A5bUBxb6kGSuU
 94VTqY7ku+CAz1Xdai9XfdM4Yg8hsaAcGao5O/433g19X6+0SvtLEI0IVYnzVnHaSeZm
 S+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hBlxnjAq+NQ7xq9tyIscN6vQVF0VMix+mjCrmXItPMg=;
 b=Z5kOawCaW8keaO8cHgPDE6xdLliciQAYWsfhF06mbVn488n93m7AED16SLA9qhN1HF
 HE6jV/1AlOpw93h9bwlDQnpeQ6qzKmutsaKCSjRwX98NH9wyiRqTtlOdjRM9fNtwzp5K
 R3cL/jfasgzxOWQyBrQD+cCMSfo1sSF4k+ag5FA55I3dcdG6DmTE6qUO1BT3bw/zoEKL
 I7T8a5xx+94XUpYEuA/Wexk2GZ/xsuyoigIT070rtVlg1aLgEgD4J55ClWwgPiJQ+T+S
 /Ov58j2uTje47wUZkP2k/ynWm2Z1PyasHPHALWGn9GfN1o/CZiMum4EzUHtRxO39sBQf
 0TJQ==
X-Gm-Message-State: AOAM533aKY/OskInRq7SiyNp4ZaQAHPeRFBL3RXU0dhYyjiHJ84Ri4Rs
 26MwxWb5NnkpmtZiBYZO0FrUfXGyfwmtfq/3
X-Google-Smtp-Source: ABdhPJwzNVTSIeKUloUb5M/3iD6Xn5Y8aCAEXO+PabHJqE0BOsIVOgLuCMNps+33LtqqaT/obVKdiA==
X-Received: by 2002:a17:902:8bc6:: with SMTP id
 r6mr8654988plo.289.1595902538102; 
 Mon, 27 Jul 2020 19:15:38 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id g4sm16732466pgn.64.2020.07.27.19.15.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 19:15:37 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] Staging : media : atomisp : Fixed a brace coding sytle issue
Date: Tue, 28 Jul 2020 07:45:18 +0530
Message-Id: <20200728021518.19639-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ankit Baluni <b18007@students.iitmandi.ac.in>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing coding style issue by removing the braces that are not required.

Signed-off-by: Ankit Baluni<b18007@students.iitmandi.ac.in>
---
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index f8d616f08b51..701de098cb29 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1828,11 +1828,10 @@ static int atomisp_streamon(struct file *file, void *fh,
 			dev_err(isp->dev, "master slave sensor stream on failed!\n");
 			goto out;
 		}
-		if (!IS_ISP2401) {
+		if (!IS_ISP2401)
 			__wdt_on_master_slave_sensor(isp, wdt_duration);
-		} else {
+		else
 			__wdt_on_master_slave_sensor_pipe(pipe, wdt_duration, true);
-		}
 		goto start_delay_wq;
 	} else if (asd->depth_mode->val && (atomisp_streaming_count(isp) <
 					    ATOMISP_DEPTH_SENSOR_STREAMON_COUNT)) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
