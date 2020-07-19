Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4272C225198
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E4BA87BBF;
	Sun, 19 Jul 2020 11:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RXZ7cZ5yndOb; Sun, 19 Jul 2020 11:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71ABF879DB;
	Sun, 19 Jul 2020 11:21:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 528681BF46A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C9718594B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLX9WiMAB9RR for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:21:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD5668593F
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:21:44 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 0257CBC06E;
 Sun, 19 Jul 2020 11:21:39 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH for v5.9] media: omap: Replace HTTP links with HTTPS ones
Date: Sun, 19 Jul 2020 13:21:33 +0200
Message-Id: <20200719112133.58236-1-grandmaster@al2klimov.de>
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


 drivers/media/platform/omap3isp/isp.c | 2 +-
 drivers/staging/media/omap4iss/iss.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
index b91e472ee764..74fa67082e09 100644
--- a/drivers/media/platform/omap3isp/isp.c
+++ b/drivers/media/platform/omap3isp/isp.c
@@ -142,7 +142,7 @@ static struct isp_reg isp_reg_list[] = {
  * readback the same register, in this case the revision register.
  *
  * See this link for reference:
- *   http://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
+ *   https://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
  */
 void omap3isp_flush(struct isp_device *isp)
 {
diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 6fb60b58447a..e06ea7ea1e50 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -55,7 +55,7 @@ static void iss_print_status(struct iss_device *iss)
  * readback the same register, in this case the revision register.
  *
  * See this link for reference:
- *   http://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
+ *   https://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
  */
 static void omap4iss_flush(struct iss_device *iss)
 {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
