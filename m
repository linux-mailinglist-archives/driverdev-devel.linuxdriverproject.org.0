Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FA05A5E7F
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Aug 2022 10:49:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACFEF8141D;
	Tue, 30 Aug 2022 08:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACFEF8141D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yS9kxzcfi2O5; Tue, 30 Aug 2022 08:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B80F813B2;
	Tue, 30 Aug 2022 08:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B80F813B2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 378501BF362
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 08:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12A838141D
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 08:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12A838141D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgjYwCbb7dtZ for <devel@linuxdriverproject.org>;
 Tue, 30 Aug 2022 08:49:04 +0000 (UTC)
X-Greylist: delayed 00:05:05 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4C30813B2
Received: from mailgw.kylinos.cn (unknown [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4C30813B2
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 08:49:03 +0000 (UTC)
X-UUID: a1eacdbadf364491962084fe0678a21c-20220830
X-CPASD-INFO: 5c614a9c99bb432ebf4fe4b30a3a12d8@frNwUWGTZ5NlWaSug3Z9n4KXZJaVYIK
 CcptTkV9ikFiVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3hKVwUWSPaQ==
X-CLOUD-ID: 5c614a9c99bb432ebf4fe4b30a3a12d8
X-CPASD-SUMMARY: SIP:-1, APTIP:-2.0, KEY:0.0, FROMBLOCK:1, OB:0.0, URL:-5,
 TVAL:173.
 0, ESV:0.0, ECOM:-5.0, ML:0.0, FD:0.0, CUTS:102.0, IP:-2.0, MAL:-5.0, PHF:-5.0,
 PHC:-5
 .0, SPF:4.0, EDMS:-5, IPLABEL:4480.0, FROMTO:0, AD:0, FFOB:0.0, CFOB:0.0, SPC:0,
 SIG:-
 5, AUF:2, DUF:3567, ACD:65, DCD:65, SL:0, EISP:0, AG:0, CFC:0.338, CFSR:0.081,
 UAT:0, RA
 F:0, IMG:-5.0, DFA:0, DTA:0, IBL:-2.0, ADI:-5, SBL:0, REDM:0, REIP:0, ESB:0,
 ATTNUM:0, E AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: a1eacdbadf364491962084fe0678a21c-20220830
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: a1eacdbadf364491962084fe0678a21c-20220830
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
 (envelope-from <huxiaoying@kylinos.cn>) (Generic MTA)
 with ESMTP id 2131062562; Tue, 30 Aug 2022 16:43:47 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [PATCH] usb: Improves USB2.0 write performance
Date: Tue, 30 Aug 2022 16:43:25 +0800
Message-Id: <20220830084325.752655-1-huxiaoying@kylinos.cn>
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
Cc: devel@driverdev.osuosl.org, Hu Xiaoying <huxiaoying@gmail.com>,
 Hu Xiaoying <huxiaoying@kylinos.cn>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s. if does not to load module of uas for this device
, can increase the write speed from 20MB/s to more than 40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..3925c7c67915 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
