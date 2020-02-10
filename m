Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EBD1581EE
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:02:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3666486132;
	Mon, 10 Feb 2020 18:02:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYrf2GJonudl; Mon, 10 Feb 2020 18:02:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26C2B860A2;
	Mon, 10 Feb 2020 18:02:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B1AB1BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 459E9860CE
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqG8M7zG9Obm for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67211860A2
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:45 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a22so10007293oid.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w/Bx0kL+G2z4OIA/a/DkjpZXfuO9hWJS1SYiRIUCguw=;
 b=TScI2P41Yef5dX3dJlPRKzF33TxWqfrtdSYbvcaybWmJg0rZUctc+t69WdXpK4u/5Y
 vNH8h9dh9oe+G0SZI/BC4YRx6IrXZIsnKBnFCbGvFTL6H9k1hS6uI42yvKTNTDcT2qpl
 YWD5OyjU6uX+vpbmc96umwuRT/1nIoB40TcVggIy2Sy/atyexDb75Vdciumf53nBCQoN
 iu8kZsY8gcXR95fYXHUIXeN4L2N/NSVL/FJjAHIZkP1zp+0thSJnFoCthmCSNjGh4aZD
 Zn/lCOQcWUNL112t2Wv/fVLLOSpWqhK81ZJNKwxDynTcimZI1/qwk8vASE2iiL2jMxNN
 ZAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=w/Bx0kL+G2z4OIA/a/DkjpZXfuO9hWJS1SYiRIUCguw=;
 b=Ied4lPzP6n1hrxWPcxtvhPxLS0d+bF+QRXKrhsSd+GiB2l1O+4scgHN/WYI2qEtSGf
 +cj+btLkhGgE+Dt3OE1Qy0EbNLlL82axCXcFhte6lWKUnrqQUq1EU8Gy6Hdbz3tPFMiu
 w5hC0P3b1j/IblkdQlqQTCjC2xLNEXEd+ONyoP+aZXscMu/9WX6Iqj/0nxIOfvcz5zPg
 wkK6z5NS+BL2PrUBkQzWLuBoEI0ZKIY5sOZOusUqUMib6fKdSLIfk3YKNw8awbD2TOi9
 j4DjUMiexh+eHffI5Tl+PE+KKb4lWc+lh9UhgQFccP9kSKV0pRnLjae4eS7fTbodfRkK
 RFFg==
X-Gm-Message-State: APjAAAWs6inEDff0f+KNNPRHadROeRQCVm/FSoW0GKEP0yHbxt39EAnb
 K0OGIw1ujyJRDDAU6PWHbE8=
X-Google-Smtp-Source: APXvYqx2+33w4R1qCWSA9bTv/S7dsaWSdgtgFsVk8NS9hL4k0BXhIziIGOCpKEV9UTk3jYO/zG50Jg==
X-Received: by 2002:aca:514e:: with SMTP id f75mr174684oib.103.1581357764522; 
 Mon, 10 Feb 2020 10:02:44 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:43 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: rtl8188eu and rtl8723bs - some fixes and cleanups
Date: Mon, 10 Feb 2020 12:02:29 -0600
Message-Id: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
X-Mailer: git-send-email 2.25.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "devel @ driverdev . osuosl . org Pietro Oliva" <pietroliva@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It was recently reported that staging drivers rtl8188eu and rtl8723bs
contained a security flaw because a parameter had not been checked.
The following patches fix that flaw and cleans up the routines.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>


Larry Finger (6):
  staging: rtl8188eu: Fix potential security hole
  staging: rtl8723bs: Fix potential security hole
  staging: rtl8188eu: Fix potential overuse of kernel memory
  staging: rtl8723bs: Fix potential overuse of kernel memory
  staging: rtl8188eu: Remove some unneeded goto statements
  staging: rtl8723bs: Remove unneeded goto statements

 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 40 +++++-----------
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 47 +++++--------------
 2 files changed, 24 insertions(+), 63 deletions(-)

-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
