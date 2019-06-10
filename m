Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C3E3B111
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFC4986D2D;
	Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zpr8PyhlNdbY; Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F6FB859C9;
	Mon, 10 Jun 2019 08:44:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 941E61BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 908A284B91
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaJsfosprG7K for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4DE484A33
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:50 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id b11so6023139lfa.5
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xiOomN8ncLqLA/h78gWk8goAIoMFhfSzrcxxROAHNlw=;
 b=gXLc5ArDB8RPgrEk/Jd8N+pjJHoSUH2PJMybar0YONDntHf2WpIAijMyMLo5MFX4gL
 PA/1RzIkFGq8pLfKnJYQcshyTaHhVOK3hdVaIPM1zaLNGQFS73MdqWXX2u/bf03UcQkT
 AU25UQWm8a2jX6LidJDvR5EPSvgdLA7i/eadYH5nhrQD4mFbh9H95UQnyKufzAOGHIrK
 auJZxRoDMfkaM5TidlbFxYMosAuuB6NXw4wW1gwT2hqm5SMkwm79bPwIIadykKigbHIi
 nOsQAc/9PG348frP4jY2BWB9sf+g0LU1x/cHfqH49ydNRvjeS3JGPyfsyatEPc3qcY9z
 gy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xiOomN8ncLqLA/h78gWk8goAIoMFhfSzrcxxROAHNlw=;
 b=DSjq2oZdunQvjDrY401Vw0+clZ/HixdIEicrziMBbqsqBg7g4r8CVcxBaTQ9+JDs1g
 v0RR9sIs7358oT255WmQgE0u83Oh1XGwiCfrFaH1TMxj99J1PHOXSpm97gPue7X1HhLz
 XV4MxjFvCV6blJe64V4VYKw31GUZErfgb+Cf3cAXu+lQT2CHy1iRk8whctUwkCvhkMj7
 GyoYWu1h4fSMaIi9Y7QlNghlXsUaPM79mxWOcP7/2c7CQhvRK3wwvsZgDgBGfL7rNM1i
 agtXbhdPoQ4gmiOUuMhvndFXaa0gvtbtxCMG1f6+UD92Cw4FEBrLaX9X9V0asY7+UweQ
 H9jg==
X-Gm-Message-State: APjAAAUpQuDIVETDZU//B6oqgzMkEFMrz6bXFHgPJKB7GIQpdopDVYD6
 V5wf6j4xlmfSrw59omlOm0TgZg==
X-Google-Smtp-Source: APXvYqyZSlbnytSQkmm6Jlms/NI1ecWIJrJDLKJPGWFjX1SaV4FKH8IfBTurzQbygYJ8SAHg1k3dyA==
X-Received: by 2002:a19:c142:: with SMTP id r63mr36601429lff.49.1560156288925; 
 Mon, 10 Jun 2019 01:44:48 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:48 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/5] staging: kpc2000: remove unnecessary debug prints
Date: Mon, 10 Jun 2019 10:44:27 +0200
Message-Id: <20190610084432.12597-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>, =simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlc2UgcGF0Y2hlcyByZW1vdmVzIHVubmVjZXNzYXJ5IGRlYnVnIHByaW50cyBpbiBzdGFnaW5n
L2twYzIwMDAuCkRlYnVnIHByaW50cyB0aGF0IGp1c3QgaW5mb3JtcyBhYm91dCBmdW5jdGlvbiBl
bnRyeSBvciBleGl0IGNhbiBiZQpyZW1vdmVkIGFzIGZ0cmFjZSBjYW4gYmUgdXNlZCB0byBnZXQg
dGhpcyBpbmZvcm1hdGlvbi4KClNpbW9uIFNhbmRzdHLDtm0gKDUpOgogIHN0YWdpbmc6IGtwYzIw
MDA6IHJlbW92ZSB1bm5lY2Vzc2FyeSBkZWJ1ZyBwcmludHMgaW4gY2VsbF9wcm9iZS5jCiAgc3Rh
Z2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IGRlYnVnIHByaW50cyBpbiBjb3JlLmMK
ICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgdW5uZWNlc3NhcnkgZGVidWcgcHJpbnRzIGluIGRt
YS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IGRlYnVnIHByaW50cyBp
biBmaWxlb3BzLmMKICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgdW5uZWNlc3NhcnkgZGVidWcg
cHJpbnRzIGluIGtwY19kbWFfZHJpdmVyLmMKCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMy
MDAwL2NlbGxfcHJvYmUuYyAgICB8ICA1IC0tLS0tCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NvcmUuYyAgICAgICAgICB8ICA2IC0tLS0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIw
MDAva3BjX2RtYS9kbWEuYyAgICAgICAgICAgfCAgNCAtLS0tCiBkcml2ZXJzL3N0YWdpbmcva3Bj
MjAwMC9rcGNfZG1hL2ZpbGVvcHMuYyAgICAgICB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tCiAuLi4v
c3RhZ2luZy9rcGMyMDAwL2twY19kbWEva3BjX2RtYV9kcml2ZXIuYyAgICB8ICA0IC0tLS0KIDUg
ZmlsZXMgY2hhbmdlZCwgMzYgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
