Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 974D71A6BC6
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 20:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AA6F84D9A;
	Mon, 13 Apr 2020 18:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1pgzoOLRFBE; Mon, 13 Apr 2020 18:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 978F284495;
	Mon, 13 Apr 2020 18:01:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0A521BF319
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99CEE20485
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqFK-7KFawGN for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 18:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A2F7A20445
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 18:01:39 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id d17so4154334wrg.11
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 11:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jtIFW64tqyzoS91eUJxx5MhAP/GYnVTnLiFyemtk0AQ=;
 b=GlWukAqWN4kKrCdSoNvWoOv0MNGWjyr5PFiB5lTZEXPTICJntkpwhQuYwok2YROgGr
 4Y8symHxEqddLpJvxZvp2Jn8cGZQuz3m03x+cI4WHBWceNZeKtmtpUxkvd5q8ea/Hj7A
 WCDhsU9R1ryHIFhMVVdrdUalEBqy07aQUSHewxbe9oX6IYAUiiq/3umQgr0tcZO+dYvr
 3O55YMWocL8PZ7OWS5Uf8tqjWkM2SewXnVbUlEQH7I0aJQmYQxBA2nWvB/dS761Uh+pC
 zP9BcuEwFD3TZ0N+ULgsKHrmZprsi00Vn1jTQ3mJBGpENxJ897tXH3kGYN7B//ipaOy0
 F8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jtIFW64tqyzoS91eUJxx5MhAP/GYnVTnLiFyemtk0AQ=;
 b=gCTV1JM9mBQV0EOumzFuTitQaZDRap84iOaH1S4M8bXZDy5np0Vj1Sfraev4dWH6W0
 CW6Bsam4pcNHO+lgI3grUfQnn+S9oXTtVPcmkqpo4qzwgAYXZarJ/CoF7+V4TSewg2dL
 HR2qEfMB9teqFezhLztv0zucy4OG+6V9NqrZtkrutUauan8sOWpRKFOXtx/oOPhhVa1e
 jqo6/ep80RbnvYMm5xpB5OW3lU2R+I/WDAucz5M3EF4V8rS4qMFhKVqKx7P5NJVUyscF
 td7zdmZJcuv11AXmrwvjOpv0tfru46CTYnhlc3ksopWSwJyKjzBc6dqrnx+f2qzWrfvh
 uhcQ==
X-Gm-Message-State: AGi0Puatlz+Qy2YDqNEgcCe4kxChfdKlXTlbdQcbK3p/DFlh8HN6rOjn
 hL4wDi31NiHQuRztUfbquHA=
X-Google-Smtp-Source: APiQypL5lttZkoc5Kc3BNlqZPngoyBZqQ3DXc9NyXD93WP0QxbKEUwrJFJpfwwg32FBCWdi9w00CcQ==
X-Received: by 2002:adf:fc92:: with SMTP id g18mr10527368wrr.10.1586800898120; 
 Mon, 13 Apr 2020 11:01:38 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-241.092.073.pools.vodafone-ip.de. [92.73.54.241])
 by smtp.gmail.com with ESMTPSA id u3sm6476181wrt.93.2020.04.13.11.01.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 11:01:37 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] staging: rtl8188eu: checkpatch cleanups in hal/fw.c
Date: Mon, 13 Apr 2020 19:59:54 +0200
Message-Id: <20200413175957.30165-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series clears the last remaining checkpatch issues in the file
hal/fw.c.

Michael Straube (3):
  staging: rtl8188eu: rename define to upper case
  staging: rtl8188eu: cleanup long line in fw.c
  staging: rtl8188eu: make const char array static

 drivers/staging/rtl8188eu/hal/fw.c                | 7 ++++---
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h | 2 +-
 2 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
