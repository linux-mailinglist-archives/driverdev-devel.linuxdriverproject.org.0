Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D2B22894D
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 21:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FC168823A;
	Tue, 21 Jul 2020 19:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNAB1gRrEDse; Tue, 21 Jul 2020 19:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C194388216;
	Tue, 21 Jul 2020 19:38:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 487451BF2BA
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 19:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44D8E86214
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 19:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rn3l9Zhh5fIE for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 19:38:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE4E484E97
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 19:38:15 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id BE6A4BC17B;
 Tue, 21 Jul 2020 19:38:12 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: pcm: Replace HTTP links with HTTPS ones
Date: Tue, 21 Jul 2020 21:38:06 +0200
Message-Id: <20200721193806.68010-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely
 or at least not (just) HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 drivers/staging/comedi/drivers/pcm3724.c | 2 +-
 drivers/staging/comedi/drivers/pcmad.c   | 2 +-
 drivers/staging/comedi/drivers/pcmda12.c | 2 +-
 drivers/staging/comedi/drivers/pcmmio.c  | 2 +-
 drivers/staging/comedi/drivers/pcmuio.c  | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/pcm3724.c b/drivers/staging/comedi/drivers/pcm3724.c
index 5779e005c0cb..0cb1ad060402 100644
--- a/drivers/staging/comedi/drivers/pcm3724.c
+++ b/drivers/staging/comedi/drivers/pcm3724.c
@@ -222,6 +222,6 @@ static struct comedi_driver pcm3724_driver = {
 };
 module_comedi_driver(pcm3724_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Advantech PCM-3724 Digital I/O board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/pcmad.c b/drivers/staging/comedi/drivers/pcmad.c
index fe5449bb1716..eec89a0afb2f 100644
--- a/drivers/staging/comedi/drivers/pcmad.c
+++ b/drivers/staging/comedi/drivers/pcmad.c
@@ -144,6 +144,6 @@ static struct comedi_driver pcmad_driver = {
 };
 module_comedi_driver(pcmad_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/pcmda12.c b/drivers/staging/comedi/drivers/pcmda12.c
index 33e463b193a1..14ab1f0d1e9f 100644
--- a/drivers/staging/comedi/drivers/pcmda12.c
+++ b/drivers/staging/comedi/drivers/pcmda12.c
@@ -160,6 +160,6 @@ static struct comedi_driver pcmda12_driver = {
 };
 module_comedi_driver(pcmda12_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/pcmmio.c b/drivers/staging/comedi/drivers/pcmmio.c
index 72af1776f785..24a9568d3378 100644
--- a/drivers/staging/comedi/drivers/pcmmio.c
+++ b/drivers/staging/comedi/drivers/pcmmio.c
@@ -772,6 +772,6 @@ static struct comedi_driver pcmmio_driver = {
 };
 module_comedi_driver(pcmmio_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Winsystems PCM-MIO PC/104 board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
index 743fb226e2e4..7e1fc6ffb48c 100644
--- a/drivers/staging/comedi/drivers/pcmuio.c
+++ b/drivers/staging/comedi/drivers/pcmuio.c
@@ -619,6 +619,6 @@ static struct comedi_driver pcmuio_driver = {
 };
 module_comedi_driver(pcmuio_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
