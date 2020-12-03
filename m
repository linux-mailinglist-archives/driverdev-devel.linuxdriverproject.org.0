Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D30062CD5E7
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 746522E372;
	Thu,  3 Dec 2020 12:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhmDrFt0Ggyk; Thu,  3 Dec 2020 12:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CC9B2E36C;
	Thu,  3 Dec 2020 12:51:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7DD1BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78A3A87A98
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBdsR0i11JQH for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B02087AAC
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:57 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MEUaQ-1kwMUn2U7W-00G3at; Thu, 03 Dec 2020 13:48:07 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] drivers: staging: goldfish: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:56 +0100
Message-Id: <20201203124803.23390-4-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:4VMUivbUOMUD8OthMTSocKelq1MbRgHbaY3f/G6xITxz6Xk22M8
 uEHUC/m7pcHhQN7/1teMHnGJ105bj2MFxIG8OKD8iMvw0OijeR18OxT+t8B0FkJvqbNflL2
 kBIVNRlu9uGg7FSNGDM3EvhgOQpvUQ/ujKwC7A+tlDShQON10tV25yv0S6bLDTnEhdvdql7
 Mi+EHZ1SnUSeR+e459RGA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:/ZThhDNRtBg=:nhBRCngE4HdS48BlApC8N0
 ONTzsyy9ujSC4Xeo4w9hxz3+VWhpmVANsgQOAJXhGAbxAOONikbDE3xX3mM/8A1v7qv0GoM6u
 qhcDtZyGVu9+gbScyuV0g7+9cqiYQhwEG5DTqQNb59qfKoSvttrPrX8Uffz5UwTNqtScGHHBF
 IXtFSlwWy87137LwHju9B1fgIG+U87TnNu+8di0HDUUpRD8RgwUjOEOkAAYdQBmE6EDq4C7iY
 ZYdyZ1IHuiCls74t1twRXYX8JX674vhxqqi1e1MaWLfxL5xqY18X7eH4TFkn75hWw3zPyLuig
 vy7NQcwZDhyQCYwcRQoUUDmfmZIps7uRuz330L3JPoqP8CpqLeZKXdZgPkpWAuygzScxOZUmi
 9Gr9AGejryjR2VV6Qgia9N7SnlGfrYRyoQYAjJXxomK2+nxFUhlJ3QSHkbP7k
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

Remove MODULE_VERSION(), as it doesn't seem to have much practical purpose.
For in-kernel drivers, the kernel version matters. The driver received lots
of changes, but version number has remained the same since it's introducing
into mainline, seven years ago. So, it doesn't seem to have much practical
meaning anymore.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/goldfish/goldfish_audio.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index 0c65a0121dde..4a23f40e549a 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -24,7 +24,6 @@
 MODULE_AUTHOR("Google, Inc.");
 MODULE_DESCRIPTION("Android QEMU Audio Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION("1.0");
 
 struct goldfish_audio {
 	char __iomem *reg_base;
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
