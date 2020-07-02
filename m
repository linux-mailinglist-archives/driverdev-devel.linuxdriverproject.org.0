Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E62A4212844
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 17:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C8478A8C3;
	Thu,  2 Jul 2020 15:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-vA9Msgysax; Thu,  2 Jul 2020 15:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F99789EB3;
	Thu,  2 Jul 2020 15:44:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CDD91BF4E6
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 74EED89EF5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zBqFnWVwo9a2 for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 15:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 176B389EB3
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 15:44:26 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id u8so12308060pje.4
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 08:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nRwAvhsTBMrG6ide5sNk42yeU3QRoAwYZKlWEvw6/Uc=;
 b=B3CY2JNtpz+UCWJsdts0OCVy5b5koIZyP3M4Ky+ncAnrvMf/hu7/PZXwOPzDnhY1YX
 T+lyMoU5612SnV4bW1u7R1crSQzZ/fAe/XJVmW982pVs1Y2O84dF9Q1hzBoHM8Vd0zVM
 SMTTDr1CuF6GFdUN9FqUuLF0ma65ySwyIqDUIlIiaTpaZHaWpByaZqJCgvM3Tn9jnySD
 5mAYc12Trj1qGTnGmhooIpcmyG8NljV2DD6t3cTXeayRzhl+A79394g396uIpimVzkmv
 XxakU3TJWFZrBPR6aQtLdQed3W4G8DQ1DoDxJz1PMQdKZpAcpI7SYPnfZKt0fEfp41ps
 2g3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nRwAvhsTBMrG6ide5sNk42yeU3QRoAwYZKlWEvw6/Uc=;
 b=LBEbFR7whipi3hO8Lso+/gFjgEO4Tu6hZqmwcpJZQvZgO/P3ntZip/hb+zVJrSBFwh
 lnGHDYRceAt0ffkgb8sbmDrwQBfwdiLns4U9Tt0j9A2mYXO0fVoSFUj/0XuiVaWXpBvz
 GakQiKHuBsLskpe9dREP7uwnLa151HJkXLvc6+/LGQ7of0Rbx4JgA8uKpcn9F9HjJsI8
 vtXoC7ER1enDtxsvPcvrUe+zMwTESNL6YIMfD+rEjcvEUSA1u5eFsoYhBp1ILiurcJbQ
 Mo+V4W6k+8QGfqAqaxjWtSXYSAKkhSeaFV4AV2/gOmgSfWVha8OcBHh0ZXJQsn5H7UDQ
 lw2Q==
X-Gm-Message-State: AOAM533SRU0AA8Hz9Pdn3jmQ1ZluAA+oIHN1vZSLUmGaBPmODOxr2iVA
 29lK2iA9a2nYj6lvh6rF/2M=
X-Google-Smtp-Source: ABdhPJxIL/dOnPZ1QkhHV5VTj4SqRISUUHvYBn/Op7GrAkGXxdWRrOenaGaA4ZdyU8eismahoMf0dQ==
X-Received: by 2002:a17:90a:ff91:: with SMTP id
 hf17mr33498239pjb.137.1593704665733; 
 Thu, 02 Jul 2020 08:44:25 -0700 (PDT)
Received: from localhost.localdomain (n11923716050.netvigator.com.
 [119.237.16.50])
 by smtp.gmail.com with ESMTPSA id f15sm7166804pgr.36.2020.07.02.08.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:44:25 -0700 (PDT)
From: Simon Fong <simon.fodin@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH 0/2] Patchset of coding style fixes
Date: Thu,  2 Jul 2020 23:44:18 +0800
Message-Id: <cover.1593703689.git.simon.fodin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Simon Fong <simon.fodin@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixed CHECK and WARNINGs of coding style.

Simon Fong (2):
  staging: rtl8188eu: Fix CHECK of coding style
  staging: rtl8188eu: Fix WARNINGs of Block comments

 drivers/staging/rtl8188eu/core/rtw_recv.c |  7 ++-
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 62 +++++++++++------------
 2 files changed, 34 insertions(+), 35 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
