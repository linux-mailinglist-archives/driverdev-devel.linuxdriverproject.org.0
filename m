Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2E02969B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5C3187FE5;
	Fri, 24 May 2019 11:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vR18AhIWLdV; Fri, 24 May 2019 11:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93D7087B3B;
	Fri, 24 May 2019 11:08:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 187271BF30F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 153B087F76
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZt8yjmdnQQu for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:08:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59AC787B3B
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:08:11 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id d8so6817869lfb.8
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7oGIGUHfrIIEjfNNRqGi/2xzPgG8aUQ9pTUobrsjH28=;
 b=HJgoaP5+gqMm1YH+q7FJqO7CYyWFZvR6fT5VeknZR5WabOd9YCcw6uy7CCMgNjU12I
 sqIRsVdfNxCRa551lfgs2tdyX+ykcpsiCQ3AOkBN6qdvoMYvo5vcqqrcUKeBY6LLMbtD
 I9BMtzSylb/k/REGevZWD1kSFsqVrPl1R9oLr/mxW4sU1elKWHwKTGnjZ+/uc34Fl+AH
 vvlHsk9BCM8Co+oACI9pgPe0Rzt/0wCsmxUjYXsIrgYT7pVYEgzuR4FXp3Y4+KOGENEz
 Inb7XROGuVX18DVNSvPrqt2109QBwPfs6UqJf75h/xwOqlli3OozYtFZ3w7iMuBAu14j
 GARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7oGIGUHfrIIEjfNNRqGi/2xzPgG8aUQ9pTUobrsjH28=;
 b=FdIJ6P47oqbTgKExA4ApuJvMMfMfReoFgK69sLuZOpcmCfCB57CT+DkS2zbAfScK9d
 uK+CJLyChKM1/jGrNcyX0dxVgaW3C6+Jf8DBXMplzWv0iaKrAssUK/dm3p8w80aRPr1U
 IqG+6Ua4wQbiUurB0/rhFtsZ/qSYgkCTJLLga0uICHojoig8QWU5hnpAUA12xVpkXGCo
 zcjOAr6/7SNHWVNG30jJZJCEQQfmOXs7ed2a1CqEIZOsLt8F93qN3Glkwq1TjUVu5wIw
 AzPt+PtqBXpaxZSYv3hhPBOFyYA/iZMeeI3qut4qNuCMXfgpYrTgN9L8GLJpFi8oJJ6o
 ++9g==
X-Gm-Message-State: APjAAAX6+GL1dPRyf50nhbpvWHK/DjOjAtjXmv2h1P75B/T5qDeN4x7m
 CW6upa1KxujxL+CFxQFDpGPmVg==
X-Google-Smtp-Source: APXvYqyHVuXmrj3IngkH3jiB9BLpMGMuMwu5ydZM+10r4gXyniq6KO6/Sy3nmq1jgPtonYTFLhqP8Q==
X-Received: by 2002:ac2:419a:: with SMTP id z26mr14250127lfh.122.1558696089232; 
 Fri, 24 May 2019 04:08:09 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x21sm446234ljj.43.2019.05.24.04.08.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:08:08 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] Fix whitespace issues in staging/kpc2000
Date: Fri, 24 May 2019 13:07:58 +0200
Message-Id: <20190524110802.2953-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpUaGVzZSBwYXRjaGVzIGZpeGVzIG1pbm9yIHdoaXRlc3BhY2UgaXNzdWVzIGluIHN0YWdp
bmcva3BjMjAwMC9jb3JlLmMgYXMKcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5wbC4KCi0gU2ltb24K
ClNpbW9uIFNhbmRzdHLDtm0gKDQpOgogIHN0YWdpbmc6IGtwYzIwMDA6IGFkZCBzcGFjZXMgYXJv
dW5kIG9wZXJhdG9ycyBpbiBjb3JlLmMKICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgZXh0cmEg
YmxhbmsgbGluZSBpbiBjb3JlLmMKICBzdGFnaW5nOiBrcGMyMDAwOiBhZGQgbWlzc2luZyBzcGFj
ZXMgaW4gY29yZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIGV4dHJhIHNwYWNlcyBpbiBj
b3JlLmMKCiBkcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYyB8IDMzICsrKysr
KysrKysrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwg
MTcgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
