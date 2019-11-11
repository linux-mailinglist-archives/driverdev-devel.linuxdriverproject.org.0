Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B530F7A1C
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 18:39:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDD0186BDB;
	Mon, 11 Nov 2019 17:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GahpEBkyWP2b; Mon, 11 Nov 2019 17:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 690BA861D4;
	Mon, 11 Nov 2019 17:39:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 713C71BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E4B3220DD
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJK4avwMA5Ae for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 17:39:48 +0000 (UTC)
X-Greylist: delayed 00:18:22 by SQLgrey-1.7.6
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com
 [209.85.214.201])
 by silver.osuosl.org (Postfix) with ESMTPS id F202321FAD
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 17:39:47 +0000 (UTC)
Received: by mail-pl1-f201.google.com with SMTP id v1so11052679plz.16
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 09:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Q5ErOqEeQkE8zGWZ/Cg8117Aj3E39qkq6ZFr/731Nhk=;
 b=DNnIxJSZbYSCKMXR3oyKxojR0Ry/7lQvUxUCeVzTB46EFnKBd0Wlco4EImaXNfhPGV
 nv43bycGASAvRX5ZOnUvtFqFe5xzIJE3xGjmfI0X4P/AiiiGw99YV/AlIr+12VabjmeB
 80bRSbtOnKAidqBEXxVsE8TKny8FqkUzaD3SNlcKYFVJvEsQzrWMGf0tRuQIba425C9c
 msG0pJgFShRBo3LZf+cEg0ITx4iRtIa0RhA/b8gRrypPNKFax7d+h+BCykKLFHuBKIfl
 YmsnwvcbuM/5OqPCRPoOzuOKrzbguqfOK3cD7+Y5WYwJ0i8YU8+RVDMo3vWqZakaZFVY
 3buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Q5ErOqEeQkE8zGWZ/Cg8117Aj3E39qkq6ZFr/731Nhk=;
 b=sJJxDWcxu8G9JfeHC7f7V2Iki610/tWfdWm3YKXv94uYSqKciHy7AI0z3/ZJ/2ilYM
 Ywb6CZgdbHPfLoTvePsNaKjdzJpDrcLdWKgEOFoR/mhLQHgpx4vxcg6HCRckZkvZ6U5Y
 T9aqx/JKrDXw7Sziz8m4wtLufHqGPcEK2NNc9xzQ/Qb3ZL04CXhqpfxSnwDyBNEDI2cB
 HJYEM5uHKQMlG4//Xmpfo+Mc0fB9UMHF1FzUYzAt9VRUIPRW3V3UPDOtygmFUP9EwJ+z
 iblkm8m+9bKj4Mqlz12GWs72K1l3CwgkJvHIWh01QHdkdcy3cjF1tuCYn7z2SOK3YbYL
 xUaw==
X-Gm-Message-State: APjAAAVHP/JvPFJVbYN0eU8rOZmNkT+UheYttM7tJsc/Dw8oiRJCVoiA
 iET+A62hL5Pkl16MBS7/yTPRFs8jehhgmNl7LvE=
X-Google-Smtp-Source: APXvYqzhos/xZbT5rm6ROmVzx3DjwEz3ae6GOJfhntU4fkDgkShMPx2sH+xkq+6a8A9zKzf7m3LJ6zvxjP+D+nbbJmM=
X-Received: by 2002:a0c:b062:: with SMTP id l31mr25296302qvc.43.1573492464996; 
 Mon, 11 Nov 2019 09:14:24 -0800 (PST)
Date: Mon, 11 Nov 2019 12:14:22 -0500
Message-Id: <cover.1573482698.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 0/2] Remove global struct vchiq_drvdata variables
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These appear to be populated once in vchiq_probe() and then read
once in vchiq_platform_init(), so by moving the logic to that
function we can remove some (small amount of) global data.

Marcelo Diop-Gonzalez (2):
  staging: vchiq: Move retrieval of rpi_firmware to
    vchiq_platform_init()
  staging: vchiq: Remove global bcm*_drvdata

 .../interface/vchiq_arm/vchiq_2835_arm.c      | 18 ++++++++--
 .../interface/vchiq_arm/vchiq_arm.c           | 34 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  5 ---
 3 files changed, 17 insertions(+), 40 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
