Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE006315DEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 04:46:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1A3A85FC9;
	Wed, 10 Feb 2021 03:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DK--o7XIwN55; Wed, 10 Feb 2021 03:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7BEE85624;
	Wed, 10 Feb 2021 03:46:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2331C1BF973
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 03:46:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F8A38681C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 03:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bg2gU-WxIWf1 for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 03:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 82AB4867DA
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 03:46:30 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id t63so488107qkc.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 19:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XCL608888xI21CZ+Cc5Dfc0mFqx0sZ/adP+mXo0osYM=;
 b=gjichQiW9DLCgeVHOm5q57W6CmsdQ8Z7LQNp9k6kKlr+LMtVQ7PXVHlUcFGuvZpKWL
 uUY8nFpovfqU+zrdyJ+hdTTWlYmlBIdxhR4Eptfc8CPYL4PWhSRvKA50AfkRIV6no35Z
 uPhUokODsKugTcoU0pT+pV+vjAsHn9qvgkBYNPwKErISDF22ZRz6w5chvuBYZ/XJ8qQX
 djcV0Ox8DvQ6q1pfsJc6t8G8ZW978ShvjgWKzTSDBeInk/2gTu65BLtiPve3aU5XmWfO
 L4B4JNvoewasAGoaKIKijdeGgLJuH38xK8Nhf03vaigZdmX7aOHkpTLHACGoZqwTJ/W/
 Gv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XCL608888xI21CZ+Cc5Dfc0mFqx0sZ/adP+mXo0osYM=;
 b=MXNtZArokyQnwE5rFs5vfcZDM378rx3OfX504ltQbF5Yzk02eVfGdjLKGKQ25epeoF
 3wX6CURCF1Ro8/gXwti9h+qRhE/z3/7jDb8MIHWcz5i04JpAOh7ssgXvRlXPP/0HajbH
 OQAwfaWPWLebdoyNKISPD6AL4Shn4S1052n932P3d9v26EqjWfl++oBJDSJKNSPRZn3t
 HQCRykTvnQK9AOVfp9IW4J7ndrOm0hMNeuASf2Ps0vqMrkVMDk7XWjL7RFG3v1Pl1SZ/
 9/jPeyybNkJGPDaywIwb45GGOu1upvtnxSEc4NtDHkEv98PSqQK9KKe5jUOhI/Xyv3go
 lH/Q==
X-Gm-Message-State: AOAM531qCwgM2yjruZX1WHedcobB251Fxulfj7NBQAb+TaGbQO2l/0VI
 4UaL+hY3Eb9ofYvKCzwbpZc=
X-Google-Smtp-Source: ABdhPJx6kvKUN88jZOsUC1EnyXqhw/OXZTYN7Eh5iqLBAPbo3ABv6d/o7waFiEWOTLusJbvvQ0VvKA==
X-Received: by 2002:a05:620a:1442:: with SMTP id
 i2mr1594129qkl.290.1612928789590; 
 Tue, 09 Feb 2021 19:46:29 -0800 (PST)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:7408:b5fb:1cd8:ad04])
 by smtp.googlemail.com with ESMTPSA id k187sm622254qkc.74.2021.02.09.19.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 19:46:28 -0800 (PST)
From: Tong Zhang <ztong0001@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Tong Zhang <ztong0001@gmail.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] media: atomisp: fix compiler warning
Date: Tue,  9 Feb 2021 22:46:18 -0500
Message-Id: <20210210034622.1013012-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

c2hvdWxkIHVzZSAlenUgZm9yIHNpemVfdCB0eXBlLCBvdGhlcndpc2UgY29tcGlsZXIgd2lsbCBj
b21wbGFpbgpkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaG1tL2htbS5jOjI3Mjoz
OiB3YXJuaW5nOiBmb3JtYXQg4oCYJWxk4oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJhs
b25nIGludOKAmSwgYnV0IGFyZ3VtZW50IDYgaGFzIHR5cGUg4oCYc2l6ZV904oCZIHtha2Eg4oCY
dW5zaWduZWQgaW504oCZfSBbLVdmb3JtYXQ9XQogIDI3MiB8ICAgIiVzOiBwYWdlczogMHglMDh4
ICglbGQgYnl0ZXMpLCB0eXBlOiAlZCBmcm9tIGhpZ2htZW0gJWQsIHVzZXIgcHRyICVwLCBjYWNo
ZWQgJWRcbiIsCiAgICAgIHwgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKU2lnbmVkLW9m
Zi1ieTogVG9uZyBaaGFuZyA8enRvbmcwMDAxQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvYXRvbWlzcC9wY2kvaG1tL2htbS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2F0b21pc3AvcGNpL2htbS9obW0uYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9t
aXNwL3BjaS9obW0vaG1tLmMKaW5kZXggZTBlYWZmMGY4YTIyLi42YTVlZTQ2MDcwODkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9obW0vaG1tLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2htbS9obW0uYwpAQCAtMjY5LDcgKzI2
OSw3IEBAIGlhX2Nzc19wdHIgaG1tX2FsbG9jKHNpemVfdCBieXRlcywgZW51bSBobW1fYm9fdHlw
ZSB0eXBlLAogCQlobW1fc2V0KGJvLT5zdGFydCwgMCwgYnl0ZXMpOwogCiAJZGV2X2RiZyhhdG9t
aXNwX2RldiwKLQkJIiVzOiBwYWdlczogMHglMDh4ICglbGQgYnl0ZXMpLCB0eXBlOiAlZCBmcm9t
IGhpZ2htZW0gJWQsIHVzZXIgcHRyICVwLCBjYWNoZWQgJWRcbiIsCisJCSIlczogcGFnZXM6IDB4
JTA4eCAoJXp1IGJ5dGVzKSwgdHlwZTogJWQgZnJvbSBoaWdobWVtICVkLCB1c2VyIHB0ciAlcCwg
Y2FjaGVkICVkXG4iLAogCQlfX2Z1bmNfXywgYm8tPnN0YXJ0LCBieXRlcywgdHlwZSwgZnJvbV9o
aWdobWVtLCB1c2VycHRyLCBjYWNoZWQpOwogCiAJcmV0dXJuIGJvLT5zdGFydDsKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
