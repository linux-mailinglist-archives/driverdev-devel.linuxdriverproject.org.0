Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C25318E43
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 16:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 966736F6DD
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 15:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ox5upJbWfpyH for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 15:26:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 3E28A6F711; Thu, 11 Feb 2021 15:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 985A66F479;
	Thu, 11 Feb 2021 15:26:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB67F1BF2A2
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B71496F479
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Efm_hFjHQ69U for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 15:25:55 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0BCDD6F5CB; Thu, 11 Feb 2021 15:25:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from pv50p00im-tydg10021701.me.com (pv50p00im-tydg10021701.me.com
 [17.58.6.54]) by smtp3.osuosl.org (Postfix) with ESMTPS id D6B946F479
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613057152;
 bh=WMQ2ew20gKuHcvkWuDVwaoOaOgxu5nNpW69z1RSBBQk=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=PJvSbdIkoEp0PkbpGG+RF2hrVdrz01BVTnnS9Ze9nyvFuNYJ5pTFA1Vuz6wbVLy0E
 vjk2C4AW28BFGxsQy/rA/EcDPIvPFPW/9F9k38urRjChBK4bhySan2Rro41NjTbx/Z
 Db/fReM2DC6EO278sEok5IvlUKVdd6oWi0vc5cI/aeuxAA9U0BszS5A4uus7A6dac2
 tP9A3kuj8R9zyhwTBZAGKNdeUHrqP6eqCpKi8wQWsFy41Y8ErIqYL/1ktZp0EzUebw
 0/XZrcFRqcznhwofS3jbFlfLQcpwbAPUJQQ69yvKqXBQWbfBZMqvAj3Wd3Rf96eP1u
 kzJXribHPNZZA==
Received: from everest.nathzi1505 (unknown [45.250.50.68])
 by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id EBDA98403CE;
 Thu, 11 Feb 2021 15:25:49 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 oscar.carter@gmx.com, tvboxspy@gmail.com
Subject: [PATCH] staging: vt6656: Fixed issue with alignment in rf.c
Date: Thu, 11 Feb 2021 20:54:26 +0530
Message-Id: <20210211152426.10008-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-11_07:2021-02-10,
 2021-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102110133
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch CHECK style issue for "Alignment should match open parenthesis".

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 drivers/staging/vt6656/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 5b8da06e3916..bcd4d467e03a 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -687,7 +687,7 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 
 			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
 				ret = vnt_rf_write_embedded(priv,
-					vt3226d0_lo_current_table[hw_value]);
+							    vt3226d0_lo_current_table[hw_value]);
 				if (ret)
 					return ret;
 			}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
