Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8544C19EF8F
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 05:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BEA4861A3;
	Mon,  6 Apr 2020 03:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id am-rE4wm6Qek; Mon,  6 Apr 2020 03:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 400F586199;
	Mon,  6 Apr 2020 03:24:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B81D31BF97E
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 03:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4A61861A1
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 03:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bpcfzka2ZTGn for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 03:24:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC21486199
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 03:24:34 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 37D6B69C984608471486;
 Mon,  6 Apr 2020 11:24:28 +0800 (CST)
Received: from huawei.com (10.175.112.70) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Mon, 6 Apr 2020
 11:24:20 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <gregkh@linuxfoundation.org>, <puranjay12@gmail.com>,
 <robsonde@gmail.com>, <zhengbin13@huawei.com>
Subject: [PATCH] Staging: rtl8192e: remove set but not used variable 'tmpRegC'
Date: Tue, 7 Apr 2020 08:36:04 -0400
Message-ID: <1586262964-4582-1-git-send-email-wanghai38@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.70]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, wanghai38@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9z
dGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4MTkyRV9kZXYuYzogSW4gZnVuY3Rpb24gcnRsOTJl
X3N0YXJ0X2FkYXB0ZXI6CmRyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVf
ZGV2LmM6NjkzOjE1OiB3YXJuaW5nOiB2YXJpYWJsZSDigJh0bXBSZWdD4oCZIHNldCBidXQgbm90
IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpjb21taXQgOTRhNzk5NDI1ZWVlICgi
cnRsODE5MmU6IFNwbGl0IGludG8gdHdvIGRpcmVjdG9yaWVzIikKaW52b2x2ZWQgdGhpcywgcmVt
b3ZlIGl0LgoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4MTkyRV9kZXYuYyB8IDYgKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVfZGV2LmMgYi9kcml2ZXJzL3N0
YWdpbmcvcnRsODE5MmUvcnRsODE5MmUvcjgxOTJFX2Rldi5jCmluZGV4IGRkY2Q3ODguLmZmOTM0
YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVf
ZGV2LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4MTkyRV9kZXYu
YwpAQCAtNjkwLDcgKzY5MCw3IEBAIGJvb2wgcnRsOTJlX3N0YXJ0X2FkYXB0ZXIoc3RydWN0IG5l
dF9kZXZpY2UgKmRldikKIAl1OCB0bXB2YWx1ZTsKIAl1OCBJQ1ZlcnNpb24sIFN3aXRjaGluZ1Jl
Z3VsYXRvck91dHB1dDsKIAlib29sIGJmaXJtd2FyZW9rID0gdHJ1ZTsKLQl1MzIgdG1wUmVnQSwg
dG1wUmVnQywgVGVtcENDazsKKwl1MzIgdG1wUmVnQSwgVGVtcENDazsKIAlpbnQgaSA9IDA7CiAJ
dTMyIHJldHJ5X3RpbWVzID0gMDsKIApAQCAtODg5LDggKzg4OSw4IEBAIGJvb2wgcnRsOTJlX3N0
YXJ0X2FkYXB0ZXIoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKIAkJaWYgKHByaXYtPklDX0N1dCA+
PSBJQ19WZXJzaW9uQ3V0X0QpIHsKIAkJCXRtcFJlZ0EgPSBydGw5MmVfZ2V0X2JiX3JlZyhkZXYs
IHJPRkRNMF9YQVR4SVFJbWJhbGFuY2UsCiAJCQkJCQkgICAgYk1hc2tEV29yZCk7Ci0JCQl0bXBS
ZWdDID0gcnRsOTJlX2dldF9iYl9yZWcoZGV2LCByT0ZETTBfWENUeElRSW1iYWxhbmNlLAotCQkJ
CQkJICAgIGJNYXNrRFdvcmQpOworCQkJcnRsOTJlX2dldF9iYl9yZWcoZGV2LCByT0ZETTBfWENU
eElRSW1iYWxhbmNlLAorCQkJCQkgIGJNYXNrRFdvcmQpOwogCQkJZm9yIChpID0gMDsgaSA8IFR4
QkJHYWluVGFibGVMZW5ndGg7IGkrKykgewogCQkJCWlmICh0bXBSZWdBID09IGRtX3R4X2JiX2dh
aW5baV0pIHsKIAkJCQkJcHJpdi0+cmZhX3R4cG93ZXJ0cmFja2luZ2luZGV4ID0gKHU4KWk7Ci0t
IAoxLjguMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
