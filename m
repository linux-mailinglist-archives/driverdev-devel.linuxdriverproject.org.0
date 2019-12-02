Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF9B10E72A
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Dec 2019 09:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A36D86A7C;
	Mon,  2 Dec 2019 08:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfU8LSO1pcWz; Mon,  2 Dec 2019 08:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BA80860E1;
	Mon,  2 Dec 2019 08:56:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82B6B1BF2A6
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7EE6286429
 for <devel@linuxdriverproject.org>; Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l6mhPwavEvNh for <devel@linuxdriverproject.org>;
 Mon,  2 Dec 2019 08:56:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9ADB5860E1
 for <devel@driverdev.osuosl.org>; Mon,  2 Dec 2019 08:56:26 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e10so29900372ljj.6
 for <devel@driverdev.osuosl.org>; Mon, 02 Dec 2019 00:56:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WPYFSc6bUgUoA1SV431/QgB8DmyOsppkbdFxHRHEutk=;
 b=nkoLeGqCRDgAigQCUjXDy8re4V13Yyu7m+F79cwF8PJtWvqmtCtcFWjNoRr9SbQCMh
 +AcXPQQyAJ9CtTdOIWG+57mSApJ//z7oU0a4e/mdEq8wmBbskRYM9H+OFR5UoejGz67R
 Y6yP2UrD8AJKbUwzg6sYaOLZ1gAlkAqBuUqPhGMPe8sIucJGqYDr0VLKVlQ21y+WGWfX
 r4ZgEdRGncsnlHJ1z4ynCLHcfr4vuf2sOqaZWDRsg49r0ul49DWEy+rPF3cV8bifuob5
 2pidhRzYjJXU7t578BDYPqU3yN6VdW6poRArErV9+ox80RX1KfzSTshQwe8fJ4FGZXPy
 jY/g==
X-Gm-Message-State: APjAAAVuWdBkuUVWQFvfl6pXLTcDzPca2Xw6OvsaNTE3hISKCvrB1/Cc
 A5MxFU1q/7rqYfMJI9+J4FE=
X-Google-Smtp-Source: APXvYqwcRugcBTfOjDPDPXkeFWaQEM0kotdWM7j0SIiphXnBunGVqGv1pQ+2Y0C3+eqgpWqj2uIkzQ==
X-Received: by 2002:a2e:8e97:: with SMTP id z23mr1641215ljk.125.1575276984811; 
 Mon, 02 Dec 2019 00:56:24 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id l7sm3477674lfc.80.2019.12.02.00.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 00:56:24 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1ibhVL-0003Jx-RD; Mon, 02 Dec 2019 09:56:27 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/3] staging: gigaset: fix crashes on probe
Date: Mon,  2 Dec 2019 09:56:07 +0100
Message-Id: <20191202085610.12719-1-johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Syzbot has been reporting a GPF on probe in the gigaset ISDN driver,
which have since been moved to staging.

The first patch fixes that issue, and the next one fixes a second crash
found during testing.

The third patch addresses a benign warning in USB core which syzbot is
bound to report once the crashes have been fixed.

Johan


Changes in v2
 - use usb_endpoint_is_bulk_out() and friends in patch 3/3, and drop
   patch 4/4 which only renamed an identifier.


Johan Hovold (3):
  staging: gigaset: fix general protection fault on probe
  staging: gigaset: fix illegal free on probe errors
  staging: gigaset: add endpoint-type sanity check

 drivers/staging/isdn/gigaset/usb-gigaset.c | 23 +++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
