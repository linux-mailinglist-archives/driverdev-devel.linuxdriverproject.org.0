Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4319BCD8AB
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 20:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B388885D44;
	Sun,  6 Oct 2019 18:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DH1v7GD4heoM; Sun,  6 Oct 2019 18:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4861085CFF;
	Sun,  6 Oct 2019 18:45:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2D91BF46A
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 18:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 413932035E
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 18:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7YgfXG+c5pB for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 18:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id ABED420198
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 18:45:08 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o18so12599706wrv.13
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 11:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BLRrAgbsWXih4clGwXHcgrN0r/ckYeUc4/Lev7iwj68=;
 b=pHafZmcDa364Q+dhPwlr7nhIUd5zHshMdZyjz7Y7GDSIfFpX/YbNDhOvFAEOvj/iQ+
 5hdLUEO95bV4YepysYlupbJSaabQV6Ehas7boCto1zLVYsaXL4DktUp7G5TC3pFHs7An
 zp3Z22ww9U4Uq1FjK20ciIvF35SrU4VL7804N/2wa9K85nZkxiRmXVQObvcGGLQidhTE
 qxQiW15HWzAIS55aZTFP+Yqqk3JmsllabxNfrbOfUtysj+Ai77ytuHqqsn/nJ49kROvF
 K1GdxiPyI945K3m5B4MkqjheEpJLwlOIrf/UM5Uf2TDUHOfH74bZ5mouOwmgMOds55Jn
 e0AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BLRrAgbsWXih4clGwXHcgrN0r/ckYeUc4/Lev7iwj68=;
 b=e7XYJYCZtlKfHyAIm6gKsBgj5wK84DZgGwlBEmCFA6gnnKcDg+J1sv1P2a/UL07yFC
 R8GNAnI0YVXdqjqEl3CN+F9J9Duc/KpHy0GpS50+12ZBCO+r+jsHYl6ChpQJcCrxp7ZV
 nPNyiMXUNqPSL1Rl/hBwiBk+iRpKJmzIhwa34a22IBQg64HOIZzIKmkZrgdRBjB+W+qR
 EDmRO3cZFQDB+UxHEZV8S2NRbo/aXzwvFuwyu7xnzR3gJY4dIr1cQ8vp2/aN4R7qNJmD
 NWXQxtfTTKoVlWhlO22uXxbr6CFX0uwrwGOT/isdlwMRf+dPoSqPWERXgErTtpDaqBZO
 FsvA==
X-Gm-Message-State: APjAAAWZGLQ7WqCPShqhSTKbyeajKlOdJOfp8yJSW3+S1Uz5/FcPdR0H
 0fNKN2Q8oxK2sK1cj5UceA==
X-Google-Smtp-Source: APXvYqyepOGf8igYvzB3AfpQ0u4G7hwVSLG3irfa8mVsmI7KDrPS/UPu3wZ+wh+hsyCmfg0oT0uC0g==
X-Received: by 2002:adf:ce83:: with SMTP id r3mr18656090wrn.219.1570387507029; 
 Sun, 06 Oct 2019 11:45:07 -0700 (PDT)
Received: from ninjahub.lan (host-92-15-175-166.as43234.net. [92.15.175.166])
 by smtp.googlemail.com with ESMTPSA id
 a7sm28150963wra.43.2019.10.06.11.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 11:45:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy@googlegroups.com
Subject: [PATCH] staging: comedi: Fix camelcase check warning
Date: Sun,  6 Oct 2019 19:44:53 +0100
Message-Id: <20191006184453.11765-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, abbotti@mev.co.uk,
 olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Capitalize unit_ma to fix camelcase check warning.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/comedi/comedi.h    | 4 ++--
 drivers/staging/comedi/comedidev.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..df770043b37d 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -674,7 +674,7 @@ struct comedi_rangeinfo {
  * linear (for the purpose of describing the range), with sample value %0
  * mapping to @min, and the 'maxdata' sample value mapping to @max.
  *
- * The currently defined units are %UNIT_volt (%0), %UNIT_mA (%1), and
+ * The currently defined units are %UNIT_volt (%0), %UNIT_MA (%1), and
  * %UNIT_none (%2).  The @min and @max values are the physical range multiplied
  * by 1e6, so a @max value of %1000000 (with %UNIT_volt) represents a maximal
  * value of 1 volt.
@@ -909,7 +909,7 @@ struct comedi_bufinfo {
 #define RF_EXTERNAL		0x100
 
 #define UNIT_volt		0
-#define UNIT_mA			1
+#define UNIT_MA			1
 #define UNIT_none		2
 
 #define COMEDI_MIN_SPEED	0xffffffffu
diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
index 0dff1ac057cd..54c091866777 100644
--- a/drivers/staging/comedi/comedidev.h
+++ b/drivers/staging/comedi/comedidev.h
@@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
 
 #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
 #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
-#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_mA}
+#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
 #define RANGE_unitless(a, b)	{(a) * 1e6, (b) * 1e6, 0}
 #define BIP_RANGE(a)		{-(a) * 1e6, (a) * 1e6, 0}
 #define UNI_RANGE(a)		{0, (a) * 1e6, 0}
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
