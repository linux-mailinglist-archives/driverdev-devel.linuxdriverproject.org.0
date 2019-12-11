Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B175D11BB49
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38D8B86D6F;
	Wed, 11 Dec 2019 18:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWma-hS4xby3; Wed, 11 Dec 2019 18:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14F0C86D37;
	Wed, 11 Dec 2019 18:15:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20EC71BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 066848861A
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwNV72HFQvSj for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A1E38860D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:17 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id i3so9366510ybe.12
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d13RLX6NhyAv5ZdFefjfKBGNP9hWY+i8u20CJzTC+ac=;
 b=TfUavIKv9uEq7wg4iS9gbh0Jx4VTX8vw7590D9U3L/bJblXqToqS+gM0nQJenfkwwf
 J2qowTuuhNz7s1dDFWqOc4okguAuLh7D0y6sj5RkdydhdeAyNtHuv4z3jNUFL//vwAAl
 DbCRxN2us9teEcCyPEcl3YMnkYYdnlurYPcghdf3Qghy49cdIHa2AmH/UNKvQ558hQEI
 MhHWHrTgpUAGIX7FFALKsP9zE28NUn3kWjNmQvRHvSbRh71v4el+egZB4xvHWbO193wf
 T3TOxVavcWjWgX+6IHzjgc3LnPKS6VRFpnjZZJNDB0TVHFm3GdvQddiTp/StY3FBg4Py
 4kvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d13RLX6NhyAv5ZdFefjfKBGNP9hWY+i8u20CJzTC+ac=;
 b=rT2dyWGXaehVzaVQorU44p7M9YOFqboCVom7Ig3NmWBfcknmpsRDkfiOK/izpXW7u3
 XQGZ2vnTfC9HBh79cH8F4NvRquBmSR1XpDFLxyVuY3+uUsZHTKETx41MbnOj1iT6PdDD
 JKwVU23H+PGX1oqCRazqnwdPQEPh/YRWv86eT5xHtFdZkN28+jWk22+zetzPFSk57gUA
 wcglQ9slN/MYwIUkdiPfxio++lNV1+IOCMSBzr0+OOZXY7+7mDD1pXn8J/hE27BaOAbl
 fY7BOQGOMyxpzLWYIOaqYNt6UQAuJTEdpLOcHLmIuhV0JuUQqIc7RGr/w3Ff+x4GccFa
 eY7A==
X-Gm-Message-State: APjAAAV3ogPUBx4A3XtSfqI0d+AnUymU9VAQlW6SOcf1tc/pJAZz0vls
 RpJO1PhoaX572qFehLb79BE=
X-Google-Smtp-Source: APXvYqx0PyEq0X95gP3rmHgsA/8bcB8XqHkjAz3WmSh1MSMIo6lwgD82jrxWNNN1M/6fp2nXGr+LQQ==
X-Received: by 2002:a25:aa05:: with SMTP id s5mr926645ybi.513.1576088116289;
 Wed, 11 Dec 2019 10:15:16 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id 207sm1260876ywq.100.2019.12.11.10.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:15 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 08/23] staging: qlge: Fix CHECK: Unnecessary parentheses
 around mpi_coredump->mpi_global_header
Date: Wed, 11 Dec 2019 12:12:37 -0600
Message-Id: <d6b36b83cf1069b20cc0a720c2fd82974b9053d5.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix CHECK: Unnecessary parentheses around
mpi_coredump->mpi_global_header in file qlge_dbg.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 1d4de39a2a70..f8b2f105592f 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -737,7 +737,7 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	}
 
 	/* Insert the global header */
-	memset(&(mpi_coredump->mpi_global_header), 0,
+	memset(&mpi_coredump->mpi_global_header, 0,
 	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
 	mpi_coredump->mpi_global_header.header_size =
@@ -1225,7 +1225,7 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 {
 	int i, status;
 
-	memset(&(mpi_coredump->mpi_global_header), 0,
+	memset(&mpi_coredump->mpi_global_header, 0,
 	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
 	mpi_coredump->mpi_global_header.header_size =
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
