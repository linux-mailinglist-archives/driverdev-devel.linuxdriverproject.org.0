Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C523E052
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 20:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1ADD8867E;
	Thu,  6 Aug 2020 18:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Shnri52TgnZp; Thu,  6 Aug 2020 18:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D53F8862C;
	Thu,  6 Aug 2020 18:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B12E61BF5E0
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E80620392
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZOm-yFbrrubb for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 18:29:22 +0000 (UTC)
X-Greylist: delayed 01:08:59 by SQLgrey-1.7.6
Received: from mail-vs1-f73.google.com (mail-vs1-f73.google.com
 [209.85.217.73])
 by silver.osuosl.org (Postfix) with ESMTPS id 2347A20362
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 18:29:22 +0000 (UTC)
Received: by mail-vs1-f73.google.com with SMTP id k16so6339957vso.10
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 11:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=rCm9cY6ajxJ7usQ3AHKrWox7W/sIb0CRigoftU0dpEI=;
 b=PHMfc5AxB5CnXqLw5iAjfPAjw6WolNBPr/1vdUHJd1AEFoh7clU9JHC/sqqOUj+riM
 pHOVnHgkDYQ6gDD4TSr0Qt1sZZ6haTuBWdiyXgUv3p334IQRsmrCJtSqn7rDA5JJFq7U
 FZB2xOwlw3vgmdtsJjISSZjuzXy5q/6iucfcKQLhaUNv5mVCWHpRl4SjU47YEuT5PJJf
 QErCeYe4YECdbsGWYTrlvRzKz3C5oiJSLJ1sNSJDlyMfX+1ZGYFluOH1Dc52izdTH8YK
 qlEQS1BWZRa3Mh38M4pPBs04tjmwhIepZGBJzJHnRrDD0cXu1RmcNswMPetBtdMshnll
 2PJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=rCm9cY6ajxJ7usQ3AHKrWox7W/sIb0CRigoftU0dpEI=;
 b=fenSoj9/Fnn/N2/x/CTXJHDr4mmyZYKhbTAqn32PMsZdwcNCyK+cer2WbSMeTNkm8o
 7PGs0LjraUT2Nrc9Bbnp8dr8SKuHbNOTYfYfsY5KR1hUiziRf+N4TbIJ598FZInP7tmF
 JJbIkJ6UDbtImZV9DoDTnKj2BIUBogw1JxAWm8HjXXCHKexLWHmj4dvsDObElIozn9X+
 fUoThOQmFbqOHno5/RFhVMe+H3pQE0FSHSpYxcJdWCOqTARzHx11qbzWlqqoxUJ0gBoV
 rtd1D/J99RlyUjhDFMiAAKRm/pzV5VXD3qV4zJx5sJ1GGeJYbOBgt+FcpRUbDMPVtfud
 Drug==
X-Gm-Message-State: AOAM532CuDrM23Y2WwRDwihxLDs2jOOjMjau5RhNMUE4u5/tdcPyiaCh
 6u0Zg/OrkVkovMpmepl/BncsMKr3Pg==
X-Google-Smtp-Source: ABdhPJxKMwuPDKBYR+NJXzoJwI9ymXY2JTIR/CIMWdANcc0jRgvGsIlnEHvb2S29PQ10EUHf5fUrNicbyA==
X-Received: by 2002:ad4:56ee:: with SMTP id
 cr14mr10244737qvb.119.1596732850548; 
 Thu, 06 Aug 2020 09:54:10 -0700 (PDT)
Date: Thu,  6 Aug 2020 18:53:59 +0200
Message-Id: <20200806165359.2381483-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH] binder: Remove bogus warning on failed same-process
 transaction
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While binder transactions with the same binder_proc as sender and recipient
are forbidden, transactions with the same task_struct as sender and
recipient are possible (even though currently there is a weird check in
binder_transaction() that rejects them in the target==0 case).
Therefore, task_struct identities can't be used to distinguish whether
the caller is running in the context of the sender or the recipient.

Since I see no easy way to make this WARN_ON() useful and correct, let's
just remove it.

Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")
Reported-by: syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f936530a19b0..5b0376344dbe 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2344,8 +2344,6 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
 			 * file is done when the transaction is torn
 			 * down.
 			 */
-			WARN_ON(failed_at &&
-				proc->tsk == current->group_leader);
 		} break;
 		case BINDER_TYPE_PTR:
 			/*

base-commit: 47ec5303d73ea344e84f46660fff693c57641386
-- 
2.28.0.163.g6104cc2f0b6-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
