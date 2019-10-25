Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C4AE45F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAC29877E9;
	Fri, 25 Oct 2019 08:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X5BWmrQmEtf2; Fri, 25 Oct 2019 08:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC8AC86E1D;
	Fri, 25 Oct 2019 08:41:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9FB81BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B77C68659B
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUuSL2i+cCin for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D87C58619F
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:35 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q13so1280083wrs.12
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7AefCLQ4P2FXA784rctO4h0y4YIabz91rBAsM41QGC8=;
 b=W8wpPLO34XNeMbUO6mF/Gme2Q9kkyLWEPlDmAUMxoL4/fI5HWYQM6lAyxcqAFA4Np1
 v3qFT2fhRHLAk+j+d/ntaVErAL31cVWEInWTJlfkkj7xUmQhqYw4OYR6dqFNhrzzpHpY
 HP7fS6R1ft22+xPBnaevaVtXrN+qedz+4bgzfeao0Mq4pBuIRXngMjufZeJG3wRg3JH8
 WtDdERrqK6f6GjxrQ9tsdG1dxdFYkcTEmHdes60+7FBYcV7rbwlL5V+qy5M4zi7q507Q
 i9oxeZI4KQzIr0Xdhjk63Nqtl4x6RVov4QLUfuNDMOHfro+X9VYlP0xUm6t8D/u84NEN
 ITcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7AefCLQ4P2FXA784rctO4h0y4YIabz91rBAsM41QGC8=;
 b=W8MRVgyAQ0wG7oJqwwExK46aSeQJPhM1buiXCQxV/2iA8EtkRJvjDsmUFOFx0A7rUO
 JkkHRSz4Wxpt5962TsjAElNOvoe2/xa+5jOkH1FKeyX951BQ2WSc2WnM44ZKDFSflnNm
 PigcHRJAgZCSRDGBoKFQVSUX4gO8YTlggB0WdRtR+NUEmJuWtlZo0SAxlC/KeomLu7Bm
 Ehvmpi6snocOL+2D61PHe4qGY1Ln2ds08PX41yDPDp7yEEmmx0NEoY2moalaEHHA2p1w
 nvXPdWfGShSSjCBo54Ci/zrg/Aah5Q6bGv1748BAzH9JKNDXmlIufZfi2/nKrjR9xpEC
 yUlg==
X-Gm-Message-State: APjAAAVjlIvOM24D3oxRbL+T8XnsxV/Y2+lqy9afkoNg5mQoij1L/YmT
 WTBi5sP4tnG6ApJjxgl/uWs=
X-Google-Smtp-Source: APXvYqyDE/iOri4Y4H0SbGsnJGFZZ6850tPJJSXBRGAA/LDepnm/Z8XT29PGfpdvYXK2l+LbBiXcVA==
X-Received: by 2002:adf:94e2:: with SMTP id 89mr1630817wrr.259.1571992894353; 
 Fri, 25 Oct 2019 01:41:34 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:33 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 3/5] staging: wlan-ng: correct parameter alignment in hfa384x.h
Date: Fri, 25 Oct 2019 09:41:24 +0100
Message-Id: <20191025084126.9181-4-osdevtc@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025084126.9181-1-osdevtc@gmail.com>
References: <20191025084126.9181-1-osdevtc@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Realign parameter in function declaration to fix checkpatch.pl warning
that parameter needed to be aligned with the opening parenthesis of
the declaration.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 2d3d8b1e2c1b..86fd3fcd8a36 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1374,7 +1374,7 @@ void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
 void hfa384x_destroy(struct hfa384x *hw);
 
 int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime,
-		       int genesis);
+		      int genesis);
 int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
