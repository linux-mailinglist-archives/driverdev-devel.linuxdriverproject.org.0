Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D26D390D
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 45C292588A;
	Fri, 11 Oct 2019 06:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4TUeZweu1+IP; Fri, 11 Oct 2019 06:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D42620461;
	Fri, 11 Oct 2019 06:03:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 702F91BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 413FA88837
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ys46b7GNDTPY for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5802088836
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:00 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id b128so5432246pfa.1
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Por79pKV7/zxavztiqV46lugG6MuHRsk2OLPtNOwr00=;
 b=OBYiWhCtNkd2IIOgjtym3d9Naqwmjj78kiNv7xSHnP38ZF2KTdRA9uSR83WWkKRu/J
 31A8Dv/7jc16ipWUxsTijs27RLbJByqq+LJyCpo3WGu41iXrI2ScMOucuvGVg1yAbiSm
 5n9W4L0bD4Z0RuXcZ8Oi/9ei1AwSYGeV2ZprddLzluJbVNxgHYolBzD5JhZl10DWDn+l
 VoIBpL0KsOjPM283XxSY31gGobT+b3w/kMcPYUUap7qifk9E+uKDm+/Z0qpnmCIRNFvH
 tOGoxuI9kJFsiINMatT2KTToI742hnNJs76lJVVVsLiSWTGvcgPIHT7r835+8D2OfDgN
 V0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Por79pKV7/zxavztiqV46lugG6MuHRsk2OLPtNOwr00=;
 b=Qoay0y6Mkx1iReTRIRZRArds/chHg1VleJHrLYM4YS7P3T89mBchi5caqTkLA91qkU
 599T5XnrZZ8//5dmvZBpVP8+aMhk5CpAqJeMQ4s7v6vPAsdjLgt2Xe1fYadLQTz2lvjY
 D81xhimcpLaHGDwY/GhLYafItbjQi94NWmqB/9AfqRkPly7JWjkdZCETznrzyEY2ablA
 3Ma1esqwSiwFnNkgRCWvuUOuhY6Au0bi/qS4P37eFx7pVTXd/HrkHgsprl4lmESQXvPk
 6yqrMsUEgyr3VP5IPFHdJ37yjm2BOkTe3Ma72e7sv3oy7JxM9WQrUkVqJ2EJwNOoBZOD
 U1sA==
X-Gm-Message-State: APjAAAWCPPMqIbq7/WSFJAbLYGKCUltr4JIb/e6Crvg4bT01cOCk1c4/
 kVqZmsp8Hk7MZ+kgYie9MggMyptaU1JS6Q==
X-Google-Smtp-Source: APXvYqyrkXXaI1IB1/DY7cOW+gtU8daBZ7tetl0LvYq0wD2ambmdsFWR89IJElTcRHHMlfOBhof01A==
X-Received: by 2002:a63:5b07:: with SMTP id p7mr15604104pgb.416.1570773779760; 
 Thu, 10 Oct 2019 23:02:59 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:02:59 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Remove declarations of new typedef in
Date: Fri, 11 Oct 2019 09:02:37 +0300
Message-Id: <cover.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset removes various typedef declarations of new data types
in drivers/staging/octeon/octeon-stubs.h.
The series also changes their old uses with the new declaration
format.

Wambui Karuga (5):
  staging: octeon: remove typedef declaration for cvmx_wqe_t
  staging: octeon: remove typedef declaration for
    cvmx_helper_link_info_t
  staging: octeon: remove typedef declaration for cvmx_fau_reg_32_t
  staging: octeon: remove typedef declartion for
    cvmx_pko_command_word0_t
  staging: octeon: remove typedef declaration for cvmx_fau_op_size_t

 drivers/staging/octeon/ethernet-mdio.c   |  6 +--
 drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
 drivers/staging/octeon/ethernet-rx.c     |  6 +--
 drivers/staging/octeon/ethernet-tx.c     |  4 +-
 drivers/staging/octeon/ethernet.c        |  6 +--
 drivers/staging/octeon/octeon-ethernet.h |  2 +-
 drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
 7 files changed, 43 insertions(+), 41 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
