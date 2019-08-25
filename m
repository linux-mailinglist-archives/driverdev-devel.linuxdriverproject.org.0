Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 608539C22C
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6405486822;
	Sun, 25 Aug 2019 05:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A5hGoBSoI0CX; Sun, 25 Aug 2019 05:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5FD1867C6;
	Sun, 25 Aug 2019 05:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF541BF5A7
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 635A187DA6
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1Gd-WfOE0cc for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A0CB87DCE
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 013622173E;
 Sun, 25 Aug 2019 05:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712506;
 bh=eynOF9t5+dXOyKaMiT5x7hg/MTlKzel512EyY0PZXB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i76Rp9ZXH5vGs/jjfYPY16LUiBdak8dNT63LtFXFYcB84KCSYLTAc/Jd5qo8sjQqn
 srhNNmAkJBfta6hT9qadup2TsE01ylULhw172ZkrS+mg09ipGk6VJA+WKkO9dgiLLx
 wwKcRN0Rmfiepsyvu6aWhDs5t654j+5immfangtU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 5/9] staging: greybus: log: Fix up some alignment checkpatch
 issues
Date: Sun, 25 Aug 2019 07:54:25 +0200
Message-Id: <20190825055429.18547-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some function prototypes do not match the expected alignment formatting
so fix that up so that checkpatch is happy.

Cc: David Lin <dtwlin@gmail.com>
Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/log.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/log.c b/drivers/staging/greybus/log.c
index 15a88574dbb0..4f1f161ff11c 100644
--- a/drivers/staging/greybus/log.c
+++ b/drivers/staging/greybus/log.c
@@ -31,14 +31,14 @@ static int gb_log_request_handler(struct gb_operation *op)
 	/* Verify size of payload */
 	if (op->request->payload_size < sizeof(*receive)) {
 		dev_err(dev, "log request too small (%zu < %zu)\n",
-				op->request->payload_size, sizeof(*receive));
+			op->request->payload_size, sizeof(*receive));
 		return -EINVAL;
 	}
 	receive = op->request->payload;
 	len = le16_to_cpu(receive->len);
 	if (len != (op->request->payload_size - sizeof(*receive))) {
 		dev_err(dev, "log request wrong size %d vs %zu\n", len,
-				(op->request->payload_size - sizeof(*receive)));
+			(op->request->payload_size - sizeof(*receive)));
 		return -EINVAL;
 	}
 	if (len == 0) {
@@ -83,7 +83,7 @@ static int gb_log_probe(struct gb_bundle *bundle,
 		return -ENOMEM;
 
 	connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
-			gb_log_request_handler);
+					  gb_log_request_handler);
 	if (IS_ERR(connection)) {
 		retval = PTR_ERR(connection);
 		goto error_free;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
