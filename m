Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A1AE3E38
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 23:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E31F8659B;
	Thu, 24 Oct 2019 21:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQBLn7Nnm3-h; Thu, 24 Oct 2019 21:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E09E285207;
	Thu, 24 Oct 2019 21:31:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 582EE1BF39D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4E43786966
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeMMAXpwTGFD for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 21:31:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEA8886911
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 21:31:40 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id m7so285042lji.2
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 14:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eSQ3m+e1MU4dsQtSCsit4VaAvQDaKTn6EdmojNuKjSc=;
 b=NZ4aahfnXpfmG4v61UhNZ9t7J+0jrG3GJ4nh3YI98GcIV/6jRgCwZR7kYfoeh/+DyC
 pzGSWcOEjKw64BWaRhIV06rtXMgnkHsBYhkGB4ZV7jbBwu901zxcW2IXthWIWqMFJDoe
 Df7iGNVRcg3RY/vJr7gnRUrhhb2R9Px2vMG080yQhwpW1YnwA2nEZ2fkL6P1VEc1rr8V
 XoRJ/TtkT50zq9LCWJCE0KPukh+687r2T/Gux5HHz1Pj0yrkBfso3IwvkscO2awx4ywP
 NByLwLiyAu4RiEnCAPoS4h6dRLLlmQwwxTGs+UbMP/ys0EvEGkbR7IWwk0iw9By6sSJn
 OwYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eSQ3m+e1MU4dsQtSCsit4VaAvQDaKTn6EdmojNuKjSc=;
 b=PvraO4aQCW/jJDYtq8FE1oJtB/v/rmv+jjkecUpJ3plVBOQdmWX5UvcDDXievrDd29
 7yBWVi36dClMI/F4kcHL9qNVEtWcK3WosI9NZh1qA8veI0UIAuHX1q8AUsnGOI1ZlVcq
 TqPHGxVHUsWa50Km5tyBiZv9HoRSv9XpvUYdb/b3356n0TurYMGBE5bmTunMuLvoLNLr
 IAhWuJ8+Wf3ywwZ0mKzOT7z0kG72xutKBfi7xMkniqPx3CRtO1RJ6aX4xfghKOejF5OZ
 rvb00d49gAxH24VzhjXOLsqiSc02peRAonD9QxquQi622GfaUvexpOH+wBIovBj2cpDF
 J0Ag==
X-Gm-Message-State: APjAAAVK+v9nOw6MgrBITYT/EelKeVFczOqBiHSnEhaMPILcI0jwtOsc
 UnH7Vq0w17vWWUc0IZqG6VVTFd6+9Ssc8g==
X-Google-Smtp-Source: APXvYqzC0nwCxdi3VvyO1zohmAjYqJFlsSgakuNgILaQ+FnFsVqoq3/yMLnmQgg55KmRQ8gQrCMblA==
X-Received: by 2002:a2e:4751:: with SMTP id u78mr27323211lja.210.1571952698932; 
 Thu, 24 Oct 2019 14:31:38 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id t8sm20228336ljd.18.2019.10.24.14.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 14:31:38 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: gregkh@linuxfoundation.org, manishc@marvell.com,
 GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH 3/3] Staging: qlge: Rename prefix of a function to qlge
Date: Fri, 25 Oct 2019 00:29:41 +0300
Message-Id: <20191024212941.28149-4-samuil.ivanovbg@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
References: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
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

Function ql_mb_about_fw renamed to
qlge_mb_about_fw and it's clients updated.

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/qlge/qlge.h      | 2 +-
 drivers/staging/qlge/qlge_main.c | 2 +-
 drivers/staging/qlge/qlge_mpi.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index d3f10c95c781..649f1fd10739 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2266,7 +2266,7 @@ int qlge_soft_reset_mpi_risc(struct ql_adapter *qdev);
 int ql_dump_risc_ram_area(struct ql_adapter *qdev, void *buf, u32 ram_addr,
 			  int word_count);
 int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump);
-int ql_mb_about_fw(struct ql_adapter *qdev);
+int qlge_mb_about_fw(struct ql_adapter *qdev);
 int ql_mb_wol_set_magic(struct ql_adapter *qdev, u32 enable_wol);
 int ql_mb_wol_mode(struct ql_adapter *qdev, u32 wol);
 int ql_mb_set_led_cfg(struct ql_adapter *qdev, u32 led_config);
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0c381d91faa6..b8f4f4e5e579 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -880,7 +880,7 @@ static int ql_8000_port_initialize(struct ql_adapter *qdev)
 	 * Get MPI firmware version for driver banner
 	 * and ethool info.
 	 */
-	status = ql_mb_about_fw(qdev);
+	status = qlge_mb_about_fw(qdev);
 	if (status)
 		goto exit;
 	status = ql_mb_get_fw_state(qdev);
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index ccffe0b256fa..092695719c58 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -612,7 +612,7 @@ static int ql_mailbox_command(struct ql_adapter *qdev, struct mbox_params *mbcp)
  * driver banner and for ethtool info.
  * Returns zero on success.
  */
-int ql_mb_about_fw(struct ql_adapter *qdev)
+int qlge_mb_about_fw(struct ql_adapter *qdev)
 {
 	struct mbox_params mbc;
 	struct mbox_params *mbcp = &mbc;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
