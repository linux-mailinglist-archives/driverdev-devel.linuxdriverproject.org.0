Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 448DB31C465
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B95BD85F10;
	Mon, 15 Feb 2021 23:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTFbnzl-DG_e; Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6235E845DB;
	Mon, 15 Feb 2021 23:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39F571BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3710486B2C
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjMnD9iWL9kZ for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86B8786B6F
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:44 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id g6so10997769wrs.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Su0VWDUALWOYKIFRR4UFS8nL8GDpUruFpVifim76/bc=;
 b=wxqoiKHjqNnMS6ujl47+8uq+EQCZ2O498CHKdiPU827HSaqf4nxm7bcNntVziqrCeR
 SA7+lVmKlQTUYuTjDjxtgFfOYhnGPilx6a/R/oTjRxNiOSElJEMWM1vxFCCoWPdbFMfp
 PVul6IvZA2HsshDttn8uXGF/SpwO3Rb1fp5EtbA0eiyEM/JDBgb20NZjIkXUxfPKx/jJ
 RkMRvNLYnsu7lnx7BhiWL3vf2YxcHKEt08n3Ov6fJpbsQTSovS7anv8rNZIO67hsjCyS
 DgD5EGgoXJIFnpigX7nfDHcga9cTzMzX97PfESIMolXVoe0zsxbsXIzMDZbqRgXNueUk
 S+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Su0VWDUALWOYKIFRR4UFS8nL8GDpUruFpVifim76/bc=;
 b=XW8xyMTznH3i4rcvmC8MSp+jyTN2OxWeC2tyblO6jtN2U2H+ubHPdr58GVlpuYvi8A
 fGK7KuCBYK9dmIWtbxOOnB0OOXvLQpoyXekkKLrSHGw1kxifId8UoEbjzqFKQqN6jlm7
 aojwFemumz8vi9XGWnGo9EEWlq2R4/OJaLgIU4Yi9x6q5vpo3gcE7PMGtgiErjNZCe1G
 ihKFNZoBYdizZzOOMwzpmpQnwT0AQK0i/2/Clenb9MBz/tHpU/m3MgLjt9f+5VgX1ehW
 pUpnF+Th8P1uUei6U2SstAhRK1Z8JWyILaWDxt0rc+kV6LmfjweHPgupkXkabcF3i45x
 Rhng==
X-Gm-Message-State: AOAM531FOAT+q91IWQzC+cdo4FpN5CRu1kTk0Cwyr1JI37mbGHHSkYOs
 h+4if66OlYU6gbZ4zxtpt7dflQ==
X-Google-Smtp-Source: ABdhPJwp0hYc6/z38TJ2McI0u8B8N2Fwi9DKBzc2ibQ6K55jwrivQwDdYiuuIZXLOSWMy094mWxndQ==
X-Received: by 2002:adf:fd89:: with SMTP id d9mr21235242wrr.255.1613432083036; 
 Mon, 15 Feb 2021 15:34:43 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:42 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: rtl8723bs: remove DBG_COUNTER
Date: Mon, 15 Feb 2021 23:34:34 +0000
Message-Id: <20210215233440.80617-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set removes all calls of the DBG_COUNTER macro from the
driver, as the macro only increments the relevant values, which are
never then used anywhere else. It then removes the DBG_COUNTER macro
definition itself.

In addition, it removes rx_logs/tx_logs/int_logs struct definitions from
the codebase as well. These are inside a CONFIG_DBG_COUNTER preprocessor
ifdef, and the only thing that was using them was the aforementioned
DBG_COUNTER calls.

Removing this code goes some way towards cleaning up this driver, and is
therefore worth doing.

Phillip Potter (6):
  staging: rtl8723bs: remove DBG_COUNTER calls from os_dep/recv_linux.c
  staging: rtl8723bs: remove DBG_COUNTER calls from os_dep/xmit_linux.c
  staging: rtl8723bs: remove DBG_COUNTER calls from core/rtw_xmit.c
  staging: rtl8723bs: remove DBG_COUNTER calls from core/rtw_recv.c
  staging: rtl8723bs: remove DBG_COUNTER definition from rtw_debug.h
  staging: rtl8723bs: remove rx_logs/tx_logs/int_logs from drv_types.h

 drivers/staging/rtl8723bs/core/rtw_recv.c     |  44 +-----
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  44 +-----
 drivers/staging/rtl8723bs/include/drv_types.h | 131 ------------------
 drivers/staging/rtl8723bs/include/rtw_debug.h |   6 -
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  15 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |  17 +--
 6 files changed, 10 insertions(+), 247 deletions(-)

-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
