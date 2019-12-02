Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A11A10E72B
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 09:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E73A88763;
	Mon,  2 Dec 2019 08:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3v8KeOK6Wl9; Mon,  2 Dec 2019 08:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59BF18871E;
	Mon,  2 Dec 2019 08:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF6F1BF2A6
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10B978871E
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XA2um7OZxr0C for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 325C2886BD
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id a17so27242634lfi.13
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 00:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZWtVf6zhlqG1yD0jYizMqYkj60ZxzCRmOI8BvxjssGc=;
 b=f2Hr8VprIEtWmxYINIOAcZu2MpYkTmiCs+KyOnaYSNooJA8xOJrCAteMLZ5RRebFZt
 AyuaOYHVt7U9jjkoWL2XnYsuRgtAHTAn85Y7wsa9GJ0wniP9ZRMScXeZf4YrkItaRFtP
 myLO/g+d64/qb/D+x1fDCDTzvsH6VwdffiEMB088jKjjfgd/+MnW2JrIt58AEy7W81bU
 RkOenxlmUPHrNJTq+FpDdMf/lxRb0nS4GteCIZ0RkkwK6Z82E9OJy0l1M6qV6PAqnlMD
 eB2QMScwNy4GJ61rvyipszDTVzfhbs2LTskUrMsBNgZQWZZv/+bXdxdK9A8h7y8+jvkO
 +PTA==
X-Gm-Message-State: APjAAAVNnk1yccF7zr8Eurp5OtB3Z46xtljUfT9aeGH+mC7H+XmDnN39
 TPF7RvYESjG3xgWyMmI/w4Q=
X-Google-Smtp-Source: APXvYqzREhhsAsgIzm5+gICb1rmMGnTb0RIdOXajU5DczHtNjJXi1ShKoCA4u5fHEgNMs5CaTblt0w==
X-Received: by 2002:a19:7611:: with SMTP id c17mr733011lff.86.1575276985398;
 Mon, 02 Dec 2019 00:56:25 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id c27sm4403154lfh.62.2019.12.02.00.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 00:56:24 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1ibhVL-0003K0-VP; Mon, 02 Dec 2019 09:56:27 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/3] staging: gigaset: fix general protection fault on probe
Date: Mon,  2 Dec 2019 09:56:08 +0100
Message-Id: <20191202085610.12719-2-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202085610.12719-1-johan@kernel.org>
References: <20191202085610.12719-1-johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable <stable@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Tilman Schmidt <tilman@imap.cc>,
 Hansjoerg Lipp <hjlipp@web.de>,
 syzbot+35b1c403a14f5c89eba7@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a general protection fault when accessing the endpoint descriptors
which could be triggered by a malicious device due to missing sanity
checks on the number of endpoints.

Reported-by: syzbot+35b1c403a14f5c89eba7@syzkaller.appspotmail.com
Fixes: 07dc1f9f2f80 ("[PATCH] isdn4linux: Siemens Gigaset drivers - M105 USB DECT adapter")
Cc: stable <stable@vger.kernel.org>     # 2.6.17
Cc: Hansjoerg Lipp <hjlipp@web.de>
Cc: Tilman Schmidt <tilman@imap.cc>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/isdn/gigaset/usb-gigaset.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/isdn/gigaset/usb-gigaset.c b/drivers/staging/isdn/gigaset/usb-gigaset.c
index 1b9b43659bdf..5e393e7dde45 100644
--- a/drivers/staging/isdn/gigaset/usb-gigaset.c
+++ b/drivers/staging/isdn/gigaset/usb-gigaset.c
@@ -685,6 +685,11 @@ static int gigaset_probe(struct usb_interface *interface,
 		return -ENODEV;
 	}
 
+	if (hostif->desc.bNumEndpoints < 2) {
+		dev_err(&interface->dev, "missing endpoints\n");
+		return -ENODEV;
+	}
+
 	dev_info(&udev->dev, "%s: Device matched ... !\n", __func__);
 
 	/* allocate memory for our device state and initialize it */
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
