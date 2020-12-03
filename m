Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBA72CD5E9
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C8ACB2E371;
	Thu,  3 Dec 2020 12:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AftOenqbnBCx; Thu,  3 Dec 2020 12:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8C9F2E389;
	Thu,  3 Dec 2020 12:51:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 590D91BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 522FB87509
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0cxfcILk7QaL for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D47787514
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mf3yk-1kEByE4Ahe-00gYhv; Thu, 03 Dec 2020 13:48:09 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/11] drivers: staging: qlge: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:58 +0100
Message-Id: <20201203124803.23390-6-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:cBKaZXJn0PaO0gZjofotydy/u2LaN3ERY88o9bVP8f6rx4XXaTI
 WNfMxy04qka7pvujlGMnyGN4k3gWrCIj+1tp/HAc0X5WtqDCkYOioxTM2jEtf3ZIZncfChC
 qVUNKyyblO8oHre+e56Df11V+LodaYmXLj15Hi2b4j7d3mwWPciFUer7y+08UuCW4t38T2D
 ehsmN5FRRh8FZ5gmOBLAw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9PodaIjvxg8=:sJqOJCZz20RQK7DfZp31Sx
 Fu8zC/Zz1DVKeTF9Z9Iq86wT8tM72zBpuOPSLnYnFaKvkkdQTVGgD7OJ5E1yVT30E2kn8HE7a
 Kixrw5wCxoVAAsm1w26VSqqnpY/AbYvOTougsTyzyWPneHe79j1KECVCp+j7AGoqQIJBb5B0y
 RGkqz0CP+jTm1NlPjE/yrQIwRA6wyzWjsmq7B9ia3rfKmaKvI3JIglTZQ8t+jBxAgMynVtzMZ
 amRn0XJumtPoO/YZ0hJFyvPkQndhvsejctWcCbKM1Svanm89Xw/lJ7Xgz+FFeY1QSBtMKNHw5
 vwaLuT39R0pzqAcS7ALtso8s3N/9kC0M55nCSarj/qIWKQnP30b1kuzcTUmEGSwJWtM0bPDNR
 mfvVorZbflQDLwMAw31/SmIH+veC3bVhOTVvz3Rnrem6IeFYGOyNSkjtGaDO+
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
For in-tree drivers, the kernel version really matters. The module version
doesn't seem to be maintained and having much practical meaning anymore.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/qlge/qlge_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 27da386f9d87..a98ee325ff32 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -49,7 +49,6 @@ const char qlge_driver_version[] = DRV_VERSION;
 MODULE_AUTHOR("Ron Mercer <ron.mercer@qlogic.com>");
 MODULE_DESCRIPTION(DRV_STRING " ");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
 	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
