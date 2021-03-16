Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBFF33DC6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 19:19:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1504A6F6A0;
	Tue, 16 Mar 2021 18:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HdPjeof-GO6H; Tue, 16 Mar 2021 18:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57A8660659;
	Tue, 16 Mar 2021 18:19:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 857481BF95A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 18:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 743D44A061
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 18:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XzNAzbV2_io for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 18:18:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 179114745D
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 18:18:54 +0000 (UTC)
Received: by mail-vs1-xe36.google.com with SMTP id a12so18732098vsd.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJ6aVWc+2DYRFh7JhiecPzBTeIWZ23kP9Ncj0Hgb5u8=;
 b=CA9XXZQczMr3rXVm8yBvfZlviUajE2P9RmYD55v7/5HZmsI9RJLEBNpxUAW69/JdGK
 RcawmblHvKnbl1zWqARjNf/4mP/lbpU0jFfAjK5pr4KlvdqTyiiq2/FWTrVpNTqDjwtX
 lgknb7fqIyR4oX0ns4ibzh1ZyPaKrC9TzOjuKAQ5Wc5bfRgV1Qyjb+Kb6ThpdwAQ8Npx
 ehIfCmGnnpvhMQF9BXMKsu6g39D5DIZ08D47dn8yoPzc/ScwKCghG2wA0GDjOKXl/po9
 Ejv8NJRq667QoNGYOkL4/zJlS/+T74+cFnNTp8HuRI85msPsUVlMH0xF/3fsAMQNK01V
 x4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJ6aVWc+2DYRFh7JhiecPzBTeIWZ23kP9Ncj0Hgb5u8=;
 b=qKADyRexfYp5Jl3md4OsRUJ8Q7UJlpYEDJqIycotvhGudJlvcyC0Un/wRIZuLub4Vx
 aTSLf80EJDAiFEb1ZuwHCyhhdzzEDM3eboQRPvkbRgh2kiSplnq89mmNnfO9WdfWrjgI
 ai/bzPrFh5uQZFkiU6bLLlQOtKN+iJ06J9l98PkMLpFMiGPTdaqvaDL2v41LKctolCI2
 TWX/Aqg3b5L1Lv7nmpQQoZiI+tr6USHz4FBg17NBfj/qRwGNF7jupyznIpnFJeZnD8ES
 lXJIEV1JenR+BuzOu1u9FFNyzbu5313j3ePciDwOSvG+NOdgepPn2QrxC/2dQVSZdLux
 f+eQ==
X-Gm-Message-State: AOAM531d4Hu2LV9EY6ZIVqonE6gh69SZIiIneGtYtuXjI8+eu4Tr/3dR
 c9+2W3xlqslTByvskT9VBUY=
X-Google-Smtp-Source: ABdhPJwgciPyvakkHVWuMsnARvEJ82PmlK7Y6zHc0RvtHYl1jiB55gmIjINAYv5NUEwMeAz94pB/Hg==
X-Received: by 2002:a67:f842:: with SMTP id b2mr482841vsp.21.1615918733944;
 Tue, 16 Mar 2021 11:18:53 -0700 (PDT)
Received: from linuxerio.localdomain ([186.32.194.42])
 by smtp.gmail.com with ESMTPSA id a198sm2527299vka.46.2021.03.16.11.18.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 11:18:53 -0700 (PDT)
From: Edmundo Carmona Antoranz <eantoranz@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org, arnd@arndb.de,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: vt665x: fix alignment constraints
Date: Tue, 16 Mar 2021 12:17:35 -0600
Message-Id: <20210316181736.2553318-1-eantoranz@gmail.com>
X-Mailer: git-send-email 2.30.2
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
Cc: Edmundo Carmona Antoranz <eantoranz@gmail.com>,
 kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UmVtb3ZpbmcgMiBpbnN0YW5jZXMgb2YgYWxpZ25tZW50IHdhcm5pbmdzCgpkcml2ZXJzL3N0YWdp
bmcvdnQ2NjU1L3J4dHguaDoxNTM6MTogd2FybmluZzogYWxpZ25tZW50IDEgb2Yg4oCYc3RydWN0
IHZudF9jdHPigJkgaXMgbGVzcyB0aGFuIDIgWy1XcGFja2VkLW5vdC1hbGlnbmVkXQpkcml2ZXJz
L3N0YWdpbmcvdnQ2NjU1L3J4dHguaDoxNjM6MTogd2FybmluZzogYWxpZ25tZW50IDEgb2Yg4oCY
c3RydWN0IHZudF9jdHNfZmLigJkgaXMgbGVzcyB0aGFuIDIgWy1XcGFja2VkLW5vdC1hbGlnbmVk
XQoKVGhlIHJvb3QgY2F1c2Ugc2VlbXMgdG8gYmUgdGhhdCBfYmVjYXVzZV8gc3RydWN0IGllZWU4
MDIxMV9jdHMgaXMgbWFya2VkIGFzIF9fYWxpZ25lZCgyKSwKdGhpcyByZXF1aXJlcyBhbnkgZW5j
YXBzdWxhdGluZyBzdHJ1Y3QgdG8gYWxzbyBoYXZlIGFuIGFsaWdubWVudCBvZiAyLgoKRml4ZXM6
IDJmYWYxMmM1N2VmZSAoInN0YWdpbmc6IHZ0NjY1eDogZml4IGFsaWdubWVudCBjb25zdHJhaW50
cyIpClNpZ25lZC1vZmYtYnk6IEVkbXVuZG8gQ2FybW9uYSBBbnRvcmFueiA8ZWFudG9yYW56QGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvdnQ2NjU1L3J4dHguaCB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvdnQ2NjU1L3J4dHguaCBiL2RyaXZlcnMvc3RhZ2luZy92dDY2NTUv
cnh0eC5oCmluZGV4IGU3MDYxZDM4MzMwNi4uYzNjMmMxNTY2ODgyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvdnQ2NjU1L3J4dHguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvdnQ2NjU1L3J4
dHguaApAQCAtMTUwLDcgKzE1MCw3IEBAIHN0cnVjdCB2bnRfY3RzIHsKIAl1MTYgcmVzZXJ2ZWQ7
CiAJc3RydWN0IGllZWU4MDIxMV9jdHMgZGF0YTsKIAl1MTYgcmVzZXJ2ZWQyOwotfSBfX3BhY2tl
ZDsKK30gX19wYWNrZWQgX19hbGlnbmVkKDIpOwogCiBzdHJ1Y3Qgdm50X2N0c19mYiB7CiAJc3Ry
dWN0IHZudF9waHlfZmllbGQgYjsKQEAgLTE2MCw3ICsxNjAsNyBAQCBzdHJ1Y3Qgdm50X2N0c19m
YiB7CiAJX19sZTE2IGN0c19kdXJhdGlvbl9iYV9mMTsKIAlzdHJ1Y3QgaWVlZTgwMjExX2N0cyBk
YXRhOwogCXUxNiByZXNlcnZlZDI7Ci19IF9fcGFja2VkOworfSBfX3BhY2tlZCBfX2FsaWduZWQo
Mik7CiAKIHN0cnVjdCB2bnRfdHhfZmlmb19oZWFkIHsKIAl1OCB0eF9rZXlbV0xBTl9LRVlfTEVO
X0NDTVBdOwotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
