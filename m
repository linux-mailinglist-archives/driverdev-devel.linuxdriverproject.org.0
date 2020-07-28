Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D312311A1
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 20:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BE1B886AD;
	Tue, 28 Jul 2020 18:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sFFmLes-GPzq; Tue, 28 Jul 2020 18:26:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6E0D8867E;
	Tue, 28 Jul 2020 18:26:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 374521BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3354C85230
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eSDD3tUaL4+w for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 18:26:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A34BD85209
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 18:26:25 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id k27so12463278pgm.2
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 11:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6DV3V+yX4qgHFBt1ioftJ+TEjupDH3OyuvsUob7/Y3g=;
 b=WcN/VsHOC53DbWa5NRGel2NucDFS+cAcQ87OwXgxKNzF0kTGpqhwJouf7ir+jj1HH2
 osJetdnSxRwmu9LeVZeKJQVkCSte65Qs+XdScpdhiSlGKJWThg79s3m+8ICr+cD6f3Mw
 Mf3d4HtqlTdeXz6lLK7pmd0ncaPGMVr7RCL+n8+/8PAFKj1bpta+w0YQbtAelX6aBa0n
 BMxyUewsBOEjj/syMOiQJhtqsQKxAOx7rZwt6OLFLmsEKeSJQ4AzZSIE5URmeAk867Hn
 7QsqLCijlP1oUJQYjUTgTdRv3aEblNrEqGzwr1D+EqatjiGN1HyIQiqvVPC/JKPckOKF
 EAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6DV3V+yX4qgHFBt1ioftJ+TEjupDH3OyuvsUob7/Y3g=;
 b=WKF5zVx+lcJfxDFbIJwyVQS5LUWis3c8cGQgjUr+VrrNIUlQl3yny8aBMhLWto/iGs
 /Ovu4O3dcMfhPZM7rh0ApQih4OUCDqK2nNOdDT5OltFZExX4bukrb+vpXTJPlMgBLDUn
 0pNc6tfXUm3qlI1kdv4mSvbWF0Etk3zqUNQf4Ipcv7J/lhPquj57BQ3s88726wE394wt
 3uvo4kN8UWCkDfbfj+eKudyQI5IIMZAf2d+1VO+EGDgtnkqFio6Coo9JJg+kWxstVbVS
 KJKO6goJFRMXYz3Mpj2vFfxl6htWxOE6ndJbDWKabxcYYSwKH297zQrXXbHALL7TqV12
 JZeg==
X-Gm-Message-State: AOAM532o9vC+T/oVQzohIscIonkvOlRy+UkXAwXUfrZnT9JqNfMy1e6A
 MC4DFHPj6Ghwy0OrAGsvb4I=
X-Google-Smtp-Source: ABdhPJyeRavnmxgxHczvOxuczSEdzmGjktFz6w3Y0da7zpoupkk9LJF153KOnrxabgGU6VQvuDSlRQ==
X-Received: by 2002:a63:531e:: with SMTP id h30mr24547863pgb.165.1595960785240; 
 Tue, 28 Jul 2020 11:26:25 -0700 (PDT)
Received: from localhost.localdomain ([132.154.123.243])
 by smtp.gmail.com with ESMTPSA id e8sm8580395pfd.34.2020.07.28.11.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 11:26:24 -0700 (PDT)
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
To: manishc@marvell.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: qlge_dbg: removed comment repition
Date: Tue, 28 Jul 2020 23:56:10 +0530
Message-Id: <20200728182610.2538-1-dhiraj.sharma0024@gmail.com>
X-Mailer: git-send-email 2.17.1
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
 Dhiraj Sharma <dhiraj.sharma0024@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside function ql_get_dump comment statement had a repition of word
"to" which I removed and checkpatch.pl ouputs zero error or warnings
now.

Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 985a6c341294..a55bf0b3e9dc 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1298,7 +1298,7 @@ void ql_get_dump(struct ql_adapter *qdev, void *buff)
 	 * If the dump has already been taken and is stored
 	 * in our internal buffer and if force dump is set then
 	 * just start the spool to dump it to the log file
-	 * and also, take a snapshot of the general regs to
+	 * and also, take a snapshot of the general regs
 	 * to the user's buffer or else take complete dump
 	 * to the user's buffer if force is not set.
 	 */
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
