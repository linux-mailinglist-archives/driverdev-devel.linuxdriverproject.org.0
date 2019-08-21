Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D508A96E20
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 02:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5531623026;
	Wed, 21 Aug 2019 00:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VsAljzGyiyXE; Wed, 21 Aug 2019 00:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E63FF22EDD;
	Wed, 21 Aug 2019 00:18:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B99901BF989
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B684286E5A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKH23++k90j8 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 00:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 22AD286DCF
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 00:18:50 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y1so296566plp.9
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 17:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=57gZcRfgDGHX2fT3IVW27Y0VYhsGx0ciLsG0pvlDHNg=;
 b=Y+y5p8B0lzLHuW5kG8ttgFqeebFNxTZObxgwNZkCBWf+QQLk00bDixWY6RzBduTqFe
 edkSMEFNdGWiMeFMUGvE8Ae01qK/32fR2gRIRFVPzil18srA2XfLmQjEsfo8mzvUMVbA
 RL/7fcoiT827dXrb1ZWE6jpZ+ICelcQjWSlgt/twGBWHQp5Cl8AM1QMACZULkNzs57ED
 5xs/UTcKuYOkLDepi0uEoAzSc3ZgBU7E1IWpHOc+3KYCRw7OL4sY1yGjY8zlOahyLHS0
 7PdiWY1g4wEPPteK4PzrROEZ5K4ceX8WLZKAQhJgfIvYYIswBZXC7qYGmhxFijfxG4VM
 j8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=57gZcRfgDGHX2fT3IVW27Y0VYhsGx0ciLsG0pvlDHNg=;
 b=m6tMhS1CWBpnmzyMTgXq33dE1kWSPrQNXaGxmfG3F0ZzaAs1wdNqFmP4dToPTM+umc
 xVQUAO7WSffYjcePFhWWb4vwoIyKWXLIMvn5Bv10AiagClfn+mJMb2yu8Pf6Yybuo7KI
 r149Ti/vJmkLq/72Yf5HBRPn9+Kq8hUkiGdRFcfY+wnRpTEbVGr+UPZs8ZOA2r33ZdO2
 qr735h5tz1Dc101FULmKCy49W9b/7BCl21cSFerkO2fj0xPC7/I+/lqaJVf2DR+XRl3y
 XZK8kf5stSAZCItRI2DMZd0gv9S3dG2bMSSonZBb0AwNYqEVJc9AM4cb+4dTpbNBZFoU
 3HCA==
X-Gm-Message-State: APjAAAUkeDIIJwc4T5Pvh5s4qDVqeVFHSFmgmSmb64GZDQcsc3v/WLe5
 7hkWIK1vs+heiCV9onwEBxM=
X-Google-Smtp-Source: APXvYqxQmbLxyDLbT0LkOLDX9rn36HoZ95N9Vdi5ziVyq4qecfy7S6EgpHIvECqUKI4WrFTEsbf1Iw==
X-Received: by 2002:a17:902:346:: with SMTP id
 64mr31089028pld.151.1566346729667; 
 Tue, 20 Aug 2019 17:18:49 -0700 (PDT)
Received: from localhost.localdomain (wsip-184-188-36-2.sd.sd.cox.net.
 [184.188.36.2])
 by smtp.googlemail.com with ESMTPSA id g2sm18806323pfm.32.2019.08.20.17.18.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 20 Aug 2019 17:18:49 -0700 (PDT)
From: Caitlyn <caitlynannefinn@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Submitting my first patch series (Checkpatch fixes)
Date: Tue, 20 Aug 2019 20:18:18 -0400
Message-Id: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Caitlyn <caitlynannefinn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello!

This patch series cleans up some checkpatch fixes in erofs. The patches
include balancing conditional braces and fixing some indentation. No testing
done, all patches build and checkpath cleanly.

Caitlyn (2):
  staging/erofs/xattr.h: Fixed misaligned function arguments.
  staging/erofs: Balanced braces around a few conditional statements.

 drivers/staging/erofs/inode.c     |  4 ++--
 drivers/staging/erofs/unzip_vle.c | 12 ++++++------
 drivers/staging/erofs/xattr.h     |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
