Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFE43653
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 15:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 36093228BA;
	Thu, 13 Jun 2019 13:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAGLtSt8l+Hz; Thu, 13 Jun 2019 13:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0F2C22836;
	Thu, 13 Jun 2019 13:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21C681BF3C0
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 13:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E97F2261A
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 13:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnVP8fGeHPVZ for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 13:15:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 353462154A
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 13:15:01 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id r15so15044072lfm.11
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 06:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IMHi2S1lxrVF5OO8+rdxLqeH/S1duFekzw5Tc0Z2mvY=;
 b=N4m03+pCMbu9cIv2a7fZuxt+riwezXCHBQP6t+cS21Wl5evRWUUURynTOleWnNYOkE
 dFh5/zk0/W1w5gUkw7QNUWfnuIG3VFrTzVuighoe0AliaSo/dojrdQiIGzIh4e8gMmA+
 q1svNoPQueufLPULap69GDUh55Tvk1tsO7+7yDzwUyFvZ0zuUCdw8FPXPzWlBvDypzyB
 3mHRZQ0gfA06yeWGWX4/6ki5lBx4ckZWjJuATAz5D5bIf+R3SwP1XZSGztwOoZYBjQNf
 lpWTthgmzLzVSEtDx3Zq73HzFBYtyVhmgtqZm0Q2b5h3a4TUHyaEVthAjKaqv1QIt0iX
 JG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IMHi2S1lxrVF5OO8+rdxLqeH/S1duFekzw5Tc0Z2mvY=;
 b=MLo4vs4GRpMTHkhdxxwYaNDEH7IfmuWsTCDHIjGmsfs5w+ckD2K9lQbGTY1WyOkvCy
 vqgOgwiMJa5B0h7Jhio/oy+mAu4Ikii9G4CGX16UBXrh+rnSGmUlEedMwZLl/zMDflAN
 koIPMBzWQimwgqYfmdzw9gFOazSzct6hKf3do7hlHNcrwrZym4KU536Kh/h8yar21r0c
 98+xi3M3UpJO2kyvwHlgb6VZmKjHjNw9RzLcq9Ev6gQHTUPIbdJ55OV2vrzML9mY6Nwz
 UBmOLbMhSU5epJSjrIg7VT0LZbc80x9w7389GW9wccfO+0LViQSIHt1KFd+bRyjThZXd
 gd1g==
X-Gm-Message-State: APjAAAXbWTCgaLWXnlfZM+Ggx0xLEiHmZaeHz2tmhackRWGFesm5fQ/T
 qHe+zXuF7pQBi9dO7RfXhKsEmw==
X-Google-Smtp-Source: APXvYqyUnN8Ootc1IkCIbrd0u7tOoLVkGMuoyGHMwUuFSr18enQTcXeLot9OSgv0O7hjR40xj2oipA==
X-Received: by 2002:ac2:5212:: with SMTP id a18mr38106861lfl.50.1560431699446; 
 Thu, 13 Jun 2019 06:14:59 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id q4sm124563lje.99.2019.06.13.06.14.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 06:14:58 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: remove dead code in core.c
Date: Thu, 13 Jun 2019 15:14:51 +0200
Message-Id: <20190613131451.21661-1-simon@nikanor.nu>
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
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaCB3YXJuaW5nOiAiQ29uc2lkZXIgcmVtb3ZpbmcgdGhlIGNvZGUgZW5j
bG9zZWQgYnkKdGhpcyAjaWYgMCBhbmQgaXRzICNlbmRpZiIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1v
biBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMy
MDAwL2twYzIwMDAvY29yZS5jIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
IGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggNmE1OTk5ZThm
ZjRlLi42MTBlYTU0OWQyNDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2tw
YzIwMDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
CkBAIC0yMjMsMTUgKzIyMyw5IEBAIHN0YXRpYyB2b2lkIHdhaXRfYW5kX3JlYWRfc3NpZChzdHJ1
Y3Qga3AyMDAwX2RldmljZSAqcGNhcmQpCiAKIAlkZXZfbm90aWNlKCZwY2FyZC0+cGRldi0+ZGV2
LCAiU1NJRCBkaWRuJ3Qgc2hvdyB1cCFcbiIpOwogCi0jaWYgMAotCS8vIFRpbWVkIG91dCB3YWl0
aW5nIGZvciB0aGUgU1NJRCB0byBzaG93IHVwLCBqdXN0IHVzZSB0aGUgREROQSBpbnN0ZWFkPwot
CXJlYWRfdmFsID0gcmVhZHEocGNhcmQtPnN5c2luZm9fcmVnc19iYXNlICsgUkVHX0ZQR0FfRERO
QSk7Ci0JcGNhcmQtPnNzaWQgPSByZWFkX3ZhbDsKLSNlbHNlCiAJLy8gVGltZWQgb3V0IHdhaXRp
bmcgZm9yIHRoZSBTU0lEIHRvIHNob3cgdXAsIHN0aWNrIGFsbCB6ZXJvcyBpbiB0aGUKIAkvLyB2
YWx1ZQogCXBjYXJkLT5zc2lkID0gMDsKLSNlbmRpZgogfQogCiBzdGF0aWMgaW50ICByZWFkX3N5
c3RlbV9yZWdzKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCkKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
