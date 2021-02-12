Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A271319C1B
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B53E871E6;
	Fri, 12 Feb 2021 09:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yooGOp1XzSuk; Fri, 12 Feb 2021 09:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54A3F86F84;
	Fri, 12 Feb 2021 09:51:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02D901BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF77A874C6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MSZ8l-tZnM3n for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10011901.me.com (pv50p00im-ztdg10011901.me.com
 [17.58.6.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA6AB874C1
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613123461;
 bh=9GBiUZ1WuOiLbK9rV9T1+uUAqkzPi3muDJd+lEHIoTw=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=ith6ixhrNDlV1C6oZFTxA+isgdnQaP9ZgO1VCMYr1Qis+EEl5pK+yRH43CnqvIhXu
 wy+A9edZYnvzn6u2OtHVx8l92MIk627ZErukDxQjMUX8JSN8XaOn3NdsM2DfUGSpcd
 DrHHVsKCyCabs5agicF3FfkoL4G9lzTiZ2AFbZ9/YQAQoREjJwI8KvBw93sh+44w/T
 p4ESENchHxJFCrlkFtAlVUS8PafHt45O7wHUGgKkHNvwtpFK8jZR1nxyS0ZFv2ijSe
 tI0/yRsRePO1DS+kRwPtRpO4tpfVf3URccJj8MtQT4xuekNNkFmuVUIPJRSqDwwkbe
 CLgJJfVkqWd8w==
Received: from everest.nathzi1505 (unknown [103.17.84.167])
 by pv50p00im-ztdg10011901.me.com (Postfix) with ESMTPSA id E8C0F80059B;
 Fri, 12 Feb 2021 09:50:57 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: vireshk@kernel.org, gregkh@linuxfoundation.org, johan@kernel.org,
 elder@kernel.org
Subject: [PATCH 2/2] staging: greybus: Fixed a misspelling in hid.c
Date: Fri, 12 Feb 2021 15:20:08 +0530
Message-Id: <20210212095008.11741-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-12_02:2021-02-12,
 2021-02-12 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102120075
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the spelling of 'transfered' to 'transferred'.

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 Fixed the typo in the patch which was meant to fix that very typo.
 Really sorry for last time.
 Hope this does not have any other typo.

 drivers/staging/greybus/hid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index a56c3fb5d35a..adb91286803a 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
 
 	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
 	if (report_id && ret >= 0)
-		ret++; /* add report_id to the number of transfered bytes */
+		ret++; /* add report_id to the number of transferred bytes */
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
