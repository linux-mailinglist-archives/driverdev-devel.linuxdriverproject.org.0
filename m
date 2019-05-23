Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD927D3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 177A286AE1;
	Thu, 23 May 2019 12:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 65uM1BQRpaN4; Thu, 23 May 2019 12:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73E0486AB7;
	Thu, 23 May 2019 12:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C887B1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C5EE43137E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5eRqqm76Djg for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:51:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E157923086
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:51:48 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id m15so3694234lfh.4
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UMmk2xMTkCY6jSkcBGDN9/7ybK/nNloRLyRDYt7L/zc=;
 b=1bLiW/1HiRaBIAhNe0+QhlOl10V76Cwy0MtDym3GfT7ezxhkD3yxuVpPi5SuTcfx24
 g5f2JIaRPF1eBXx18xyV1sweXJsOIdRY+sVf6p12eBP6ksnBE4LD2QvMr2XooOApvIlB
 XnpQkQbPH/UCtw1bQgjGuP4Q1RxniC7rw0d2HaajRQsfuWKMQXiT5mBuT/VIR5OQJ762
 +yFvPIz7PCaAwY9tjJPicuIhViTgzPNBRsyucrxqQTNa4WEmXDegex66omgDXV/uCe6k
 rXtno4qygE5dj8TDqFhQsl1SYGQmJ/VrBIKzvUzyeEBBLm/sl0rdkiWCaCu63h/+Awbj
 glaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UMmk2xMTkCY6jSkcBGDN9/7ybK/nNloRLyRDYt7L/zc=;
 b=r6pfx3cBLBHb1AmYzPVz7Eda0nMZ/QkBeqpJEetRIEt29ip0vjv54TB02l9yb6BmyT
 2hzjsGL872LwItnjXXBZP32T5Qc6Xtysy6I0ndYiUaLf8FSVUI3nxJulYbHgdBTkRp7O
 0DwpH3urY7hOy/3pABRLnbtCnWSeB3EnqGdke3T1XvAKFmRYFE468yt9R93v0bFSi6Va
 r1umC2d3f+bUtHLnWFwosTyQpIJ+d38XeG+sj+tFWfUY2xhY05EHwr7ebsWVCOzQfi40
 AaCz0UM8QrXKc8EIRdvefvi4Wmc5KSAuI+C49cWgXcPAbmDX4FS5TrcFHWRcX3Mibr1D
 QwBA==
X-Gm-Message-State: APjAAAVklyh4GG/nDqrFZIPXXI5/CilDBCkaMIbQzuvDhjcEA7P6jueX
 XDwcOFBSxqmHoLqLG1xSISpiow==
X-Google-Smtp-Source: APXvYqxX0coEjY0024D4lKShz2OT4M6tyAKuuaaCNpO4kCc/n+27WtPuyWYJ7VqM0dqV2Z1SUYdELg==
X-Received: by 2002:ac2:4c36:: with SMTP id u22mr2113982lfq.33.1558615906558; 
 Thu, 23 May 2019 05:51:46 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id c19sm5947154lfi.69.2019.05.23.05.51.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:51:45 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/9] Fix more coding style issues in staging/kpc2000
Date: Thu, 23 May 2019 14:51:34 +0200
Message-Id: <20190523125143.32511-1-simon@nikanor.nu>
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
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpUaGVzZSBwYXRjaGVzIGZpeGVzIGEgZmV3IG1vcmUgbWlub3IgY29kaW5nIHN0eWxlIGlz
c3VlcyBmb3VuZCBpbgpzdGFnaW5nL2twYzIwMDAvY2VsbF9wcm9iZS5jLiBUaGVyZSBhcmUgb25s
eSB0d28gbW9yZSB0eXBlcyBvZgpjaGVja3BhdGNoLnBsIHdhcm5pbmdzIGxlZnQgaW4gdGhpcyBm
aWxlIHdpdGggdGhlc2UgcGF0Y2hlcyBhcHBsaWVkOgoibGluZSBvdmVyIDgwIGNoYXJhY3RlcnMi
IGFuZCAiTWFjcm8gYXJndW1lbnQgcmV1c2UiLgoKQ2hhbmdlZCBpbiB2MjogZG9uJ3QgYm90aGVy
IGZpeGluZyB0aGUgX19mdW5jX18gdXNhZ2UgaW4gdGhlIG91dCBvZgogICAgICAgICAgICAgICBt
ZW1vcnkgZGVidWcgbWVzc2FnZSwgaW5zdGVhZCBhZGQgYSBwYXRjaCB0aGF0IHJlbW92ZXMKICAg
ICAgICAgICAgICAgaXQgY29tcGxldGVseS4KCi0gU2ltb24KClNpbW9uIFNhbmRzdHLDtm0gKDkp
OgogIHN0YWdpbmc6IGtwYzIwMDA6IGFkZCBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwog
IHN0YWdpbmc6IGtwYzIwMDA6IHVzZSBfX2Z1bmNfXyBpbiBkZWJ1ZyBtZXNzYWdlcwogIHN0YWdp
bmc6IGtwYzIwMDA6IGFkZCBtaXNzaW5nIGFzdGVyaXNrIGluIGNvbW1lbnQKICBzdGFnaW5nOiBr
cGMyMDAwOiBmaXggYWxpZ25tZW50IGlzc3VlcyBpbiBjZWxsX3Byb2JlLmMKICBzdGFnaW5nOiBr
cGMyMDAwOiByZW1vdmUgZXh0cmEgYmxhbmsgbGluZXMgaW4gY2VsbF9wcm9iZS5jCiAgc3RhZ2lu
Zzoga3BjMjAwMDogdXNlIGt6YWxsb2Moc2l6ZW9mKHZhcikuLi4pIGluIGNlbGxfcHJvYmUuYwog
IHN0YWdpbmc6IGtwYzIwMDA6IHJlbW92ZSB1bm5lY2Vzc2FyeSBicmFjZXMgaW4gY2VsbF9wcm9i
ZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IGluY2x1ZGUgaW4gY2Vs
bF9wcm9iZS5jCiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IG9vbSBtZXNz
YWdlCgogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgfCA4MSAr
KysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDQz
IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
