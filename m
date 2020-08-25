Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E3E250D42
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 02:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A26285E8A;
	Tue, 25 Aug 2020 00:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id he6rF9tTat-4; Tue, 25 Aug 2020 00:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CE0285E2B;
	Tue, 25 Aug 2020 00:31:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22A251BF97D
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 00:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DCA32079D
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 00:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eBakBV97c2yH for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 00:31:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 8118021579
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 00:31:12 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id y65so1416751qtd.2
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 17:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=xANOom6za8213SIT9asU21bhuancO+3Fjld5hj7jZ9s=;
 b=d+3lOzZ+Rv4Nlvq69bdhckoKvsBmiGKeS9NHwPjqQueToG0Vjecc1NrCaUlt0cOhnM
 NM61u98rxDIj0BgMKd2GYoCSr/wKGZR7K4KZ4xGQTjb/uWM0M8lgfYF9sOd2OrHZrvRJ
 /MQRLMtbn/z5VOlovh4RQlr2e37vM+Q5wa2TLpJw1MeBcahBUIMvF45f9ATEaprg+enb
 xinOuR6ADDhv+9E2zpkXr7WP5IYB6xP41ONbO6B10K9sb/U8WyJWx1itco4Fnv2eO5qe
 GN6fFG8sZebF5ez1z9ptPQCVpvswWFR287JwnZUYKsgWKn3UrBHuq7e5JrLFox275ddC
 3kSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=xANOom6za8213SIT9asU21bhuancO+3Fjld5hj7jZ9s=;
 b=sWkp+ZhK6piHNrCRUSvbXaKHSDNPixCVP+Md2ku15uXoirVZR/LKrWOobNPGJX9VyW
 qyVSqjS4SaNZ3NBJFh5IU1btF+Qji8SLHWV9PCxGKtd36iqrmtIsFEeML9zYLHTIscgT
 jD6WbF+gU8UVq5OEcGnzsSErr2mmel0eTgMuU9swqauq4IWca/YN4WHxD85ELMgwXp6L
 fGPh2FCeB4UHcYeM2pNXRckCI/J8kqFWidhZUekBuAUntft7JqSwMceGI7L2nDeSk88D
 NJN+WtEo9RP0GCuv4wZYASfL6HkAqJ6kqIHnKop3GU0dCQ8+/79kq2qC1DkCiTGa5P+u
 z/8w==
X-Gm-Message-State: AOAM533kkNwpy+dEpOqD0+o7zPg5PK18vXXC7Gkwx6z5EAUdfaX0lQTy
 EJ3xPy+jmQyuVsgJ47MLzVs=
X-Google-Smtp-Source: ABdhPJyTUpH2n1QuMbEfMZ8aD/Bwk0jpTQJ+FREvsINy4FLzxMuOMBv34WjMkNlkTuYXLTF9+uoLFw==
X-Received: by 2002:ac8:7395:: with SMTP id t21mr7146636qtp.205.1598315471330; 
 Mon, 24 Aug 2020 17:31:11 -0700 (PDT)
Received: from archlaptop.localdomain ([71.219.109.128])
 by smtp.gmail.com with ESMTPSA id v45sm12857859qtc.42.2020.08.24.17.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Aug 2020 17:31:10 -0700 (PDT)
Date: Mon, 24 Aug 2020 20:29:55 -0400
From: Ethan Edwards <ethancarteredwards@gmail.com>
To: gregkh@linuxfoundation.org, abbotti@mev.co.uk
Subject: [PATCH v2] drivers: staging: comedi: fixed duplicate words from
 checkpatch
Message-ID: <20200825002955.e3wvtwsoqqbc2cvl@archlaptop.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed various different checkpatch duplicate word warnings, the TODO
file said to fix checkpatch warnings.

Signed-off-by: Ethan Edwards <ethancarteredwards@gmail.com>
---
Old email has lines about CC'ing the mailing lists, patch v2 fixes this.
 drivers/staging/comedi/comedi.h                  | 4 ++--
 drivers/staging/comedi/comedidev.h               | 2 +-
 drivers/staging/comedi/drivers/addi_apci_1564.c  | 4 ++--
 drivers/staging/comedi/drivers/comedi_8255.c     | 2 +-
 drivers/staging/comedi/drivers/ni_tiocmd.c       | 2 +-
 drivers/staging/comedi/drivers/pcmuio.c          | 2 +-
 drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..b5d00a006dbb 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -680,7 +680,7 @@ struct comedi_rangeinfo {
  * value of 1 volt.
  *
  * The only defined flag value is %RF_EXTERNAL (%0x100), indicating that the
- * the range needs to be multiplied by an external reference.
+ * range needs to be multiplied by an external reference.
  */
 struct comedi_krange {
 	int min;
@@ -970,7 +970,7 @@ enum i8254_mode {
  *   major reasons exist why this caused major confusion for users:
  *   1) The register values are _NOT_ in user documentation, but rather in
  *     arcane locations, such as a few register programming manuals that are
- *     increasingly hard to find and the NI MHDDK (comments in in example code).
+ *     increasingly hard to find and the NI MHDDK (comments in example code).
  *     There is no one place to find the various valid values of the registers.
  *   2) The register values are _NOT_ completely consistent.  There is no way to
  *     gain any sense of intuition of which values, or even enums one should use
diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
index 0dff1ac057cd..0e1b95ef9a4d 100644
--- a/drivers/staging/comedi/comedidev.h
+++ b/drivers/staging/comedi/comedidev.h
@@ -627,7 +627,7 @@ extern const struct comedi_lrange range_unknown;
  * @range: Array of &struct comedi_krange, one for each range.
  *
  * Each element of @range[] describes the minimum and maximum physical range
- * range and the type of units.  Typically, the type of unit is %UNIT_volt
+ * and the type of units.  Typically, the type of unit is %UNIT_volt
  * (i.e. volts) and the minimum and maximum are in millionths of a volt.
  * There may also be a flag that indicates the minimum and maximum are merely
  * scale factors for an unknown, external reference.
diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
index fadefcb5c237..06fc7ed96200 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1564.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1564.c
@@ -544,7 +544,7 @@ static int apci1564_timer_insn_write(struct comedi_device *dev,
 {
 	struct apci1564_private *devpriv = dev->private;
 
-	/* just write the last last to the reload register */
+	/* just write the last to the reload register */
 	if (insn->n) {
 		unsigned int val = data[insn->n - 1];
 
@@ -628,7 +628,7 @@ static int apci1564_counter_insn_write(struct comedi_device *dev,
 	unsigned int chan = CR_CHAN(insn->chanspec);
 	unsigned long iobase = devpriv->counters + APCI1564_COUNTER(chan);
 
-	/* just write the last last to the reload register */
+	/* just write the last to the reload register */
 	if (insn->n) {
 		unsigned int val = data[insn->n - 1];
 
diff --git a/drivers/staging/comedi/drivers/comedi_8255.c b/drivers/staging/comedi/drivers/comedi_8255.c
index 3298725b9ba5..b7ca465933ee 100644
--- a/drivers/staging/comedi/drivers/comedi_8255.c
+++ b/drivers/staging/comedi/drivers/comedi_8255.c
@@ -248,7 +248,7 @@ EXPORT_SYMBOL_GPL(subdev_8255_mm_init);
  * subdev_8255_regbase - get offset of 8255 registers or call-back context
  * @s: comedi subdevice
  *
- * Returns the 'regbase' parameter that was previously passed to to
+ * Returns the 'regbase' parameter that was previously passed to
  * subdev_8255_init() or subdev_8255_mm_init() to set up the subdevice.
  * Only valid if the subdevice was set up successfully.
  */
diff --git a/drivers/staging/comedi/drivers/ni_tiocmd.c b/drivers/staging/comedi/drivers/ni_tiocmd.c
index 2a9f7e9821a7..ab6d9e8269f3 100644
--- a/drivers/staging/comedi/drivers/ni_tiocmd.c
+++ b/drivers/staging/comedi/drivers/ni_tiocmd.c
@@ -286,7 +286,7 @@ int ni_tio_cmdtest(struct comedi_device *dev,
 		 * This should be done, but we don't yet know the actual
 		 * register values.  These should be tested and then documented
 		 * in the ni_route_values/ni_*.csv files, with indication of
-		 * who/when/which/how these these were tested.
+		 * who/when/which/how these were tested.
 		 * When at least a e/m/660x series have been tested, this code
 		 * should be uncommented:
 		 *
diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
index 7e1fc6ffb48c..b299d648a0eb 100644
--- a/drivers/staging/comedi/drivers/pcmuio.c
+++ b/drivers/staging/comedi/drivers/pcmuio.c
@@ -48,7 +48,7 @@
  *
  * In the 48-channel version:
  *
- * On subdev 0, the first 24 channels channels are edge-detect channels.
+ * On subdev 0, the first 24 channels are edge-detect channels.
  *
  * In the 96-channel board you have the following channels that can do edge
  * detection:
diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
index 1b1efa4d31f6..fe4408ebf6b3 100644
--- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
+++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
@@ -164,7 +164,7 @@ static int daqp_clear_events(struct comedi_device *dev, int loops)
 
 	/*
 	 * Reset any pending interrupts (my card has a tendency to require
-	 * require multiple reads on the status register to achieve this).
+	 * multiple reads on the status register to achieve this).
 	 */
 	while (--loops) {
 		status = inb(dev->iobase + DAQP_STATUS_REG);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
