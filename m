Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B913A319B18
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:19:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14A7786E68;
	Fri, 12 Feb 2021 08:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8CVyPlxj1Fz; Fri, 12 Feb 2021 08:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18B1F86F84;
	Fri, 12 Feb 2021 08:19:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 013D41BF3F6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F260F86CC9
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 72meNZa8Asbc for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:19:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10011301.me.com (pv50p00im-ztdg10011301.me.com
 [17.58.6.40])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94D0D86C92
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 08:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613117944;
 bh=mCP60QzB4Xmc4Ln+UcyddAgkfpo4+d8gMR9T+A+GPF4=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=OE4HAGp9xHIpz6mRtPVtsLn7ImTn+FW0FIVtttbqBPYNEn5yNpJlP3fFNH57l4Rro
 IeW77yodSj/vpGAhBLfsIrX94EksuIKFg5bhWwtOxJtzcJUzWBWDE8l7RwAn+BZEHr
 S50fNm4I7CHCiRVCv9iYf0tByzrP3meH/q8aYgo7O6pa+9Ev0pV+HiRg0hKecuuUPU
 SKuYCKS44fEpkFdMq5FCYqaBTwL2xhu8VWoeJ9qPLwEVmqmfRmsSLcooqQes0RvBt4
 QnelrOwIJ5c/qMAC035EJKJZ/NYCkjTmThlxH6bHJXLl+6tq7NSs5N5jfJ756520KW
 FFQS0n3Hmdc+g==
Received: from everest.nathzi1505 (unknown [103.17.84.167])
 by pv50p00im-ztdg10011301.me.com (Postfix) with ESMTPSA id 736FF7605AB;
 Fri, 12 Feb 2021 08:19:00 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: vireshk@kernel.org, gregkh@linuxfoundation.org, johan@kernel.org,
 elder@kernel.org
Subject: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Date: Fri, 12 Feb 2021 13:48:34 +0530
Message-Id: <20210212081835.9497-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.737
 definitions=2021-02-12_02:2021-02-12,
 2021-02-12 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102120063
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

This change fixes a checkpatch CHECK style issue for "Alignment should match
open parenthesis".

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 drivers/staging/greybus/hid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index ed706f39e87a..a56c3fb5d35a 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
 }

 static int __gb_hid_get_raw_report(struct hid_device *hid,
-		unsigned char report_number, __u8 *buf, size_t count,
-		unsigned char report_type)
+				   unsigned char report_number, __u8 *buf, size_t count,
+				   unsigned char report_type)
 {
 	struct gb_hid *ghid = hid->driver_data;
 	int ret;
--
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
