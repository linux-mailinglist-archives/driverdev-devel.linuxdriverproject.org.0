Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D373183C7
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 03:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DDB9874C9;
	Thu, 11 Feb 2021 02:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsVw1qsFgcPe; Thu, 11 Feb 2021 02:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85D6687450;
	Thu, 11 Feb 2021 02:57:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67F741BF83C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 02:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6254D86F75
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 02:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9hhrPB90z0jr for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 02:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from qq.com (out203-205-251-66.mail.qq.com [203.205.251.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B9A386F64
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1613012208;
 bh=BATEy4T2ThqSk1g+ELAw4ooT8ENat4w7aPouGGo1Xw0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UvpEPtn4TJE9QuPgmQyVMa6ubFfE3hNk5p8zrVrTz0cxSRyDUzQgAuBFe3q79/uvN
 QQ12gTxIPByuSmQM/qqdcDxlex7iA0url79wQ8aYOZ/V9/ZsIqQQsYDojGs3nSxtXN
 618PelQkoDZIBaXjSTqCFWvC8hfuPy4j6rdCi+6s=
Received: from sig.localdomain ([1.193.79.12])
 by newxmesmtplogicsvrszb5.qq.com (NewEsmtp) with SMTP
 id E2E0C22C; Thu, 11 Feb 2021 10:56:46 +0800
X-QQ-mid: xmsmtpt1613012207tb9mxhmaj
Message-ID: <tencent_D16327B2096F3DA0548367391625B987E705@qq.com>
X-QQ-XMAILINFO: NN9UNVzD7YXODqu+Qy5hOMKmcDa7QllZFIUoTf+7C9vLb4JzqjyfuyWsfzS4m+
 2mIFakY2Cg6LK2lLDXmst9fPAe3yk3jHoR15mFWGVh7v/zNXau2c8rKi1gb1m8z3fSGpL5qKf/U+
 DpXKB86sPZdYgu3vG/UBj6FsmGwjqSegG7A4UNlWbhEX9xT7lkO4RDP7UrDnP6MpUz6RTxnxBbKp
 5NCobjoHhLkTYkg/hQ9xMtb8pQ8GetkNwBb5RGZ4eXXCPGfeU7F1VHN6Nlua67VmEiXCkEsrgd6V
 zYDkVFIe/riWgln7AfIzMchhFCmEeYpaWORgIoZXOeyBMsdyAGo0WkPFfno8RQVpaNTDsAGMJ/mZ
 Zrq/d8GFDukHofXvjc0TOP99UTheZMJOYqFrZJG2hLI7u0hZsEA2DLag2TEAScwhPQmLksw6cuF6
 c6AHe+0/PamULKo9uTriQ3Yy5ctOXn0druYSpqeBINbpRUQ2y38nGLPrdlyTD9TG4w018ZnJMB0p
 I/kuUwlOf5hHE8q0X0fuZeMPiVIpkkyjwmeHenX8/fAaGeIjXegZWneMyBJodaEDN9Y2bRU/zRHU
 MTOvdlEUz8c4YsaM3Q9I3fgegv639eIW+rq6rIzLkhqeTiihEAZ/KIoRjEJ52b2r/KeiefVXRmWV
 ETgI6i+MjDockIzxiSnZWyYAnt7F9aJSK7l0VII5xZ0EaWvvTxKf4nzwiltkd7owBpL51oULYXVP
 9NHzS2BnjBXWL1ARR+2FufNm11g6j7rk4zSVErWb7XVh1jBk7s3+/83g==
From: Yujia Qiao <rapiz@foxmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH] Fix the naming of one variable
Date: Thu, 11 Feb 2021 10:56:36 +0800
X-OQ-MSGID: <20210211025635.621350-2-rapiz@foxmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210211025635.621350-1-rapiz@foxmail.com>
References: <20210211025635.621350-1-rapiz@foxmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CamelCase should be avoided for variable naming.

Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
---
 drivers/staging/vt6655/baseband.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 6b25d75d2501..1aa675241599 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1683,7 +1683,7 @@ static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
 	{0xF0, 0x00},
 };
 
-static const unsigned short awcFrameTime[MAX_RATE] = {
+static const unsigned short awc_frame_time[MAX_RATE] = {
 		10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };
 
@@ -1716,7 +1716,7 @@ unsigned int bb_get_frame_time(unsigned char by_preamble_type,
 	if (rate_idx > RATE_54M)
 		return 0;
 
-	rate = (unsigned int)awcFrameTime[rate_idx];
+	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
 		if (by_preamble_type == 1) /* Short */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
