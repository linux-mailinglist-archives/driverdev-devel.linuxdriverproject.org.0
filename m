Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 915175F296
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 08:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2019622170;
	Thu,  4 Jul 2019 06:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4s3LVxtJca3; Thu,  4 Jul 2019 06:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9D362047B;
	Thu,  4 Jul 2019 06:08:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B23C1BF340
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 87E672047B
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C44Xq7Muk2Cr for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 06:08:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EBCD2046F
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 06:08:23 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id v18so4894767ljh.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 23:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JBbOD4rj/6MTcJXlkxHvsQxP2TTle1/H3CMZv+6B/V4=;
 b=Lgc0eqQT/R1b7aB33G0Mii0j7RL/EyMCalrdd4T10q3Jjz5O09wz4zBWC98iXtsiop
 EchLcnoTN51L/4mAn4u6U946gxTkqRcbtCDb77/uqaUklg0Gj5UGoi2XVEyEeMePmKgn
 W6o2kyY2vWziIvF1tyT2ONHLwEjhmCI/MKTf6cVumE3fXcylTQR0pvzQrlXhXRwuLLwn
 3zYkmfvRFsZEbb9aJkUvwEgPBMsDqBjyyJBKnP0LYcH8v3xGTEz4hVY7QYbYLnzUrL9W
 EfxVPI2R8Jrg6EMOt5lICmMBVnTW+r3KOBN8pHNt1m0Moci5yWYNqVc3jAPpmnEJtwaM
 wdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JBbOD4rj/6MTcJXlkxHvsQxP2TTle1/H3CMZv+6B/V4=;
 b=fuiDFFh4tprFcLwFleQvnZIp6GNh+ekopc1FwS6lb2YgmDxK9ZKVjPYfaik3LQvQ9u
 D8ZH8pljZkhgoTKwMJxNOJTZ7+jmVkR2OfeD8bnctTlb0v4Fv43xmVfTZtDnz12Zr+/9
 76oFhC6Ttp8om2ZxQiJ65bE4b6LazX4Vf6rTTHWOESjURiEvIEWeH1RJ7UcxVjULG+VP
 Yafmm6eXfeBElHCdd2KMPaM3iRvPuAbgD8MSq3HvYZTxC5tIu7wOfJqVCm6xPC9ALuAs
 rXsQKpljzI9Ly8Q0dRS5FLYFIbjmW/rXTbTw5yvUh31UETILHH/SrHpEEKKTvgM3DLGG
 Pg2A==
X-Gm-Message-State: APjAAAVxC3cPeyjmDXMu0Kz9s2d23pvlRN4QfvulXd7ZRfVPwvfRkg8S
 xBU6mzy+lv4k8CGWTuIElhP9Ig==
X-Google-Smtp-Source: APXvYqzZ6BCDAqrYU1giJPNAZ8lJa99B9+Frb2uYcMzIN2R0XBOUIf9/8i9L44wd6Hw6HZ6yfzXASQ==
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr23606824ljb.211.1562220501712; 
 Wed, 03 Jul 2019 23:08:21 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id b4sm710440lfp.33.2019.07.03.23.08.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 23:08:21 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: kpc2000: simplify comparison to NULL in fileops.c
Date: Thu,  4 Jul 2019 08:08:11 +0200
Message-Id: <20190704060811.10330-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704060811.10330-1-simon@nikanor.nu>
References: <20190704060811.10330-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaCB3YXJuaW5nICJDb21wYXJpc29uIHRvIE5VTEwgY291bGQgYmUgd3Jp
dHRlbiBbLi4uXSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZmlsZW9wcy5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMgYi9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYwppbmRleCA3ZmViMmZkZTBkYjIu
LjQ4Y2E4OGJjNmIwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2Rt
YS9maWxlb3BzLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3Bz
LmMKQEAgLTI0Nyw3ICsyNDcsNyBAQCBpbnQgIGtwY19kbWFfb3BlbihzdHJ1Y3QgaW5vZGUgKmlu
b2RlLCBzdHJ1Y3QgZmlsZSAqZmlscCkKIAlzdHJ1Y3QgZGV2X3ByaXZhdGVfZGF0YSAqcHJpdjsK
IAlzdHJ1Y3Qga3BjX2RtYV9kZXZpY2UgKmxkZXYgPSBrcGNfZG1hX2xvb2t1cF9kZXZpY2UoaW1p
bm9yKGlub2RlKSk7CiAKLQlpZiAobGRldiA9PSBOVUxMKQorCWlmICghbGRldikKIAkJcmV0dXJu
IC1FTk9ERVY7CiAKIAlpZiAoIWF0b21pY19kZWNfYW5kX3Rlc3QoJmxkZXYtPm9wZW5fY291bnQp
KSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
