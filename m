Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1EE2C0253
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC46E200ED;
	Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l46QJSrbWhZZ; Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A29F2047D;
	Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D369D1BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFF67855CF
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwRS5hUgNvVe for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7ABDE8557E
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:41 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h21so16568680wmb.2
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pyZATBQgvcHuzZ7pwmNtj7n6dPALnhEn9Ow9x/Va+do=;
 b=tkssUKf+E/mbQtywLOjbB4fgRwMLnNkKXAPlOkoBDTqG52ze0r/ZStIv85eLz7bwk1
 9VPRaj/W66+DxgBwOShqULy8Z5+JXlxZX7C+kovwnJ4tMaAUwbCTXslztzA/0GU/BWGu
 UH44GNXZrzAY9JsYjGFqSeH+pZbt2Ke0yg9gMI1p3GFZhDENzwFMiDLuQ9IPim823GBG
 5K/k6QYPcXMgJtTXg0XEcaNQ/7o4e61uTK91Hh2I/Oun7rmeptihrnoLxGMrMy7REq76
 4ua3MckCBvdXUPJvdjgUSGoZNuWcELApyZDJ0C7iOs2R/SLZp2VN8k/tRRQzJR1yLlYh
 m3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pyZATBQgvcHuzZ7pwmNtj7n6dPALnhEn9Ow9x/Va+do=;
 b=oqCAqu5ErBbpcAtWFtaOGZLK13w+YJQXRfc2IqRqgOD3Xhnd0WPAnXljQALf/MkmyK
 PMx0WybSoQoW64wuK0wf1XLrtDos0NTvvbNwj32TLrrOReq/2Us2/BPOi34ElQawYyQL
 wxWpcq4HLB+2bFYRaeIf71EegXy2Je3uohhp+k82PYjSbeqNCR8tFtL+mtMDfC3/b6da
 p1vEKY1kg/5rYeA5CU4eDaIIh8nh/0Ar0zS6Ev8p8uJqwPMTO/EpiBjn1dIVpHoFKlJr
 dMKNud5DKPVHgzDOUFeqEOOG8nJ708nQn6Ah7rRomM9LVaWSvr6j0J3IuCVU9k6yoGH7
 mGRg==
X-Gm-Message-State: AOAM532rILwo2NZvxKSIGxnuUD3mjF2hpy3y2Q/z/dtSe57jph+ODaQb
 dKYR++SblRrlTeMIUnQ6Q7g=
X-Google-Smtp-Source: ABdhPJyXS2YMeg/AXK2EKccd4WLu4vkyOrhI6AHA9hyxcAJWOqs63lp9Oq2zfnBU8//LxINtPllBLA==
X-Received: by 2002:a1c:2dc8:: with SMTP id t191mr22642335wmt.73.1606124199978; 
 Mon, 23 Nov 2020 01:36:39 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:39 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/7] staging: mt7621-pci: update to last kernel APIs and other
 related minor cleanups
Date: Mon, 23 Nov 2020 10:36:30 +0100
Message-Id: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series updates the driver to use last kernel apis and
other minor cleanup changes related with this changes.

LOC decressed a bit which is always a good thing :)

This serias has been tested in GnuBee PC1 boards resulting in a
working platform.

Best regards,
   Sergio Paracuellos

Sergio Paracuellos (7):
  staging: mt7621-pci: remove bus ranges related code
  staging: mt7621-pci: remove 'offset' with mem and io resource sizes
  staging: mt7621-pci: add comment to clarify IO resource in this driver
  staging: mt7621-pci: review 'pci_host_bridge' assigned variables
  staging: mt7621-pci: parse and prepare resources in
    'mt7621_pci_parse_request_of_pci_ranges'
  staging: mt7621-pci: convert to use 'devm_platform_ioremap_resource'
  staging: mt7621-pci: remove 'RALINK_PCI_IMBASEBAR0_ADDR' register

 drivers/staging/mt7621-pci/pci-mt7621.c | 97 ++++++++-----------------
 1 file changed, 30 insertions(+), 67 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
