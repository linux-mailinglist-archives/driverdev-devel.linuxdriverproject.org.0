Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7865E1A74D1
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 09:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84C7F878AF;
	Tue, 14 Apr 2020 07:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWJmtZJq1vze; Tue, 14 Apr 2020 07:30:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0F368753F;
	Tue, 14 Apr 2020 07:30:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCD421BF30B
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 07:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D97648753F
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 07:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YAQHVLkaImzj for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 07:30:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0020587397
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 07:30:50 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a81so12749802wmf.5
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 00:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Rwt7p9rV0ZpScS3OX0rGuyv3x/Zc5Fmy91OFilUZ1Y=;
 b=QWhgMvQbdUrtrel97IpCVi+K+iGufbSjnOoA6HrP+kHc7QLpRClgyLZPt/To2X1zLD
 zGwi7s7p30TVDfrGjxYXVA5WRFotAT2cgStakuBB5AvgCMtB/TQdUiIXnNZvcKT8p7XL
 EZ0L/ZNkOV618PvidBgSPyXtklufOJ/WK2MRpHnzHLCKIapm0o8+VM9z2JtFUT3CtqE7
 5/cmytS2jTxz8sa1YnDlC50zOH4qOmDsqM+ss1rQq05M5tqsOTzMQuL2KC3bhil0ocCx
 G0A9XlRrVG/OE/hUtszlsyfRtUikc9wa540m+78690soPnF2DD4wrAUKSQCzONBW5CXF
 6pbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Rwt7p9rV0ZpScS3OX0rGuyv3x/Zc5Fmy91OFilUZ1Y=;
 b=FZtovuYQkAo6fnCUh1H3xDOo4clIkRoO4/T4lqfLCEbgk2zb/i5rZrnyok6erHwjB5
 r0Y+lHLo+5cxzKZql7pBREecXLGMNZ+wEydgC2bjUQTJaNpA/UuqUxNWw86p5KP4AZpi
 Dk45jvB+Ln34OEEZeWTp1qX3s81LU+tcexdXHdm47wGamG6CNr05ldZf/vnPqBnTckBG
 i8El2fvgc0AfbcvBC+mx+8NAOYFdpWBSFbiRLK9p2VbtyrPTjf8rpfj5hDVJuvOQYZ9d
 b7HUFAlbrkaDeZMi0zql/0rYv6JJwUZNC4IYplU3zmvb8DO5snEGToQSHmunyAWWG+kF
 WFVg==
X-Gm-Message-State: AGi0PubdzWYJhhyDdv9FNL4oTrudnC8FbymCZf18/Z1ghVLbXYF0vxNP
 /GuUDApn8lE0PY0mVwFtqho=
X-Google-Smtp-Source: APiQypIR5EPu+VhS8tNtQUnOjVREATqTvrressnlxnmBB29KUQZb99svQvmsU19ioztDuD9CYUCwKg==
X-Received: by 2002:a1c:4186:: with SMTP id o128mr2448247wma.21.1586849449238; 
 Tue, 14 Apr 2020 00:30:49 -0700 (PDT)
Received: from localhost.localdomain ([31.4.236.74])
 by smtp.gmail.com with ESMTPSA id g74sm17755486wme.44.2020.04.14.00.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 00:30:48 -0700 (PDT)
From: carlosteniswarrior@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: fbtft : fbtft-bus: fixed two checkpatch errors
Date: Tue, 14 Apr 2020 09:30:47 +0200
Message-Id: <20200414073047.2757-1-carlosteniswarrior@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: linux@jaseg.net, devel@driverdev.osuosl.org,
 =?UTF-8?q?Carlos=20Guerrero=20=C3=81lvarez?=
 <carlosteniswarrior@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogQ2FybG9zIEd1ZXJyZXJvIMOBbHZhcmV6IDxjYXJsb3N0ZW5pc3dhcnJpb3JAZ21haWwu
Y29tPgoKRml4ZWQgdHdvIGNoZWNrcGF0Y2ggc3BhY2UgcHJvaGliaXRlZCBiZWZvcmUgdGhhdCBj
bG9zZSBwYXJlbnRoZXNpcyBlcnJvcnMuCgpTaWduZWQtb2ZmLWJ5OiBDYXJsb3MgR3VlcnJlcm8g
w4FsdmFyZXogPGNhcmxvc3Rlbmlzd2FycmlvckBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9zdGFn
aW5nL2ZidGZ0L2ZidGZ0LWJ1cy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9mYnRm
dC9mYnRmdC1idXMuYyBiL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1idXMuYwppbmRleCA2
M2M2NWRkNjdiMTcuLmNkYjQ1MWRkM2ZkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2Zi
dGZ0L2ZidGZ0LWJ1cy5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1idXMuYwpA
QCAtNjIsOSArNjIsOSBAQCBvdXQ6CQkJCQkJCQkJICAgICAgXAogfSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXAogRVhQT1JUX1NZTUJPTChmdW5jKTsKIAotZGVmaW5lX2ZidGZ0X3dyaXRlX3JlZyhmYnRm
dF93cml0ZV9yZWc4X2J1czgsIHU4LCB1OCwgKQorZGVmaW5lX2ZidGZ0X3dyaXRlX3JlZyhmYnRm
dF93cml0ZV9yZWc4X2J1czgsIHU4LCB1OCwpCiBkZWZpbmVfZmJ0ZnRfd3JpdGVfcmVnKGZidGZ0
X3dyaXRlX3JlZzE2X2J1czgsIF9fYmUxNiwgdTE2LCBjcHVfdG9fYmUxNikKLWRlZmluZV9mYnRm
dF93cml0ZV9yZWcoZmJ0ZnRfd3JpdGVfcmVnMTZfYnVzMTYsIHUxNiwgdTE2LCApCitkZWZpbmVf
ZmJ0ZnRfd3JpdGVfcmVnKGZidGZ0X3dyaXRlX3JlZzE2X2J1czE2LCB1MTYsIHUxNiwpCiAKIHZv
aWQgZmJ0ZnRfd3JpdGVfcmVnOF9idXM5KHN0cnVjdCBmYnRmdF9wYXIgKnBhciwgaW50IGxlbiwg
Li4uKQogewotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
