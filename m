Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40E019C788
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 19:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C38828919B;
	Thu,  2 Apr 2020 17:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xS9IscLoDBqL; Thu,  2 Apr 2020 17:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 412768908C;
	Thu,  2 Apr 2020 17:02:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 831811BF395
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 17:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8011A87558
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 17:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlZWnpNvKNOd for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 17:02:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F9A887557
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 17:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585846936;
 bh=8UWypK5pgVcYcqIwFlJJIKU66AJRcAaCGYCCv5rqHSc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=kz5/1BLakRSoXGwoWbzj0G2RsRakRC3O083MpECK0lcusQNnUBrcvbBKK3RDqcJin
 K7dUMj5WTR471Ftf/q0RbDgXdzM0CFakZoCYpRUPJ+Yx++hOCSIMrQ5sXXG7ZKsoe9
 DWftEnWe1HekBoC3HXKCAMV7RonuRGQ756ByiSzE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MqJqN-1ixvlT1b4l-00nPcN; Thu, 02 Apr 2020 19:02:16 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6656: Define EnCFG_BBType_MASK as OR between
 previous defines
Date: Thu,  2 Apr 2020 19:01:03 +0200
Message-Id: <20200402170103.22520-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:92r1pGjCMbrGkXpHcqtHjCNU/M4fbFzS1R86MSFEIhWrF4H/JMF
 QemgjEJ4zbeOHAsxeXaaeTRQRiLIvKb60mA/Yd/ylGNPEBNj8muDZHsC79ZuoneZVb5DXY9
 b+HJBhz6t9R95in47coyaiolMD+vEBbQ3rnujgtm30qDo5Qtye+8KhtNNtsliMkdAt8HOjB
 wIU71B12rn5896tXfXZNg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:lHToelEcjb4=:B1oScJRzOkmBzLG0RFEIvy
 /I6B8VNsZHjt6h+W5K1Y7eAaYKfTbRobNsysN2MepWDF1HtRSl9bN1zXj0EFWbUzJG2i1efTy
 ZMhzJHncqJFwydMF2XoibrOE++9YuFiyx0s77jVyXW2SI1u7V3MaQUz8OZWDAT7M6pWb9ZrL4
 dlwxh9PrfDXb+mK+0QT+lx1QswBSVEG/EPqfMxAraa/+lMDrtob0N4gsrL9JeR4kTamH3OzxE
 e4I5DjUrDlxkJJjiR9Ux2E0pRb8OD1hE3GlWbFrLd3cNvUHMKY4X5PNXGjbC4BKfsSvNtmZTs
 j16IDXQixAbLHBJiWbYZrqXlZJ+Bs5by1dg+bkhm9I7CgeKigJadNnwzAkfP27mjDG0juNnh6
 IfpPAVEPOZ7lwPIQ4EA/rjM9KD5B5aIrcjXRSuy9IKpRt3gNcRD15esP8yfb8mOMLtvnVzAaM
 Ck87DhuL4+mD1khLNL5yjzUvHOf2nECIvCFaKOcutsEROXx/clkQC633MFOzlVdlD9N/DMl22
 ip1EfV9iBJ5jYr4mNxeJe/qIzmjwseMuxhZ2uxZEmTeiItQprwdyZnOHHQlqiWuvvXSO23woT
 cC3YkGD3dPBN9/jm7yAsFgGTkr110YifGBoxnlMqOJOu/EGm5g/DT/DUtaGEpKjJyoO0Dkug9
 kcCmpn11uJkd7L2Uxn6kKBi7F2bsinGED+aOLtlr4bJP2W6zKLhlwJErlxHNE0uW4kZmnD+5A
 O50qfHsaaDgVmnmtiHWaSpcGqqiFQWHDvwVwmswWDTsRTTD/QardBDoXPUk8n9wl1Ay1vYE7S
 lkOFSlS2oLGOmAN+aSHLrDRfF3xosSslMeYqR8FRZln7di9nEmubiyysVhnrBaBAlEWV8YyXd
 pTLhCWH2XdiGNjAfhgA0qxV73pjGRe5rvA75pZ+IvsRTkF1AvOqfsgOFW7Beg7gknqFDUq/sS
 j++7Hirrx3Shep/1NW8TXGYlLo5AMsTsJwK/QquFUjUIM9Xh4iYBd+1PEMq2+pSXWNh+F9QGN
 O5v861QMyTaCIBfDBjQfOFy3wg6pgUlrSz7/szWi7ZYT6JGPLhIHe9zfUHq2PmFvh8+pr9tj1
 wCFyViMe+eWIvR6gfl8otWogem457GbD2jzFdgQYWb4Aq1C4bgnaHQeULV6t84Yk1/saOigl8
 p70HSeyhUdqTaPyg9ugGu7+hfDccSlPXaHFyVBZ3KtpwSztWcaW/316EQcWGrF8nqDzkvL2cW
 hUk4t4xb906JZax70
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Define the EnCFG_BBType_MASK bit as an OR operation between two previous
defines instead of using the OR between two new BIT macros. Thus, the
code is more clear.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
Changelog v1 -> v2
- Remove the "Fixes:" tag line.
- Add "Reviewed-by: Quentin Deslandes"

 drivers/staging/vt6656/mac.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
index c532b27de37f..b01d9ee8677e 100644
--- a/drivers/staging/vt6656/mac.h
+++ b/drivers/staging/vt6656/mac.h
@@ -177,7 +177,7 @@
 #define EnCFG_BBType_a		0x00
 #define EnCFG_BBType_b		BIT(0)
 #define EnCFG_BBType_g		BIT(1)
-#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
+#define EnCFG_BBType_MASK	(EnCFG_BBType_b | EnCFG_BBType_g)
 #define EnCFG_ProtectMd		BIT(5)

 /* Bits in the EnhanceCFG_1 register */
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
