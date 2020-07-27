Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0312C22E737
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 10:02:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 489DD20440;
	Mon, 27 Jul 2020 08:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F97CvjIv7Tqs; Mon, 27 Jul 2020 08:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8905620457;
	Mon, 27 Jul 2020 08:02:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62C661BF2F2
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 08:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F70D85E60
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 08:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgJETSpGm9UT for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 08:02:04 +0000 (UTC)
X-Greylist: delayed 00:05:28 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 374B885E25
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 08:02:04 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id l6so7591388plt.7
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 01:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=KKqLZ5nwx7nxpoPwMu9qwSR1JM5EddcoP1pbxCt7v3rbmO55ujS/kCvtb6LFy0pXOt
 1N8ISZQ8RPBeYIS6BLNxRucrOVz1Ixy4va6HxddeXzoN3OLxLmR5Z2iStw5nPR9k+8by
 F8aWzDLSdvNQ0YT56u3WCrMZ5MkwhiXTAyDxMfKpSsFlD+lyrfSKIxHGTyVXSPnryIaN
 nf/SSw0LsQNMMSMed5JIr/m/0CDjrRn5LGOvBbOo5DwMVPSIp3+Mz9O8mdp0hOhnbKOp
 u/EMI8h5+BJmBut7v4UQFg544FzC1RpmJtOKdhU762u5NMuOlLLEhvtW7RKParzmyP3x
 AtxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=P0IdIADVeJ7KCah8yav1ljf5T8wqOtZUQCceWdUNhG/W0gw7urwO06ax60UVqXRi1t
 KOmiJaV7kPQ8NbWHeQQaQPx00s2he5/PYSHFpSeUlEcBvQFnp0R5uZsnKbfBiueKAjCk
 P1NEzLHSiBtFXtZPMlgHMJVtUOobOPlxv+ojtpwLNIT05pcfxvRYUGIjVBx7YR7VquB0
 LJALK1kcGVplq1TaXEB5PatCTQpzWK2bsD8kA1vNjidWt7+AuCHycQqiw1iBq5W7LUYL
 77NIPYF7v2M0CdibA2qbSJJ6IaOgP1RVQr/NkXIoBOBXndnKI++G/gbi+P+1GkW+fiZA
 WrrQ==
X-Gm-Message-State: AOAM5334BeE0qvhU8loWsNTYUplsjetuvcEGdK0YrA3PXf+lSt2v1IBA
 R/x5GmyuHC3Q8oRSnhOxOvYPZB1mMSph8292
X-Google-Smtp-Source: ABdhPJxziIblCT8HYAbJj1Tahx3ppMGS4qWuh83g0+lwwyyTBn4XTjVDzrY+1PhUQvEXSnOUioUrLw==
X-Received: by 2002:a17:90a:1109:: with SMTP id
 d9mr17853767pja.201.1595836923781; 
 Mon, 27 Jul 2020 01:02:03 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id bv17sm1164494pjb.0.2020.07.27.01.02.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 01:02:03 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH] Staging : media : atomisp : pci : fixed a brace coding sytle
 issue
Date: Mon, 27 Jul 2020 13:31:50 +0530
Message-Id: <20200727080150.10659-1-b18007@students.iitmandi.ac.in>
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
 b18007@students.iitmandi.ac.in, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ankit Baluni<b18007@students.iitmandi.ac.in>

Fixed a coding style issue.

Signed-off-by: Ankit Baluni<b18007@students.iitmandi.ac.in>

---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 8ea65bef35d2..28b96b66f4f3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4981,9 +4981,8 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
 	case ATOMISP_CAMERA_PORT_SECONDARY:
 		return MIPI_PORT1_ID;
 	case ATOMISP_CAMERA_PORT_TERTIARY:
-		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID) {
+		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID)
 			return MIPI_PORT1_ID + 1;
-		}
 	/* fall through */
 	default:
 		dev_err(isp->dev, "unsupported port: %d\n", port);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
