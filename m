Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7570A1581F8
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:03:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21F2020432;
	Mon, 10 Feb 2020 18:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xfj1oQMmtOt6; Mon, 10 Feb 2020 18:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52C932040E;
	Mon, 10 Feb 2020 18:02:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06EE01BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02BB587884
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPhtDTQ5Yjog for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11F7687874
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a142so10053922oii.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wXC6oc+4UBFWkewyjEg7ayTLhBGjw3S/PawgMMFUDos=;
 b=HcRb3qc8SoQSfQwOHFdR720hQXZkNdYx0zuqlUo8m1qjrPCuQsZ7Ec3ntds3zPqJeF
 z77DvcklM1fUTRz5+q4jvI4YDxHr1nCoeLxyPftg/nhjSFSFFcNMUX2/kLPrEjb8zXdt
 my74VYvFLYPkcqMzgqbFN0yBot1xZTJ28aCh5pOAdKLYJ0o5Vh5HQMnEnkHXwVPzve0l
 Izv9nAn3D9JCGQOyck6h6RhWDeDCOJ61hlggnA5jJ4T/CUlLobZ7Ppdiwhvtj2AzNIYT
 1WDudvP8+RbMKCqKSLWRZADgZh/F1ElhwwYvrSA4rBnGf3pP2AdEcKo69KUhq2/3Rzp2
 qxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=wXC6oc+4UBFWkewyjEg7ayTLhBGjw3S/PawgMMFUDos=;
 b=AyUVq+kMwBoib4xVtssZjWCztSleA9uxXW0RSCLVCMIeMirWlL+9khKAmfWecGdbmK
 OOuIQ7D9nKbNAF3ir09pZTYxnk3FHr4Rak71yiBtAqcXPzZSa5FyKv1LjBHQSyU92Joc
 AaaZE77+/3hkhTN3uVGWUykUIlq7++kbXRhs2UwSNvwRscvBkeUAYi0FtT++94zBLHcx
 5cqM7FMefk4RFkd6NIkMXpvG8Fvn91DjcLkBJr9UDUfLl+gX3X5rqQzQwZn9gr24MDh6
 JaO6+1NVwyf2xh9qN7JcD9z8s/0IBRNt8+johVjxNWfj7nyyK03JYaLFFc0zMOl5DvXD
 55+Q==
X-Gm-Message-State: APjAAAXylMLLzT0+apNvcq2W8s+gkrtZK+qYExzUOx9CekW3zuq/ClVM
 elRJKXXiM8bcPzESmv29VCM=
X-Google-Smtp-Source: APXvYqwV2WStgiD8M3gFwGDUleN4quPrzFwpQ+YwjvtXMKu9A9zuEJhU89Fosiv5UlW/0+BW4TrL7Q==
X-Received: by 2002:aca:45c1:: with SMTP id s184mr187780oia.158.1581357773252; 
 Mon, 10 Feb 2020 10:02:53 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:52 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: rtl8188eu: Fix potential overuse of kernel memory
Date: Mon, 10 Feb 2020 12:02:32 -0600
Message-Id: <20200210180235.21691-4-Larry.Finger@lwfinger.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
References: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
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
 Stable <stable@vger.kernel.org>, Pietro Oliva <pietroliva@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In routine wpa_supplicant_ioctl(), the user-controlled p->length is
checked to be at least the size of struct ieee_param size, but the code
does not detect the case where p->length is greater than the size
of the struct, thus a malicious user could be wasting kernel memory.
Fixes commit a2c60d42d97c ("Add files for new driver - part 16").

Reported by: Pietro Oliva <pietroliva@gmail.com>
Cc: Pietro Oliva <pietroliva@gmail.com>
Cc: Stable <stable@vger.kernel.org>
Fixes commit a2c60d42d97c ("Add files for new driver - part 16").
Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 7d21f5799640..acca3ae8b254 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2009,7 +2009,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 	struct ieee_param *param;
 	uint ret = 0;
 
-	if (p->length < sizeof(struct ieee_param) || !p->pointer) {
+	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
