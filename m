Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0B31186FC
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 12:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2BAA87BFF;
	Tue, 10 Dec 2019 11:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4R-IbLX+9A+P; Tue, 10 Dec 2019 11:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01C9787C14;
	Tue, 10 Dec 2019 11:48:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 866801BF45A
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CED787C89
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 11:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TsAjqq+AlYYe for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 11:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCE2A87BFF
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 11:48:00 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id n12so13474121lfe.3
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 03:48:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fo/kQPoTgufoLl6OwS4X1boPbPzO5kmha82cPWUC2hI=;
 b=LhugNgu8o92+22bGlUfYqY/JtThBqn7XXQGowTIJIgtzRXlHu4+L8lS48itTqwTmsa
 Zx60cm3qJo3VxLX2ugJWSCdaUfMmRQ4DesjuiqhphzLWKmxLGh8iqqtvGIzl9YSmaybu
 u2yh3K3u9HFthMe5j/ihpK8g8iT/Le97CT6gGJ1txZm4oqGbdAyhKC1g2CXopSwBbm+S
 xkLBdxv9LLxPt3bQDbahlkFr7OfSx7NkHE19L5A+Dl7Zhhp5PbUFzAmCh1+RhpNNVHpp
 oUJ2s4TDBj9XXwxzjOMBYAbbDCux1UbU+9a73viwwkpYPVlZiU6NKr2q3yYvNAGO2+1K
 N6FQ==
X-Gm-Message-State: APjAAAW5EwWX/8br0Lg3VqZtftiy6puFe82P9JyXKSkukB47cfWlHTeX
 qD5KqbsXqhOyiTK8wSanUTE=
X-Google-Smtp-Source: APXvYqxRUBIZ41AnH3QnCgB0Q1gJnSjg59UHuxgq9xRqKYyhr1qDqMrwe00Je2S+QZyu/YP+ZLbnuA==
X-Received: by 2002:ac2:4849:: with SMTP id 9mr18316401lfy.11.1575978478770;
 Tue, 10 Dec 2019 03:47:58 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id e21sm1757836lfc.63.2019.12.10.03.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 03:47:58 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iedzk-0001LN-An; Tue, 10 Dec 2019 12:48:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: fix USB altsetting bugs
Date: Tue, 10 Dec 2019 12:47:49 +0100
Message-Id: <20191210114751.5119-1-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We had quite a few drivers using the first alternate setting instead of
the current one when doing descriptor sanity checks. This is mostly an
issue on kernels with panic_on_warn set due to a WARN() in
usb_submit_urb(), but since we've started backporting such fixes (e.g.
as reported by syzbot), I've marked these for stable as well.

Johan


Johan Hovold (2):
  staging: rtl8188eu: fix interface sanity check
  staging: rtl8712: fix interface sanity check

 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 drivers/staging/rtl8712/usb_intf.c          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
