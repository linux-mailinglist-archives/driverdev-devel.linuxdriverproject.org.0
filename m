Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1522113E5D1
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:17:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938A786599;
	Thu, 16 Jan 2020 17:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRO9ydbF_w_B; Thu, 16 Jan 2020 17:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD15886521;
	Thu, 16 Jan 2020 17:17:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7251BF2B0
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 366B220341
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veQhi2xoKSXR for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DCE2F20361
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:17:34 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF35220730;
 Thu, 16 Jan 2020 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195054;
 bh=cyolrKyQqcWnUj1w/WpO+8ZHLz1C8xJEUPgOyPSTNaY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YR1HFR7FBUCqiLf9TW4p0MgDCbB4vnrY6I6JytCxEjORw0JWV4g/LfS8EiGsQagX5
 Gw2M5CfU5CDSXqkNl1ylNHsW1FmeOPjjKbCNvFzh05uGLQYzIMUC85SiT8ST+lTi8r
 Mt7agqCoVxC7Pq4F9FdMhKj0l3ZEEBSayiab2NRQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 011/371] staging: comedi: ni_mio_common: protect
 register write overflow
Date: Thu, 16 Jan 2020 12:11:19 -0500
Message-Id: <20200116171719.16965-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, devel@driverdev.osuosl.org,
 "Spencer E. Olson" <olsonse@umich.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: "Spencer E. Olson" <olsonse@umich.edu>

[ Upstream commit 1cbca5852d6c16e85a21487a15d211195aacd4a1 ]

Fixes two problems introduced as early as
commit 03aef4b6dc12  ("Staging: comedi: add ni_mio_common code"):
(1) Ensures that the last four bits of NISTC_RTSI_TRIGB_OUT_REG register is
    not unduly overwritten on e-series devices.  On e-series devices, the
    first three of the last four bits are reserved.  The last bit defines
    the output selection of the RGOUT0 pin, otherwise known as
    RTSI_Sub_Selection.  For m-series devices, these last four bits are
    indeed used as the output selection of the RTSI7 pin (and the
    RTSI_Sub_Selection bit for the RGOUT0 pin is moved to the
    RTSI_Trig_Direction register.
(2) Allows all 4 RTSI_BRD lines to be treated as valid sources for RTSI
    lines.

This patch also cleans up the ni_get_rtsi_routing command for readability.

Fixes: 03aef4b6dc12  ("Staging: comedi: add ni_mio_common code")
Signed-off-by: Spencer E. Olson <olsonse@umich.edu>
Reviewed-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../staging/comedi/drivers/ni_mio_common.c    | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 36361bdf934a..2f82dcb1fd06 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -4991,7 +4991,10 @@ static int ni_valid_rtsi_output_source(struct comedi_device *dev,
 	case NI_RTSI_OUTPUT_G_SRC0:
 	case NI_RTSI_OUTPUT_G_GATE0:
 	case NI_RTSI_OUTPUT_RGOUT0:
-	case NI_RTSI_OUTPUT_RTSI_BRD_0:
+	case NI_RTSI_OUTPUT_RTSI_BRD(0):
+	case NI_RTSI_OUTPUT_RTSI_BRD(1):
+	case NI_RTSI_OUTPUT_RTSI_BRD(2):
+	case NI_RTSI_OUTPUT_RTSI_BRD(3):
 		return 1;
 	case NI_RTSI_OUTPUT_RTSI_OSC:
 		return (devpriv->is_m_series) ? 1 : 0;
@@ -5012,11 +5015,18 @@ static int ni_set_rtsi_routing(struct comedi_device *dev,
 		devpriv->rtsi_trig_a_output_reg |= NISTC_RTSI_TRIG(chan, src);
 		ni_stc_writew(dev, devpriv->rtsi_trig_a_output_reg,
 			      NISTC_RTSI_TRIGA_OUT_REG);
-	} else if (chan < 8) {
+	} else if (chan < NISTC_RTSI_TRIG_NUM_CHAN(devpriv->is_m_series)) {
 		devpriv->rtsi_trig_b_output_reg &= ~NISTC_RTSI_TRIG_MASK(chan);
 		devpriv->rtsi_trig_b_output_reg |= NISTC_RTSI_TRIG(chan, src);
 		ni_stc_writew(dev, devpriv->rtsi_trig_b_output_reg,
 			      NISTC_RTSI_TRIGB_OUT_REG);
+	} else if (chan != NISTC_RTSI_TRIG_OLD_CLK_CHAN) {
+		/* probably should never reach this, since the
+		 * ni_valid_rtsi_output_source above errors out if chan is too
+		 * high
+		 */
+		dev_err(dev->class_dev, "%s: unknown rtsi channel\n", __func__);
+		return -EINVAL;
 	}
 	return 2;
 }
@@ -5032,12 +5042,12 @@ static unsigned int ni_get_rtsi_routing(struct comedi_device *dev,
 	} else if (chan < NISTC_RTSI_TRIG_NUM_CHAN(devpriv->is_m_series)) {
 		return NISTC_RTSI_TRIG_TO_SRC(chan,
 					      devpriv->rtsi_trig_b_output_reg);
-	} else {
-		if (chan == NISTC_RTSI_TRIG_OLD_CLK_CHAN)
-			return NI_RTSI_OUTPUT_RTSI_OSC;
-		dev_err(dev->class_dev, "bug! should never get here?\n");
-		return 0;
+	} else if (chan == NISTC_RTSI_TRIG_OLD_CLK_CHAN) {
+		return NI_RTSI_OUTPUT_RTSI_OSC;
 	}
+
+	dev_err(dev->class_dev, "%s: unknown rtsi channel\n", __func__);
+	return -EINVAL;
 }
 
 static int ni_rtsi_insn_config(struct comedi_device *dev,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
