Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7109AE5FDF
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 00:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63D1320428;
	Sat, 26 Oct 2019 22:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-SAy+SLOy+w; Sat, 26 Oct 2019 22:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F1526203B5;
	Sat, 26 Oct 2019 22:25:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFBFD1BF41C
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 22:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD2D3855CC
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 22:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXCLGOfzlyqi for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 22:24:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2192085168
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 22:24:59 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id e14so8957382qto.1
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 15:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ckFFNPjTqoIV9NtKmwbFlYYqSItNgTJwWUgtTUGHSxk=;
 b=AjxPHJRsbcMH2/yFR06YkVU6csiJTZ6l9KnCXkdhc+NmED9nLh+t3MhvGP+hwKwVbc
 xIcwTJUTNncG2HowAbSXiRokyvVtAfBpd3d1gh+xXC0zLTkNf/hjYkr52j9q6xgS09rW
 6JaeZKEbbFx8mNpGP9Um3Le1q7vTAIvRXyXWa43GOy6tIFG2TxX/gKndQ6nLhu8qOrQq
 C//IEr0XuQOSWEFPapyQDI2ViWzTPTiFWyIpvbApmtgnSVPSM6+LIdgTjdCrMbmzAYup
 /oDLF35L1hzW9FFtEABWmUreWI7aXs7JaF4Dn5Bi83v0UB/PYB5snwGyQeFeQ4Fh+cfu
 W4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ckFFNPjTqoIV9NtKmwbFlYYqSItNgTJwWUgtTUGHSxk=;
 b=C5aDiYaZZxkYJu3YPWghmRvIk2H8iMa6MjJagtp6q1Z1yv8zqlDs3o7P/L8FfASLnU
 6jP3mnvpcJ9UkDp600P46LiNYhcUXYSK3+hcQp/1ZKJ+9BVhgN+3QramdUO1TZEQLj6I
 VsRRB9vrJctoZgskz/A4MW1G/QtZqI30H4hADf3fiv77pMCURAH6MLcEJ9igmj1809CM
 Vx6uQcias9K/o/HIEOFPoNMp6dzelaLnfKW0KCzWaXBCW5Sj4zloVsRsPKpm6N6tvRsc
 UQILqIFEUuGMHHSmfLTnWxZVP7+DEDMlIA0kOsp7a+OX3NHfLXJc2PYB+5YKlWLg28YW
 0L8A==
X-Gm-Message-State: APjAAAWa6KXq28SN2HVkpIoMdTqPOCKQHiKSOd9g3uvpWh0VxhJeeMWJ
 w8l0ym+1hWZqkUYeKytN5wo=
X-Google-Smtp-Source: APXvYqzMgODqERj9LojX/pC6WbVr8Y8PFFc4BiKrZkuW6qnCSyBuhlmTyLrl3G+3rrw3lN8yMaSzQA==
X-Received: by 2002:ac8:d6:: with SMTP id d22mr10473557qtg.290.1572128698141; 
 Sat, 26 Oct 2019 15:24:58 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id c204sm2606120qkb.90.2019.10.26.15.24.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 15:24:57 -0700 (PDT)
Date: Sat, 26 Oct 2019 19:24:53 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191026222453.GA14562@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unneeded variable used to store return value. Issue found by
coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index b07f5e2..d53bd801 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
 		uint64_t queue, union cvmx_pko_command_word0 pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
-	cvmx_pko_status_t ret = 0;
-
-	return ret;
+	return 0;
 }
 
 static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
