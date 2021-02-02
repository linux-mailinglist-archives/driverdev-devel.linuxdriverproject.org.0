Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3D430BD40
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 12:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96A172266C;
	Tue,  2 Feb 2021 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQREAX+Ey0El; Tue,  2 Feb 2021 11:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6B3F214EB;
	Tue,  2 Feb 2021 11:38:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F70C1BF865
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C23C86225
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6erbY95KIIMW
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D308286224
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612265895; x=1643801895;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=nWLHVzNQcIiw2iK0T05M3hXJY6Mx1zNdvsPavyOYtMg=;
 b=Qwk1kXFNzsAhCKJufkBWMRoxWGXu1iRnA8V0xHlH8o2cHigNZ9t1eulh
 xf/7nY5NMY6d/PJwtbhsFXY7aM49nlPKozfhSpgPibrvuZIo69/x8Sr/g
 i2SFxIfD0GgYXmRXBfuOx6FoXXMXoRrOLkPlzd0sVa1E2NSkW64SgH08l
 p53xPU+GMGwa6WkC8NtGVPFHZHznN+ZGbC46K/AaMUieGjXQKjOdFRuJL
 mD6QgqKYceBhhbucqQ/b28MH04o0sCxbCodtqS2qjE+EbLb4DZ9jkfj0k
 bdt/nRI3yxgG+XB6wMWexCNSghYxmTZ5Uod02wEzqTk2skO9rl7UWN/r4 A==;
IronPort-SDR: mCi71hPS8JlR0WfXrmqbNRVT262pRUPZQhGDDOGLX0VnMUEOH8oJ9YjUZMFnx57nxVQSZkHX7S
 +cMvOyV7Lvb2XIjZ06Uy86JHjRPoDkTx2hQ8ydfFwmHrTXWOezuCr4Q7l+Obpfuvl0Fxz9dy6S
 //x5cgi/AtOekz4sjItTuKGZTSN2Qo6PqxrZms0ZlD7EOhwQjKOnTxJyWTWmJkC4zFddCJJRnu
 lomhAQNNNuPaZxID5KDThTqkauHiqclm0UWDaLxzeDPdtltXVuDLr14gywAs9IKNYVxgW3fGn8
 mBA=
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="113434780"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Feb 2021 04:38:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Feb 2021 04:38:15 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 2 Feb 2021 04:38:14 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: most: sound: implement improvements reported in
 code review
Date: Tue, 2 Feb 2021 12:38:08 +0100
Message-ID: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set fixes two problems found during code audit.

Christian Gromm (2):
  staging: most: sound: add sanity check for function argument
  staging: most: sound: use non-safe list iteration

 drivers/staging/most/sound/sound.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
