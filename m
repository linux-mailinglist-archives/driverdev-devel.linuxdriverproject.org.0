Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169D2276B0
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D118588047;
	Thu, 23 May 2019 07:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvkrKMoDefvZ; Thu, 23 May 2019 07:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF2C78800F;
	Thu, 23 May 2019 07:05:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9A5F1BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB1E18654E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_78hsmVOBsE for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:05:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-19.consmr.mail.sg3.yahoo.com
 (sonic304-19.consmr.mail.sg3.yahoo.com [106.10.242.209])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F5D086542
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558595147; bh=g7L3h+n8K6S19E6aYOy3SsYTbG3ghtCcwRzjAcH6fCw=;
 h=From:To:Cc:Subject:Date:From:Subject;
 b=uW5qlGN1eoHY6sYCdJTYPTMdq12dNrIx2TJy7xO0VkKzfIGRdJy95Bu1R013PFn39olXhDQvwuP3uutSrkdXU/+dH+iN7+WibprVqMuAbfPTHAOlAFemNlCLXG7D3MXG/obGfoUv7+fPtmVsMFGyP/NW5gQzFQAtTbQKc6KhJYWx+y5F6mKei4VeEeoU+B57KlmgO1Ix2BgKgWXWDZ1mfQQervPCcz2YiCSNGKOHJCSyTXRnsYlr1Hldho91eDQ6Pi2ijOiSXmh6jkdZe/mpKhSGfdk7/ZEeP+ZOiOeXzyKYRCDaHzYpsQnpjNz1DY9a2Xy51LLd3LhkZ1EgU3z/Nw==
X-YMail-OSG: WgyonJUVM1kWJ_.ZJglX427EJqbAgrditucU65dX7VVU1tqutuIgyvDS1UMjR9K
 73D6lWsxeKDkyu4IsUUZK.75DK81e1y7WvujxQIYIaGFlXAqkh35Jw0YyFQ3.Bl9gP4J_s7e2kmJ
 KsF84zImvL5YjHvW.rrQoMvNNj8o56LDufjsFLMggIE0.J8WoCEmLCnDIAjLCTHLUwEdeuGJGfrY
 ziCjJswP8xIoyYKPI0Iob5k5ZJrfaOGsVFzRp8kcp3XEsTZ91ZT1wNUyxisvxqTGxRUEL9AvS_QR
 dxwuzKGzoTnO_RqF5OujFxhPkqbJ6d5jeOJIJDEn2PBQunGqTnFUTWFCTBYRQD_XBM4Csd9HqUul
 Bjk5pb1h.PZZjl3_e90IF35OLJd8G7N3no8ZLCHn0rHaHi8lCOZOi02kdwvTTQCmb5xTURbC4Dp1
 yQfRoDkDCz6sNKvOMTMIgvulwcqE116A_iS0nK7SosBkfq91lN5I6xELMv67yWaKUWJLixqKXsYU
 821.7p69H8YqEkVHhveKpDtiKsjEjGAeOuZLLe5YxSzhA5ZG6Hmih1Hihja9__GiMD4YiBkIE4vE
 KY1tPHzkovhZ4H5I39Kju0rsgJxt9i1Gg46AKtk6_3dsFaA5SRMuAEczer1ZVd8rJhqKPIODZfXg
 Ar00hUkRC_Uk3DfjwVCLwWKDFdry89Y6.2ozNcqXBnHu6_fRh3WPH9scT1gLl.WcbrMzODi0xL9U
 CJC6jleBNg380gSrO7igsSR0e8H9BO7fFvqUmH9MisszK7j8qAyqy707Fz5iPPlrNh2ESnWhFrZy
 lIX_84xBqC.XIL6htH36iWX.ByRyi3U6rPNST_vmujshru9.ZFyB83eWuMPyKWm8D5PkwAIsM61t
 GL9t.NyHZS86J_LeKNnRVi9bCkzQtEIXlictEiz1GASw30sIiUhDUk0zMYyaZWJfY7hxNyko85aR
 mR07S6fZ1bkxAeyTdRBj3Xvmk7q9pOi4WHRPkyjSL_Wc6Qa_cByHNvD92Ud1H3XCbMWzx3Gt3CC6
 e9PDwDdWrPCnfxcj2Qcvab.L2Aoz5R6cMZwVJRE1wrs4uMsfJfDNU3BXOuvvvvfUJDz1szp0cV61
 T9GIL5aJLyOX912Ku_Q3KrSsIQfA1VNpK0itSnEj_b3B0t7xZBQG7ibJsWSDR8XdDZbXu.TfI_fC
 EoqICgOD9oWFi59vHluPEEiJ_VGFHdO6QCuWBFCPgnlDuxf9MzputJgPX6CIUs5CCEdnLaJZvQ5T
 Rjj_oEJ9JSS_INzb08NhoDXrgvg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.sg3.yahoo.com with HTTP; Thu, 23 May 2019 07:05:47 +0000
Received: from 122.163.94.48 (EHLO localhost.localdomain) ([122.163.94.48])
 by smtp410.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 bc40946e4afd41320a07cb79ce679ad1; 
 Thu, 23 May 2019 07:05:45 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fieldbus: anybuss: Remove variable
Date: Thu, 23 May 2019 12:35:26 +0530
Message-Id: <20190523070531.13510-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Variable client, assigned to priv->client, is used only once in a
function argument; hence, it can be removed and the function argument
replaced with priv->client directly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/fieldbus/anybuss/hms-profinet.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
index 5446843e35f4..a7f85912fa92 100644
--- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
+++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
@@ -124,9 +124,7 @@ static int __profi_enable(struct profi_priv *priv)
 
 static int __profi_disable(struct profi_priv *priv)
 {
-	struct anybuss_client *client = priv->client;
-
-	anybuss_set_power(client, false);
+	anybuss_set_power(priv->client, false);
 	priv->power_on = false;
 	return 0;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
