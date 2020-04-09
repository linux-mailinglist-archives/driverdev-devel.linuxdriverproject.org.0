Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C191A314C
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 10:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BC4686AB2;
	Thu,  9 Apr 2020 08:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZILxsmN3gR42; Thu,  9 Apr 2020 08:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67C10864EF;
	Thu,  9 Apr 2020 08:55:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84ACE1BF33B
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 08:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8136B84FAE
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 08:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Z2YMUvoNMbB for <devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 08:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43D9F84F5A
 for <devel@driverdev.osuosl.org>; Thu,  9 Apr 2020 08:55:18 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B955C4D58753A801B7C1;
 Thu,  9 Apr 2020 16:55:14 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Thu, 9 Apr 2020
 16:55:05 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <nsaenzjulienne@suse.de>, <gregkh@linuxfoundation.org>,
 <marcgonzalez@google.com>, <jamal.k.shareef@gmail.com>,
 <nishkadg.linux@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: vc04_services: remove set but not used
 'local_entity_uc'
Date: Thu, 9 Apr 2020 16:53:39 +0800
Message-ID: <20200409085339.47255-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2
aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jOjIzNTY6MTY6Cndhcm5pbmc6IHZh
cmlhYmxlIOKAmGxvY2FsX2VudGl0eV91Y+KAmSBzZXQgYnV0IG5vdCB1c2VkClstV3VudXNlZC1i
dXQtc2V0LXZhcmlhYmxlXQogIGludCBsb2NhbF91YywgbG9jYWxfZW50aXR5X3VjOwogICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CgpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2Np
QGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNv
bT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJt
L3ZjaGlxX2FybS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2Vz
L2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9z
ZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jCmluZGV4IGExZWE5Nzc3YTQ0
NC4uMmQzZTExNGY0YTY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNl
cy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy92
YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMKQEAgLTIzNTMsNyAr
MjM1Myw3IEBAIHZjaGlxX3VzZV9pbnRlcm5hbChzdHJ1Y3QgdmNoaXFfc3RhdGUgKnN0YXRlLCBz
dHJ1Y3QgdmNoaXFfc2VydmljZSAqc2VydmljZSwKIAllbnVtIHZjaGlxX3N0YXR1cyByZXQgPSBW
Q0hJUV9TVUNDRVNTOwogCWNoYXIgZW50aXR5WzE2XTsKIAlpbnQgKmVudGl0eV91YzsKLQlpbnQg
bG9jYWxfdWMsIGxvY2FsX2VudGl0eV91YzsKKwlpbnQgbG9jYWxfdWM7CiAKIAlpZiAoIWFybV9z
dGF0ZSkKIAkJZ290byBvdXQ7CkBAIC0yMzc3LDcgKzIzNzcsNyBAQCB2Y2hpcV91c2VfaW50ZXJu
YWwoc3RydWN0IHZjaGlxX3N0YXRlICpzdGF0ZSwgc3RydWN0IHZjaGlxX3NlcnZpY2UgKnNlcnZp
Y2UsCiAKIAl3cml0ZV9sb2NrX2JoKCZhcm1fc3RhdGUtPnN1c3BfcmVzX2xvY2spOwogCWxvY2Fs
X3VjID0gKythcm1fc3RhdGUtPnZpZGVvY29yZV91c2VfY291bnQ7Ci0JbG9jYWxfZW50aXR5X3Vj
ID0gKysoKmVudGl0eV91Yyk7CisJKysoKmVudGl0eV91Yyk7CiAKIAl2Y2hpcV9sb2dfdHJhY2Uo
dmNoaXFfc3VzcF9sb2dfbGV2ZWwsCiAJCSIlcyAlcyBjb3VudCAlZCwgc3RhdGUgY291bnQgJWQi
LAotLSAKMi4xNy4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
