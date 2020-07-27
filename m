Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0297122FB87
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 23:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93AA187C94;
	Mon, 27 Jul 2020 21:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W31ITDn5TZ4o; Mon, 27 Jul 2020 21:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F88987A33;
	Mon, 27 Jul 2020 21:37:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDF751BF34F
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 21:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA624226D3
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 21:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmcQ7aavJbLD for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 21:37:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E98D2226D0
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 21:37:32 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id l84so3081726oig.10
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 14:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=UgJXL5ZgUVlcqiIEkxepKVs7siRXuEAQdZK3nO34UmuoDyh33PscEtdV8jnjyxR5Xl
 rbtTymcJriw6nqg1prpC573d9FF3ZgqYtUML7+vytvQ2vbsBD6KKzJNt+MIddP/38g7c
 m6GaRX0usUd2RjdnUjH+OP10x3SoqJvLpdmoluaPGcOI1SMSoUC18RXmTW/LzUHh+y6l
 Kmq9UrcC/rMnQJ1QAfVz3HMHBMO5/+uECyH1epHXCniYlhX7XxcbyCpzAovIbHYjnm6u
 FfowA/MIEYqK+4ec1SIFicgzRktBaB5Og+4OYlJ6Wp+mwCFUqMLRuKG9pAVBwqno84Si
 xbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=Lyycd2c+iJXdnlijZXwRgkFcfY/GNltG7W8os4vwPTRnOMAdvlH9iRYNKT9lDLRjbh
 2eqcteHbOHGq3Jki2zcPGDRSP29nO5t2TKSxo006iKuK5ekC5ycBuxaGzvaBaZxGMf1c
 kK45bC4NaQRyEiDFvudD8KGSN3t302n0YWZc8XPsEuHiCjzfw8f9wFJE0FmFSSdN0Ynz
 T0rWp0+zPNLVVlWRANA3nsdutmJMKTIIOfeCyRAK4xaGsIpOGNOh7gM7UdR5AktKfaKm
 GYPQ2Ey3Xn0T+s8LIOD+yiz5fZXJjLuOCzJ3XXtppxD87CRdcxloK1O5SI0/8ew+Q/el
 g19w==
X-Gm-Message-State: AOAM531PyVV2NSxsUakVxEk03uUh0qbdis8yKlNgq/+ZRAkYG4+umY1D
 /ZBj+FpaBggqv8YzACu0AFGjDYOWjvgIxNCE
X-Google-Smtp-Source: ABdhPJz63MIxkCOChRI5KihUD89x8PkNKnFigexIckawruEH/R2dRkrMBNIQ2D4mBnhl+TcPwiamwQ==
X-Received: by 2002:a17:90b:488:: with SMTP id
 bh8mr1189823pjb.49.1595885492110; 
 Mon, 27 Jul 2020 14:31:32 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id n24sm5880865pfa.125.2020.07.27.14.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 14:31:31 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH] Staging : media : atomisp : fixed a brace coding sytle issue
Date: Tue, 28 Jul 2020 03:00:10 +0530
Message-Id: <20200727213010.15156-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200727121635.GT3703480@smile.fi.intel.com>
References: <20200727121635.GT3703480@smile.fi.intel.com>
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
