Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A116522E7AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 10:26:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84CA4880C5;
	Mon, 27 Jul 2020 08:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qp2sfryqJLac; Mon, 27 Jul 2020 08:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB7FA8808D;
	Mon, 27 Jul 2020 08:26:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 435331BF3EB
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 08:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F77A86DEA
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 08:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sx7m8beOvD8r for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 08:25:58 +0000 (UTC)
X-Greylist: delayed 00:21:16 by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3CBE86DCC
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 08:25:58 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id w17so13660332oie.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 01:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=nJNa9uz6VP84cme/Py+7ka0vfYx0GHGjSdy+npdBPeWmYgPEbYcuQSwKl70c6tQznU
 nZWXmTV5IlZSxcu+V65H3m39JrNlWZYJa9U+P5BQ3e9i2sm3aPXlBg3gYw/OxoL0uH0K
 AKf/FDJg+r7S9Ct4qiQbvMQTrzLzD7XsUI5P2LBVT7mRzoH8OfEgJFLMMd2A7xkJ7I8X
 14jGy3dttcfKGt0fMIKAmPkglAUQ9NHV84Zx/NWxR+Ymw1kzmsgPYHQn2CfM+CdTyXId
 oF0CCY5j2SfxRJYvWZKhWjju9bXKPeaibtjN36DZAgQke7tdg/Eqe1d3QrWo2I6oEqc7
 dluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0aKrJE9Py1tsJLs5WZM0aY5vQOQN0nZ3c2moryg/s6o=;
 b=d6cCXg89uYc6pPvK4rsmCJ4UP/0DYgKJoW2wDowc8lqroPHiqydPStBIHSf1lEmSbq
 Dc7mKROcRdxa79/yGd9Tm1iH46ZIN/FCwv+bZLU62wbATnFjJw/Aijl55zj5aKFn96oQ
 lXPVNAcqpCbplj/gX72/FuFAoVAjI96NO78/lahK+ob2m0fFvHb6qP84scTVXob08RoX
 +X1B7n/ukbgglc8iL06uNy83xtbLcYdDcd3B0Q1CSnrKgR8vsMgdME5zoEYfpXg6uJin
 cYJH0vgZDh7lvqETINaxOO4wMB3LAGcIxpH/3stD9Ln1scNUToaZxdAyo/at7piH6+6n
 Plew==
X-Gm-Message-State: AOAM531GazlZ6ZjVE0YXoxjiq+1F5Q2LAFOWYCygiXOkG+JZBn8vDimG
 Wu+a8PrNTptZomHi321sYm/ySjUjuYWmp7yd
X-Google-Smtp-Source: ABdhPJyLqbVZbqonRnh1UxubYv7PTVMPqTP/SSuLKnbNXZqLsYVNeIWLdbuKO4BlbLBehkSJoGEcLA==
X-Received: by 2002:a17:90a:e96:: with SMTP id
 22mr6389287pjx.135.1595836595721; 
 Mon, 27 Jul 2020 00:56:35 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id u21sm1312338pjn.27.2020.07.27.00.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 00:56:35 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org
Subject: [PATCH] Staging : media : atomisp : pci : fixed a brace coding sytle
 issue
Date: Mon, 27 Jul 2020 13:25:28 +0530
Message-Id: <20200727075528.10418-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 andriy.shevchenko@linux.intel.com, b18007@students.iitmandi.ac.in,
 linux-media@vger.kernel.org
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
