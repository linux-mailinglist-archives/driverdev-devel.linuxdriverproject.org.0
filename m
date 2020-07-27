Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3F522F7CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 20:34:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 10DED221D9;
	Mon, 27 Jul 2020 18:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hR4DSjfXbO6; Mon, 27 Jul 2020 18:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CFD9F22193;
	Mon, 27 Jul 2020 18:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA4E1BF381
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 18:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45DAE8761C
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 18:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlMWqrbqjpi7 for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 18:34:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD8B186762
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 18:34:49 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D553C2073E;
 Mon, 27 Jul 2020 18:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595874889;
 bh=/6ecmPTwGZh0HJD/tKrVVhgyBKwRvNKRilfFJFLPLRE=;
 h=Date:From:To:Cc:Subject:From;
 b=Mtb29WVInF00AWMYet9071bMLwMc1bsrSW1JrvwTIsj+RmWjGJl91HIdr22gETFo6
 s4POcfIJ32hclb45r3qWApFzDHS40NxNG1RuWZr8/3454dwt0cpo7B0BbaUnTp3iR1
 A0pi0gACHHtUgWLt/ZS7/zi3lnFEH0cr3it5XzNs=
Date: Mon, 27 Jul 2020 13:40:42 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH][next] staging: qlge: Use fallthrough pseudo-keyword
Message-ID: <20200727184042.GA29074@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1].

[1] https://www.kernel.org/doc/html/v5.7/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/qlge/qlge_mpi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 94d504af84ff..e85c6ab538df 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1174,7 +1174,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 	case MB_CMD_PORT_RESET:
 	case MB_CMD_STOP_FW:
 		ql_link_off(qdev);
-		/* Fall through */
+		fallthrough;
 	case MB_CMD_SET_PORT_CFG:
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
@@ -1207,7 +1207,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		 */
 		ql_link_off(qdev);
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
-		/* Fall through. */
+		fallthrough;
 	case MB_CMD_IOP_DVR_START:
 	case MB_CMD_IOP_FLASH_ACC:
 	case MB_CMD_IOP_CORE_DUMP_MPI:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
