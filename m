Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D07DEA3C4
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 20:05:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 802D686E5E;
	Wed, 30 Oct 2019 19:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1MLKidhSlxs; Wed, 30 Oct 2019 19:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D8CF86566;
	Wed, 30 Oct 2019 19:05:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA16B1BF27C
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D191E85BE4
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 19:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XPfgq0DsCks for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 19:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 099F385BC4
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 19:05:24 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id l3so4777698qtp.2
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 12:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GIfcfwZSfz3iFqYkkCsQDsEpxbNUtoI0tD1NbKhoPSw=;
 b=U4etqiVAXYGLuwSnkCnKmAeDO4XYNCdR0mgSrR8JvZeQNyIwor8I4gBMU2o1F2uVs8
 B2XmYPHf1WlDyU7sX5GBdYgynpwJr++CmY8p5jKmzWxmARa539d3tShPdv84iDmv+3BT
 x2cdXvA6Pr703pxNBkGkNNHG3bWzelCxU1ITY/wVJxzsJQqLKs+SeFQs99gx1HcMZ9E7
 Eqi0jmhJW2OP++aJy/q+58eqLaNXg9mgYMQgdzXAnehZUFW6tO0fE7kIpuFo/vFgkg/i
 pjoBElmuqvxxxCNVvJJ4cfYqOOccvKSoHuWX4Dk6IaNwf9mqL97os01S06dWIfFdetuW
 7PTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GIfcfwZSfz3iFqYkkCsQDsEpxbNUtoI0tD1NbKhoPSw=;
 b=ZJzdFyDYNS8uA8x42qkxWaDBk9p8kQXui1I/nJreGVRyccTpn+Kx5G2dCmJcI7Ik1x
 6HQjvgOzu8LO18DmH9dm4i03+VLt7MNhYEZggVvvIvRHJv235XgMS648qiFDQPruFL9r
 y9KO/25vb/Kq9pf/gfhjVZwrics2YiKsXhWKh+g4+Uf4WFXGMTbUDWkvbvt3f8yvzfNi
 ciUGAzuBEaJ0IvepSPUHdr+8Dh2oRZUyRMr3Y4PdAEnmiw9SkcSezrqZXCeK/hyYC125
 3/0wnShhRntvAWsn9IHUVGOzuaKgZ7klPmrXAiZt+nGZ7O3b0s977E9f9/tmeXn7eg1a
 gGUw==
X-Gm-Message-State: APjAAAWcQcvuz1KFczmUBXwvWLBAiygi1gA+5ILnaO4SrPteOtVbXarF
 GOewGlCEEZgK+NS25DGJBQk=
X-Google-Smtp-Source: APXvYqxkMw6RX4XNwRXX+HeXx4n622VVKCx9NLt8ZhgLlog4sMtxfMlRg7p2s4xvzh8Z15AlC6n7fw==
X-Received: by 2002:ac8:4a8f:: with SMTP id l15mr1734494qtq.220.1572462322849; 
 Wed, 30 Oct 2019 12:05:22 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 12:05:22 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v3 0/3] staging: rts5208: Eliminate the use of Camel Case
Date: Wed, 30 Oct 2019 16:05:11 -0300
Message-Id: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
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

Changes in v3:
- Change the subject line of commits to make it more clear and informative

Changes in v2:
- Place the changes on variable's names in the use and definition in the
same commit

I compile the kernel after each commit of the series to make sure it
doesn't break the compilation.

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
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
