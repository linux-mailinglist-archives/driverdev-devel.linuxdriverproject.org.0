Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B1733D380
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 13:05:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCB3D6F59B;
	Tue, 16 Mar 2021 12:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGIK4397pv21; Tue, 16 Mar 2021 12:05:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FCA360586;
	Tue, 16 Mar 2021 12:05:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D53D1BF868
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 12:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BC6B838E0
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 12:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id asI4AhGZl1tn for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 12:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60CF783926
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 12:05:12 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id B472FD0F2F;
 Tue, 16 Mar 2021 20:05:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [111.207.172.18])
 by smtp.263.net (postfix) whith ESMTP id
 P13096T140547754784512S1615896302676772_; 
 Tue, 16 Mar 2021 20:05:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <afc6effab0856d2a4c2ad824966a2533>
X-RL-SENDER: maqianga@uniontech.com
X-SENDER: maqianga@uniontech.com
X-LOGIN-NAME: maqianga@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 111.207.172.18
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Qiang Ma <maqianga@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, mhocko@suse.com,
 john.oldman@polehill.co.uk, joe@perches.com, longman@redhat.com,
 matthew.v.deangelis@gmail.com
Subject: [PATCH] staging: rtl8723bs/core: add spaces between operators
Date: Tue, 16 Mar 2021 20:05:00 +0800
Message-Id: <20210316120500.351-1-maqianga@uniontech.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Qiang Ma <maqianga@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces between operators for a better readability
in function 'rtw_seccalctkipmic'.

Signed-off-by: Qiang Ma <maqianga@uniontech.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 3e576cbe4712..469e4d563da1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -413,15 +413,15 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 	priority[0] = pri;
 
 	/* Michael MIC pseudo header: DA, SA, 3 x 0, Priority */
-	if (header[1]&1) {   /* ToDS == 1 */
+	if (header[1] & 1) {   /* ToDS == 1 */
 		rtw_secmicappend(&micdata, &header[16], 6);  /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[24], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
 	} else {	/* ToDS == 0 */
 		rtw_secmicappend(&micdata, &header[4], 6);   /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[16], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
