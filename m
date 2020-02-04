Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4D015174C
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 10:01:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 529D286FB0;
	Tue,  4 Feb 2020 09:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzBFLZW-BO9j; Tue,  4 Feb 2020 09:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A66D586DD3;
	Tue,  4 Feb 2020 09:01:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BC5E1BF30A
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 09:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 478752014A
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 09:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bhcnNc+R6Vte for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 09:00:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B4D0B1FE0A
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 09:00:59 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l24so9330359pgk.2
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 01:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i1Hdx03KpzIJqjLnNBsm/Ab9J3/wfB5FKXcb0BZf37c=;
 b=gdpVUwZQGp+PFX0HmzPpHsr4OR52mtM9cPrby2RkLoy7VLucoantTtPRh03D0ZUOlE
 BLGIVReOeQg5bSr2Grqo3YwCT1UedIVL/pxIAKiqlEV6QNQg6uDX6vqEDBeXZmfgFo0d
 a+REiyWTR2zoLWiPecytEmSUk0b23jcouNhfd7oTD2LBwQx0rTivE7FD2AK3E3E70k2S
 P842xQek2LaQswjaKu/z4l87jd/LkK8bBTBO2bOyGCYaDeHQ6r/9/odzEPMvw/Xq0AXU
 c6btJ32pKbFAuo7jzbyEh0rqCgwAUVl0uos1qUVDf/dC+Y2Bg3kfE3TSDDgCWABHpCZY
 8EIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i1Hdx03KpzIJqjLnNBsm/Ab9J3/wfB5FKXcb0BZf37c=;
 b=s/86nWxOKMDb4m2jadb4oEeCPMG3VkTNhFITaa7MHdUG4LZeG3G3WBUi/JiXsUT2aG
 PJYHWeNk382tjJHIcNUX5CcbapwdNgGBBIPQBYoWRvPU08NmCY2zGIQWqSLTFTaWzycQ
 q4377nMNvL2041bIP2bvAbPyxxyxIcC84GaXXkiEBhwuMBibncDYaCMkFMZ0gpDqRMe0
 koO/LqLUkB0gKuivYfTubpwP6m6ReUnBBsydaqh1EaOy8MRBnA1AwADLNGAmcUGwshm9
 l1pXnfr3j6EoQb83jcfu43btS4iPvGXVW+a22H8a+7IhMFcXdTfAB9x//5YacUkUrkDB
 HlCw==
X-Gm-Message-State: APjAAAW2WzoNtbnvn5ir7L0vReJhB22zxD6CKISzOULyVUyn8QVpQDzU
 pPvbHmAlmj8dHm2Q0ur3qt4koAg5YVixiw==
X-Google-Smtp-Source: APXvYqzXibLzgNJBHrGQYFI65lIG3QOgtpQMXx/kNDGLspr7gjJTVVudOKHU6y5WxUiy9RozMCMLcQ==
X-Received: by 2002:a62:8601:: with SMTP id x1mr29872722pfd.0.1580806858980;
 Tue, 04 Feb 2020 01:00:58 -0800 (PST)
Received: from localhost.localdomain ([240e:379:959:d990::fa3])
 by smtp.gmail.com with ESMTPSA id 72sm23144151pfw.7.2020.02.04.01.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:00:58 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: mt7621-dts: add dt node for 2nd/3rd uart on mt7621
Date: Tue,  4 Feb 2020 16:59:31 +0800
Message-Id: <20200204090022.123261-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: NeilBrown <neil@brown.name>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are 3 uarts on mt7621. This patch adds device tree node for
2nd and 2rd ones.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 38 ++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index d89d68ffa7bc..cee23710d03b 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -166,6 +166,44 @@ uartlite: uartlite@c00 {
 			no-loopback-test;
 		};
 
+		uartlite2: uartlite@d00 {
+			compatible = "ns16550a";
+			reg = <0xd00 0x100>;
+
+			clock-frequency = <50000000>;
+
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SHARED 27 IRQ_TYPE_LEVEL_HIGH>;
+
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			no-loopback-test;
+
+			status = "disabled";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart2_pins>;
+		};
+
+		uartlite3: uartlite@e00 {
+			compatible = "ns16550a";
+			reg = <0xe00 0x100>;
+
+			clock-frequency = <50000000>;
+
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SHARED 28 IRQ_TYPE_LEVEL_HIGH>;
+
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			no-loopback-test;
+
+			status = "disabled";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart3_pins>;
+		};
+
 		spi0: spi@b00 {
 			status = "disabled";
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
