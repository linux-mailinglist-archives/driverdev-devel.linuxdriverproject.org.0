Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A7F116AC5
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 11:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77253876B6;
	Mon,  9 Dec 2019 10:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ITGwLmszx15p; Mon,  9 Dec 2019 10:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DF5C87673;
	Mon,  9 Dec 2019 10:19:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D12E1BF31B
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 10:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09433860AD
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 10:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYj84RhxvIfD for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 10:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
 [209.85.161.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C96F385DF5
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 10:19:21 +0000 (UTC)
Received: by mail-yw1-f66.google.com with SMTP id w11so5571433ywj.9
 for <devel@driverdev.osuosl.org>; Mon, 09 Dec 2019 02:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kfJJcbBCtP2J5q6yO63evUfynsnsxLvvCJ773MPUEuA=;
 b=Ma3N+JtK7nruXZYsUdJNld9kFQdW2aBkcD1kjYbGBX9hAa2s7I+IUzxdCECHUvYuGF
 zGpp/tU4+99lnfPkh34QEDnvnCFUxEgiLR6y805/D4WZF9OWa6InE9G2wEjoPmFZfO4m
 mlUu7oC7sv3HtH7XDJl9eyL8N2Ueek0EBBEhk1/Uh/bsvkIRseP/PK4V9QlvS7x0r92R
 7tUfFGLzdq3ERnzyVE/9QhH6wPByphkk/ZPxCYEl7xMY0jAO9AazE+PZLK+TFAnVS2F8
 Op2HpFBJP0oh+v37w0IdOfio2G+AEHz+s2Kn46jjl2T3zHu+b/wvA5ZKE6OyxGLEIIOM
 kQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kfJJcbBCtP2J5q6yO63evUfynsnsxLvvCJ773MPUEuA=;
 b=VlQBJ/fn2JoBU7qop3+F7YGCE6++kM5YtS2em4hIKYRCZVk5Y3qpvJSsP1cA4++fZC
 OhySrWuqnIxyVq5CP372UqIPEFL0sheuyewnVrohEAIiIXKXUxrPvo1Psk70/uiUbzOa
 rfK56wekvWbvRw8YlXdUpBC35hR0zachLPB/x2+pJtg03oGvnXdGPbHOEoK1ZwC0bCb4
 7NFaDBFG6rxVXHLPbyJrcL6ymskjjdGYlJZ30yttIiNk9LO2U/iQuhoFt6cpJp/5yHgc
 eL5vPlt5y22xp+R2DIhSCPMkVKXX/zVYqVfeOxTN32Eem1AiC+l5RaQjScr/Hx1Xx/h2
 KfGw==
X-Gm-Message-State: APjAAAWkhSy0X9EaVOMV7A1j4h6BZiUcPqGV9m0CQJ+rqkWQqfxkEj9C
 3anTTOpvkDCsx2ZFJNimMRg=
X-Google-Smtp-Source: APXvYqybZF5QzKydT/LE1jUr5ytCmmr6NJnb7T7X1akDgzfB6NIg7H27WuB42i7MMYoUAhlqt7QAQA==
X-Received: by 2002:a0d:db49:: with SMTP id d70mr19255094ywe.370.1575886760637; 
 Mon, 09 Dec 2019 02:19:20 -0800 (PST)
Received: from karen ([2604:2d80:d68c:d900:c4d5:fc84:cce:f8b4])
 by smtp.gmail.com with ESMTPSA id p133sm2400557ywb.71.2019.12.09.02.19.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 02:19:20 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: qlge: Fix CamelCase in qlge.h and qlge_dbg.c
Date: Mon,  9 Dec 2019 04:19:08 -0600
Message-Id: <20191209101908.23878-1-schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch addresses CamelCase warnings in qlge.h under struct
mpi_coredump_global_header and mpi_coredump_segment_header. As
well ass addresses CamelCase warnings in qlge_dbg.c when the
structs are used.

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h     | 14 +++++++-------
 drivers/staging/qlge/qlge_dbg.c | 20 ++++++++++----------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 6ec7e3ce3863..57884aac308f 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1627,18 +1627,18 @@ enum {
 #define MPI_COREDUMP_COOKIE 0x5555aaaa
 struct mpi_coredump_global_header {
 	u32	cookie;
-	u8	idString[16];
-	u32	timeLo;
-	u32	timeHi;
-	u32	imageSize;
-	u32	headerSize;
+	u8	id_string[16];
+	u32	time_lo;
+	u32	time_hi;
+	u32	image_size;
+	u32	header_size;
 	u8	info[220];
 };
 
 struct mpi_coredump_segment_header {
 	u32	cookie;
-	u32	segNum;
-	u32	segSize;
+	u32	seg_num;
+	u32	seg_size;
 	u32	extra;
 	u8	description[16];
 };
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 83f34ca43aa4..aac20db565fa 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -702,8 +702,8 @@ static void ql_build_coredump_seg_header(
 {
 	memset(seg_hdr, 0, sizeof(struct mpi_coredump_segment_header));
 	seg_hdr->cookie = MPI_COREDUMP_COOKIE;
-	seg_hdr->segNum = seg_number;
-	seg_hdr->segSize = seg_size;
+	seg_hdr->seg_num = seg_number;
+	seg_hdr->seg_size = seg_size;
 	strncpy(seg_hdr->description, desc, (sizeof(seg_hdr->description)) - 1);
 }
 
@@ -741,12 +741,12 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 	memset(&(mpi_coredump->mpi_global_header), 0,
 	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
-	mpi_coredump->mpi_global_header.headerSize =
+	mpi_coredump->mpi_global_header.header_size =
 		sizeof(struct mpi_coredump_global_header);
-	mpi_coredump->mpi_global_header.imageSize =
+	mpi_coredump->mpi_global_header.image_size =
 		sizeof(struct ql_mpi_coredump);
-	strncpy(mpi_coredump->mpi_global_header.idString, "MPI Coredump",
-		sizeof(mpi_coredump->mpi_global_header.idString));
+	strncpy(mpi_coredump->mpi_global_header.id_string, "MPI Coredump",
+		sizeof(mpi_coredump->mpi_global_header.id_string));
 
 	/* Get generic NIC reg dump */
 	ql_build_coredump_seg_header(&mpi_coredump->nic_regs_seg_hdr,
@@ -1231,12 +1231,12 @@ static void ql_gen_reg_dump(struct ql_adapter *qdev,
 	memset(&(mpi_coredump->mpi_global_header), 0,
 	       sizeof(struct mpi_coredump_global_header));
 	mpi_coredump->mpi_global_header.cookie = MPI_COREDUMP_COOKIE;
-	mpi_coredump->mpi_global_header.headerSize =
+	mpi_coredump->mpi_global_header.header_size =
 		sizeof(struct mpi_coredump_global_header);
-	mpi_coredump->mpi_global_header.imageSize =
+	mpi_coredump->mpi_global_header.image_size =
 		sizeof(struct ql_reg_dump);
-	strncpy(mpi_coredump->mpi_global_header.idString, "MPI Coredump",
-		sizeof(mpi_coredump->mpi_global_header.idString));
+	strncpy(mpi_coredump->mpi_global_header.id_string, "MPI Coredump",
+		sizeof(mpi_coredump->mpi_global_header.id_string));
 
 
 	/* segment 16 */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
