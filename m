Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3230D141BC1
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 04:53:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C2B52041D;
	Sun, 19 Jan 2020 03:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JF1SchEE3Gr; Sun, 19 Jan 2020 03:53:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 157002038F;
	Sun, 19 Jan 2020 03:53:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D51211BF38A
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 03:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C685C856F4
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 03:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqarF5EPilwQ for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 03:52:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0551F84E4E
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 03:52:57 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x7so13715228pgl.11
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 19:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=btELW0aVdENtiHQfPBXo2Jo9tXu8fqSJd1sAuN+cQlA=;
 b=EF6SuAD+V07QXPyDtN8sLfQHP0ferSjMAY1s5OlUxBnjFVaSw/RZgnhpJ9ISmW3Nk6
 a6+RchmuHdy57ia3QGNprmpVBncCxGyIScYCBk7OG82nVCs4MmHrpUU0h0R8tGPdZUE6
 /GgOfVlTFn3inUkSeMSFp0MnDKG3LbaqiLbb5TmMtY3GqFYEsp/Yj1zQZqsojBhTO8Zb
 2IWXK2+dvVVA5Z/6Yh6/CPlye2NJi7Qeo+uRiKuIwKARJZa6Uzvjb/2iP/wKvXETVBWP
 FiivJjsnSloibiJepig3dsh6UII3msWFeKmjOhmNB96x23WYXhgGRxzDcK6qMQGX01Yq
 QaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=btELW0aVdENtiHQfPBXo2Jo9tXu8fqSJd1sAuN+cQlA=;
 b=GV21PDp4/ZzYt1SmM1ditHjGjxXXHusBnVxQAYw9Ky5UwjDQShCAYyA62wWNufBY6W
 3ST8/caK1Nz0BHbwdI1uoHEjThSvwstcFFFO+pUoNB3ws0BptbwcZ6KDKZaGR94PMU1t
 CNz9/snGRKcKmmb8ql/6k9Oclk4H7L1Qgn54p5Hw/oLkC0ab4i15O3v0IAs3LHR1ci2L
 4WvSauDxkJsIaSnYZLeFRJT9Et2ZjsoZRXJ/kPTQD8ziN9L4qN6QujXB/qszOmdHnzMN
 v1lRrxG3Rp2ZKrHsUPE0kllQkOUXIURW1dBIZTBuDD0buoUZ6YpbemVMTrDMmklkPmjx
 Abgw==
X-Gm-Message-State: APjAAAWJ4qNt4Xr51J52UE+2aF06rE0c0MVKc4aG0LKJcHqAxwWmq35l
 AAWp5osOYDWBw/K/cdYCLhI=
X-Google-Smtp-Source: APXvYqwTJFbHk45l0Fulxs4JHrXqQBCxR58FqHRtbwwGsWIU5+2J88F+7/50sSaUvAcy10t7YDDiXw==
X-Received: by 2002:a63:214e:: with SMTP id s14mr52957124pgm.428.1579405976633; 
 Sat, 18 Jan 2020 19:52:56 -0800 (PST)
Received: from localhost.localdomain (n11923789033.netvigator.com.
 [119.237.89.33])
 by smtp.gmail.com with ESMTPSA id 100sm12601617pjo.17.2020.01.18.19.52.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 19:52:55 -0800 (PST)
From: Simon Fong <simon.fongnt@gmail.com>
To: abbotti@mev.co.uk
Subject: [PATCH 3/3] Staging: comedi: usbdux: cleanup long line and align it
Date: Sun, 19 Jan 2020 11:52:43 +0800
Message-Id: <20200119035243.7819-1-simon.fongnt@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Simon Fong <simon.fongnt@gmail.com>, linux-kernel@vger.kernel.org,
 colin.king@canonical.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up long line and align it

Signed-off-by: Simon Fong <simon.fongnt@gmail.com>
---
 drivers/staging/comedi/drivers/usbdux.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
index 0350f303d557..b9c0b1a1d86e 100644
--- a/drivers/staging/comedi/drivers/usbdux.c
+++ b/drivers/staging/comedi/drivers/usbdux.c
@@ -204,7 +204,8 @@ struct usbdux_private {
 	struct mutex mut;
 };
 
-static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)
+static void usbdux_unlink_urbs(struct urb **urbs,
+			       int num_urbs)
 {
 	int i;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
