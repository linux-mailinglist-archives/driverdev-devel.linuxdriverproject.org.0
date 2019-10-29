Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2348E7E1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 02:43:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B88D20773;
	Tue, 29 Oct 2019 01:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlcQv2OS9s2G; Tue, 29 Oct 2019 01:43:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3AAF520517;
	Tue, 29 Oct 2019 01:43:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6B711BF3BE
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4CF620517
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2ZuXbU0W010 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 01:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by silver.osuosl.org (Postfix) with ESMTPS id 06F7E204B5
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 01:43:26 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id y81so10576114qkb.7
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 18:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BHHKDkrvC4BZQPC9acPCLWkbuvwPNUCU1LdyX5p7xGc=;
 b=V+NRsZnSrhbWtb1cKoFmRuRrzMGQfakcuaG4zAflDwBbHRd4mSt9Q68RMf88gioHTa
 mGQDxZwh6Fj8rCU8574qQaJq7lyHkhF6I9SEuHPCWzruYkKLQTok9lLCZBlIGw+Wva02
 /ayVhQoRzaga00rwqgXxDIR+2JFqsv2maLTpgMqgzKEAg0AgTgiifbsk25Khjr0rMkuK
 hP9cpxIvMo4LvEyV+JvhDF0H+jAOkjrVqZSyE6B/I8LxzaUQnQ5tZ4Od1S+NPIulwHXA
 5qAYWoEsa+bhcTIKQU0LTHZ/iZk3O7LrRBtv1jJTXXnr8PV9oN3QGDxkgl3SroHKlnOr
 qvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BHHKDkrvC4BZQPC9acPCLWkbuvwPNUCU1LdyX5p7xGc=;
 b=XL61N9eZ2uYXHJEpQckfJQuw7me4fQr1U6zDEg7wu9XkkvTLigwgap+HSzc/aPZnka
 89wSQpgL3sXKzyhwJAMXMcEFjgT8PZE+GCI8S1K9Q5NMaaxXxqKTlFTipuxzytGHpfBn
 qFGmCnkcEUle3giQefJ6pqZb6HFAVKBQbixKoSzhNkA+rKP9Y5zsZ1gg+7V68kbj2sNi
 aXOh6/S1AZTlhhWYLD8wX8aqyRb1J1uy8vzvXQMYRoObunv1T+wEA9/mt9NdIMqDwLuk
 fKdBuOLaWcJc5IL7CWtgtlRPtE3GyWVr63DRvZqSL1LAtadgopVO0iMbBV0yUCixAzm2
 HpQQ==
X-Gm-Message-State: APjAAAUQBu95wH9Pe6EmQP4EM5xGBLFjg549xtQy/ZS/EXr7CGdigKgn
 6dmwYfPbjdPSFeAT1V4VAgY=
X-Google-Smtp-Source: APXvYqxVkHRnq2Rb+ETokwG7RclCm/vUhmaoM/4Eg+pdkp99rZMLHjqIhwwIL2vIk3+jXcKKyanipQ==
X-Received: by 2002:a37:dc45:: with SMTP id v66mr17521790qki.345.1572313404932; 
 Mon, 28 Oct 2019 18:43:24 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 197sm6698394qkh.80.2019.10.28.18.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:43:24 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 0/5] staging: rts5208: Eliminate the use of CamelCase
Date: Mon, 28 Oct 2019 22:43:11 -0300
Message-Id: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in tree rts5208


Gabriela Bittencourt (5):
  staging: rts5208: Eliminate the use of Camel Case in file ms.c
  staging: rts5208: Eliminate the use of Camel Case in file ms.h
  staging: rts5208: Eliminate the use of Camel Case in file xd.c
  staging: rts5208: Eliminate the use of Camel Case in file xd.h
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
