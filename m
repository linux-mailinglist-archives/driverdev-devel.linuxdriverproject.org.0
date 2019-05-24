Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3879290A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E90E887F76;
	Fri, 24 May 2019 06:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pc133Kfa4hMc; Fri, 24 May 2019 06:00:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C217C87F69;
	Fri, 24 May 2019 06:00:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA8BF1BF3BE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B68E086C9E
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCPOjDeGg_fM for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:00:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3457A86C8F
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:00:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g9so4630950pfo.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 23:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xmWkuG4jWMx5HwzGG7LjcSnzIV8NJErFDTw3zvRqZ+Q=;
 b=TMW6xTQPH1cXrYsBYFEjWou6SN/ARTFeyk422n9y3fNeJ0z/KrnBminyYJZPG0ek7W
 rULFKnulO1Z9iOXL70jVyvU0lqUd2QB/d0QmHXFUITHgRebc0WT6GycFAhnQf2P/ghJV
 YVGxR8+jUDr0FCr8k1Bc3uNQ6eiF027M5hyVabzbk3w0TqEklvRojaCtV/HMs+BgyZ0E
 n8UNj0mxMHncQRiTbaS6D89sICK+ydDtOhpuvKw68wS6JgyWOvgYAX2CPt3uk2C/CakB
 r6c2IPStvwR2mJahhgGWpBhIFQmKuHxLlgSBd/9AX5z4cJbw0Txx42Fws8RD7L4F0qPS
 yiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xmWkuG4jWMx5HwzGG7LjcSnzIV8NJErFDTw3zvRqZ+Q=;
 b=WwalCwb0/6DhcuCr4QJdDHdqDpNDJVkazjlXRmg+Rn+mmD233ma7Olhploc9b3F6N4
 qaGGjUxO8OtdAMLpZYbsy6no/X37AtqNEin4BodesHp57xZHpFhj8yaSTIzuTjSozZ17
 Ofhbk2TaB9SrslG/AWFcrn+A0e22F8INKujqdqqA5+ayjO8ngapuUsRLuXXLW+AmnfLI
 Qj0YgXcVuC7IxoNlCpEbEDTB+Ni40ECoAtggwqf3pWup3EGnTl1yv4fI1BUZ2RB88tS8
 HhWS/EFnYMmasEY3uuF9cl0bAoRhvnWZVa68EtxWV/UABCb3QSaD4kV0Fn1+BpprrXND
 xY/g==
X-Gm-Message-State: APjAAAVzYtH++EMQ/HBbPtwSrNXWst3u5PolezBGVHUsmhIbfY6Mg9nE
 zUNbzUpttzzLnvbhc1aYhVQ=
X-Google-Smtp-Source: APXvYqxXNJ9laQAdHSk2ZdCQdd0iJh/nHXwrpS5GNtFqzMpDXRXdg65pICUW9gDYf2NWfnu5Q2j5cg==
X-Received: by 2002:a63:3d0b:: with SMTP id
 k11mr103413349pga.349.1558677640953; 
 Thu, 23 May 2019 23:00:40 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id 5sm1267426pfh.109.2019.05.23.23.00.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:00:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: gdm724x: Remove initialisation
Date: Fri, 24 May 2019 11:30:25 +0530
Message-Id: <20190524060026.3763-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The initial value of return variable ret, -1, is never used and hence
can be removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3695..d023f83f9097 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -60,7 +60,7 @@ static int request_mac_address(struct lte_udev *udev)
 	struct hci_packet *hci = (struct hci_packet *)buf;
 	struct usb_device *usbdev = udev->usbdev;
 	int actual;
-	int ret = -1;
+	int ret;
 
 	hci->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_GET_INFORMATION);
 	hci->len = gdm_cpu_to_dev16(udev->gdm_ed, 1);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
