Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EEB16026D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Feb 2020 09:15:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AABAD85495;
	Sun, 16 Feb 2020 08:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTsSl5U_QnaZ; Sun, 16 Feb 2020 08:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63BA08542A;
	Sun, 16 Feb 2020 08:15:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BE081BF2F5
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 08:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5889E20111
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 08:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iHvujU-rsLvL for <devel@linuxdriverproject.org>;
 Sun, 16 Feb 2020 08:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D387A20133
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 08:15:29 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id dw13so5821202pjb.4
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 00:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IPq1zpwSVUc2BwMNSiorah9vIooglTMZdPMTCQ22xoc=;
 b=Oo0WTi+hQqvm1VHEf/nIVRrxg2LZMeWpjZ7dyqm6rbTfNnn2DMDppbQBIbkEURDkFC
 icrBsguuCHsETDnY1uLiclZk+gmXueTdeVmwv6NMHUfJUkYeYW7CwVPt8oe7zfCKxjbf
 dqmfhkmK/SeRP1Z64TlSzv0sYrxdaQMaXylQahVkW1bS1Ylsyr5cnH7K7lFJnlrST77u
 cbn6Kl8PmU/RpuwODNq9v269K06gNWiMdzsMWST15eSiZUveFJgwQvgOPBs5aT49k42b
 xO/X18v+AGw04Vz/hv2QwT9f7ND0XW6XikXnUUXqo1VUCUNYYpBpPczo81p3DvHsziXc
 G6RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IPq1zpwSVUc2BwMNSiorah9vIooglTMZdPMTCQ22xoc=;
 b=chO7BJecVoKn5NIIgBIqA2olKYekTDOloRQPZ/DKD+nJz4bMBPTQPRC+5r21nEPdNv
 nOm9GGPHPFP/af5Gabn/RkBFycC8WlTV66coejblL7HDnOvnlP493OcLEATRGZP3qKRA
 1pjuFBpnR1Of8WMP8hTs68uC07nasfMLan37TTTKH67bIQWUNOXAP+w1w5bWPhdn77Ak
 //xD8IMZ6qJH1APZurNYGRXybGHO11bvMNyEQdsMtC+sC8kSQe7/c5euUCGeOe5i71OQ
 jk3tUAPQW+f5LvZcloCRqQGTM8Z21sUPANyBNvRF0347MCMblyNDjAT+KHhBJMsIwlVG
 fmsg==
X-Gm-Message-State: APjAAAW5boybyVCmF3lR0NWfyTJOgSJycu5G1Lf4kbQ/33LA1qgG+Plp
 ndaj2AjtDHJ/yaewD3WTRrc=
X-Google-Smtp-Source: APXvYqzvyMehH+mrAJXZmiw69LuUF8vusZsGHy4/DN1NAam4f7aZYfm5AmQqbwcX1sfmh7nAnRM/Ng==
X-Received: by 2002:a17:90a:c697:: with SMTP id
 n23mr12920806pjt.37.1581840929179; 
 Sun, 16 Feb 2020 00:15:29 -0800 (PST)
Received: from SunnyPranay.localdomain ([106.51.196.103])
 by smtp.gmail.com with ESMTPSA id r14sm12226616pfh.10.2020.02.16.00.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 00:15:28 -0800 (PST)
From: sunnypranay <mpranay2017@gmail.com>
To: abbotti@mev.co.uk
Subject: [PATCH] Staging: comedi: drivers: fixed errors warning coding style
 issue
Date: Sun, 16 Feb 2020 13:45:18 +0530
Message-Id: <20200216081518.3516-1-mpranay2017@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, sunnypranay <mpranay2017@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: sunnypranay <mpranay2017@gmail.com>
---
 drivers/staging/comedi/drivers.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
index 750a6ff3c03c..76395de100a6 100644
--- a/drivers/staging/comedi/drivers.c
+++ b/drivers/staging/comedi/drivers.c
@@ -133,7 +133,7 @@ EXPORT_SYMBOL_GPL(comedi_alloc_subdevices);
  * On success, @s->readback points to the first element of the array, which
  * is zero-filled.  The low-level driver is responsible for updating its
  * contents.  @s->insn_read will be set to comedi_readback_insn_read()
- * unless it is already non-NULL.
+ * Unless it is already non-NULL.
  *
  * Returns 0 on success, -EINVAL if the subdevice has no channels, or
  * -ENOMEM on allocation failure.
@@ -282,8 +282,20 @@ EXPORT_SYMBOL_GPL(comedi_readback_insn_read);
  * continue waiting or some other value to stop waiting (generally 0 if the
  * condition occurred, or some error value).
  *
- * Returns -ETIMEDOUT if timed out, otherwise the return value from the
- * callback function.
+ * Redback_insn_read() - A generic (*insn_read) for subdevice readback.
+ * @dev: COMEDI device.
+ * @s: COMEDI subdevice.
+ * @insn: COMEDI instruction.
+ * @data: Pointer to return the readback data.
+ * Handles the %INSN_READ instruction for subdevices that use the readback
+ * array allocated by comedi_alloc_subdev_readback().  It may be used
+ * directly as the subdevice's handler (@s->insn_read) or called via a
+ * wrapper.
+ * @insn->n is normally 1, which will read a single value.  If higher, the
+ * same element of the readback array will be read multiple times.
+ * Returns @insn->n on success,
+ * or -EINVAL if @s->readback is NULL.turns -ETIMEDOUT if timed out,
+ * otherwise the return value from the callback function.
  */
 int comedi_timeout(struct comedi_device *dev,
 		   struct comedi_subdevice *s,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
