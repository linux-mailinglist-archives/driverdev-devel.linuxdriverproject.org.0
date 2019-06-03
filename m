Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E761B33B43
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87E8688DBE;
	Mon,  3 Jun 2019 22:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2ijZpX2iMA6; Mon,  3 Jun 2019 22:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F9DF88DC1;
	Mon,  3 Jun 2019 22:29:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 17FEB1BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10EFF88DB2
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r+8ngo0c2aew for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64F7E88DB4
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:26 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id m15so14834904lfh.4
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lotckpB9JDGufjXUBLNpzfaUpLyROHUdRLX7HI7aSjo=;
 b=S8UE6Nizd9DR8uXXnMt5q1r4wE6I1t7G4f7buUX62EJo0eih0hAsVtTRk0mKmFzfQ3
 HfjRZbzI2Ynb0aBuOXbc4Rt03bBQWwdiB+kdES2Q3KQIjZv968Dh7ao9wcqb1VaOmRE4
 ZxOTbnoLY+ck3z/4Un2wRdJ4NQLOQFPuwZAIjDRA8GD61qCDuc5ko789/nt3LwJ28X3x
 a9frEiz+0ISc4yoFKg6JUiIATQtoiVASMrxPbThkGyL3IXq+XWx+ZmR0UUeQrLHi/jCr
 Ca6WgrCiQoE9OpDQVWYaPQwPqh50EY3Myk1ZlX30fVScJzJP1PXMy2s5CY3OlyYNRJnq
 fa+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lotckpB9JDGufjXUBLNpzfaUpLyROHUdRLX7HI7aSjo=;
 b=JNTGRQiB1Fdz5t8tqELcDvjZTvXbjpg+LPdFR3eXesiJh6e/hm8oXIoHnJUk8FShwO
 rIWjQ7S1NXQa0gAnJludW/bQ2K3fHC3YOGCM3whd6xqrxH+pn12o372lBtKZisllP0bB
 Q6R+vWdlEcQUmuROBXOJi8Gvg2b7FyYc6UbqNoQc0EHCZvJlcUa31ZRE4D/+FbBTnii3
 Ak9eE93Et9p5ZQsv1R/0B/7UpDAWXHkhaF3MIUnbNXBgHDDsI3yIcvHrn7BgfiSW9dkB
 9EgOmWuGEWXqVW8C4DIBoromjdMTZGCfWvvoUfmgNKMZ8L9mkzdsOFm6uiDI1IzNzTTG
 8E+w==
X-Gm-Message-State: APjAAAUTANATKCAB+FBEEswDrVZ6Wzm5uHtO4WbUOClBSd1p0e3TMWMs
 eJ99UR1QBDnQGSWqlI3roa8J3xXctVU3tA==
X-Google-Smtp-Source: APXvYqx9D4P502pEavHEC5T/D/rR+M+a8fR1JlW21qowintKJw4j7HJM4AshcFS+rtThQEwqGAYS8A==
X-Received: by 2002:ac2:4209:: with SMTP id y9mr14221333lfh.83.1559600964953; 
 Mon, 03 Jun 2019 15:29:24 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:24 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/7] staging: kpc2000: remove unnecessary include in core.c
Date: Tue,  4 Jun 2019 00:29:14 +0200
Message-Id: <20190603222916.20698-6-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603222916.20698-1-simon@nikanor.nu>
References: <20190603222916.20698-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJVc2UgI2luY2x1ZGUgPGxpbnV4L2lvLmg+IGlu
c3RlYWQgb2YKPGFzbS9pby5oPiIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxz
aW1vbkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29y
ZS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggNmQ0ZmMxZjM3YzlmLi4zZjE3NTY2YTlkMDMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC0xMiw3ICsxMiw2IEBACiAj
aW5jbHVkZSA8bGludXgvY2Rldi5oPgogI2luY2x1ZGUgPGxpbnV4L3J3c2VtLmg+CiAjaW5jbHVk
ZSA8bGludXgvdWFjY2Vzcy5oPgotI2luY2x1ZGUgPGFzbS9pby5oPgogI2luY2x1ZGUgPGxpbnV4
L2lvLmg+CiAjaW5jbHVkZSA8bGludXgvbWZkL2NvcmUuaD4KICNpbmNsdWRlIDxsaW51eC9wbGF0
Zm9ybV9kZXZpY2UuaD4KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
