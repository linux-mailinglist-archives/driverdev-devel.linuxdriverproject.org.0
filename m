Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860C3E3E31
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 23:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45A618835E;
	Thu, 24 Oct 2019 21:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I1sjRb7C3pHA; Thu, 24 Oct 2019 21:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DE1288246;
	Thu, 24 Oct 2019 21:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBCB81BF39D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8A1B868F5
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zx2uNmUpI_O1 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 21:31:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37D3D868EF
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 21:31:11 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id b20so97409lfp.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 14:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7Cs/9h6BQ5mr2xE5m4o+dl0v2QuQDBi9AGTiyIMVXlk=;
 b=X1XLD7ZVi/THIIQkm1GcpS3OiEV7oKkA+F0+6w2sHQDACDKhUNVeAUdcs1NHCF3Ikb
 nx9AXF8zig99Fz4BpkOQjJ8C1U2vLl16dVJIedjutjhjITpJgllU3YyZZFVZg/hRaiVh
 hUu66W/9tXCNwmtnD1RBxXIy7jQ7gZ9Mt2RbHzeHRx4Gi+gVQDvzguLm5IiRcHNJna06
 Qyzi1N0Hh9AVPjVVakFXwLZN953tr4RIUBS4F4ul0F/66RrunIRTW/DkRWDQTwbdlDzb
 inTz4fPxTeq6gR0735Y51aVj5VB2EQT8nzrvJNXQ0+0YZegrYX3YfaRoC1fzY0Kk1LiW
 dgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7Cs/9h6BQ5mr2xE5m4o+dl0v2QuQDBi9AGTiyIMVXlk=;
 b=MUSChM6IYkxOlsCt+wH+CTFI0uExb5wTVIQpyl40QKIMWeL4qGnk5ZAY58Y7C3e8GA
 awwApDJDDjEdewR5GrY4DS6oWetl5kSdz/kU3J05CdXtciKGGntLQRjNMKLV9bJVedSa
 Eh3A9b+hb0Fn6JMEcmVSiJdBL8S9NScK1AtIB9eVwRcQSNBaxRYOOcsNtEguCZYYhAu0
 h0Qf2wemIlg2bKbZbAj8SEJigXszM4VrqR8S4oisIYf3peaouzC5axC4KsJ+4iKMAWw5
 Nh0yrwI3Guh9avcRnFGfUIx5PCRJrMbx6oSdQIKKBBmLzMPi+DzAwGPI7842U8T5alUM
 KRuw==
X-Gm-Message-State: APjAAAXCgxdmT4VzQYUIsBBYjR8e7KeLYpCWt8ABxGc6AhcjnOhsLBlE
 5vCSoKAUoIjf4aKEvyoo+5E=
X-Google-Smtp-Source: APXvYqz05umLa5MdbaOtFs2aXzGdOkSIoNg8smJyfE5Mzi2SvITTtJHnKyfu1y/butNtKpGnC94/PQ==
X-Received: by 2002:a19:3fcd:: with SMTP id m196mr207783lfa.118.1571952669248; 
 Thu, 24 Oct 2019 14:31:09 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id t8sm20228336ljd.18.2019.10.24.14.31.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 14:31:08 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: gregkh@linuxfoundation.org, manishc@marvell.com,
 GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH 0/3] Staging: qlge: Rename of function prefix ql_ to qlge_
Date: Fri, 25 Oct 2019 00:29:38 +0300
Message-Id: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In terms of namespace, the driver uses either qlge_, ql_ (used by
other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
prefix.

So I renamed three functions to the prefered namespace "qlge",
and updated the occurrences in the driver.

Samuil Ivanov (3):
  Staging: qlge: Rename prefix of a function to qlge
  Staging: qlge: Rename prefix of a function to qlge
  Staging: qlge: Rename prefix of a function to qlge

 drivers/staging/qlge/qlge.h      |  6 +++---
 drivers/staging/qlge/qlge_dbg.c  |  4 ++--
 drivers/staging/qlge/qlge_main.c |  2 +-
 drivers/staging/qlge/qlge_mpi.c  | 12 ++++++------
 4 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
