Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22920100BB6
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 19:45:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87E7221FFB;
	Mon, 18 Nov 2019 18:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id usiikDeFvxcB; Mon, 18 Nov 2019 18:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B26B21567;
	Mon, 18 Nov 2019 18:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABB0F1BF344
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 18:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A662921567
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 18:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zg5YtRzH06Lu for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 18:45:43 +0000 (UTC)
X-Greylist: delayed 00:12:02 by SQLgrey-1.7.6
Received: from mxa1.seznam.cz (mxa1.seznam.cz [77.75.78.90])
 by silver.osuosl.org (Postfix) with ESMTPS id 3FC7D20784
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 18:45:42 +0000 (UTC)
Received: from email.seznam.cz
 by email-smtpc10b.ko.seznam.cz (email-smtpc10b.ko.seznam.cz [10.53.14.45])
 id 7e43507a554ae8787a1a4ccd; Mon, 18 Nov 2019 19:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
 t=1574102740; bh=TzTZvRPTC8arfHf9xInFoxSaBfyeJQCa4kNpPyUwaUc=;
 h=Received:From:To:Cc:Subject:Date:Message-Id:X-Mailer;
 b=IzopMcl2Cy2LzattbBHt/V7GuqMoJpI5uOeXr88rM4jgpF4wzIjxZ/8TWcjKAhtkO
 m6dgTATKxwUMkd3zNeNn+UIBp7Num4LuvyveUol4J8SbgJbdaaa2FznXSvKlKNw4Qs
 ridKx+q/x4liWqOYQsgaOpblAz6GNzPZKdhZNIAI=
Received: from linux-h043.suse.cz (cst-prg-22-65.cust.vodafone.cz
 [46.135.22.65])
 by email-relay13.ko.seznam.cz (Seznam SMTPD 1.3.108) with ESMTP;
 Mon, 18 Nov 2019 19:33:35 +0100 (CET)  
From: Giovanni Gherdovich <bobdc9664@seznam.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: octeon: indent with tabs instead of spaces
Date: Mon, 18 Nov 2019 19:38:52 +0100
Message-Id: <20191118183852.3699-1-bobdc9664@seznam.cz>
X-Mailer: git-send-email 2.16.4
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
Cc: devel@driverdev.osuosl.org, Giovanni Gherdovich <bobdc9664@seznam.cz>,
 linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove a coding style error from the Octeon driver's tree and keep
checkpatch.pl a little quieter.

Being a white-spaces patch the chances of breakage are minimal; we don't
have the hardware to run this driver so we built it with COMPILE_TEST
enabled on an x86 machine.

Signed-off-by: Giovanni Gherdovich <bobdc9664@seznam.cz>
---
 drivers/staging/octeon/octeon-stubs.h | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index ed9d44ff148b..79213c045504 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1140,22 +1140,22 @@ union cvmx_npi_rsl_int_blocks {
 union cvmx_pko_command_word0 {
 	uint64_t u64;
 	struct {
-	        uint64_t total_bytes:16;
-	        uint64_t segs:6;
-	        uint64_t dontfree:1;
-	        uint64_t ignore_i:1;
-	        uint64_t ipoffp1:7;
-	        uint64_t gather:1;
-	        uint64_t rsp:1;
-	        uint64_t wqp:1;
-	        uint64_t n2:1;
-	        uint64_t le:1;
-	        uint64_t reg0:11;
-	        uint64_t subone0:1;
-	        uint64_t reg1:11;
-	        uint64_t subone1:1;
-	        uint64_t size0:2;
-	        uint64_t size1:2;
+		uint64_t total_bytes:16;
+		uint64_t segs:6;
+		uint64_t dontfree:1;
+		uint64_t ignore_i:1;
+		uint64_t ipoffp1:7;
+		uint64_t gather:1;
+		uint64_t rsp:1;
+		uint64_t wqp:1;
+		uint64_t n2:1;
+		uint64_t le:1;
+		uint64_t reg0:11;
+		uint64_t subone0:1;
+		uint64_t reg1:11;
+		uint64_t subone1:1;
+		uint64_t size0:2;
+		uint64_t size1:2;
 	} s;
 };
 
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
