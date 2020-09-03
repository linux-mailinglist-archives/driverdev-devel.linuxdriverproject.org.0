Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A68C25C20C
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 15:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C810286C2F;
	Thu,  3 Sep 2020 13:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW-w5sHe9jyz; Thu,  3 Sep 2020 13:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4ED5586C1A;
	Thu,  3 Sep 2020 13:57:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A67C1BF294
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 13:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54968203C2
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 13:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxosYBNM3Wkz for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6AF012E105
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15723208CA;
 Thu,  3 Sep 2020 13:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599141456;
 bh=68DNqEok2XhXHOmQ4/OhRUUJNNkVRuXHV71v+f39NZM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rEZLA3kledQKylisBtEd5Hn2NlCom0PPkl9HQlukK8uR7gs15pLUmnJaULD7xNNwn
 OEfc68462reeaHv2UsNQJmoNwbq+f+1TA2IpzcGOKvLq+zQHjwoyLqYL8PVZ4O2p8V
 5ZHIrQRcac1DUnzSkVcVszp5btpwcGpTcz+J6ZmY=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDpk6-004T6r-6d; Thu, 03 Sep 2020 15:57:34 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 4/5] media: atomisp: move a static constant out of a header
 file
Date: Thu,  3 Sep 2020 15:57:31 +0200
Message-Id: <a3280622dd3c85360c789e156f7b9d03bc8b2de3.1599141140.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599141140.git.mchehab+huawei@kernel.org>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R2NjIHJlcG9ydHMgdGhhdCBpbnB1dF9mb3JtYXR0ZXJfYWxpZ25tZW50IGlzIG5vdCB1c2VkOgoK
CUluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwLy9w
Y2kvaGl2ZV9pc3BfY3NzX2luY2x1ZGUvaW5wdXRfZm9ybWF0dGVyLmg6MzQsCgkgICAgICAgICAg
ICAgICAgIGZyb20gZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvL3BjaS9ydW50aW1lL2Rl
YnVnL3NyYy9pYV9jc3NfZGVidWcuYzo1NToKCS4vZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21p
c3AvL3BjaS9oaXZlX2lzcF9jc3NfY29tbW9uL2hvc3QvaW5wdXRfZm9ybWF0dGVyX2xvY2FsLmg6
MTE4OjI3OiB3YXJuaW5nOiDigJhpbnB1dF9mb3JtYXR0ZXJfYWxpZ25tZW504oCZIGRlZmluZWQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpIb3dldmVyLCBpdCBpcywg
YnV0IG9ubHkgaW5zaWRlIGlucHV0X2Zvcm1hdHRlci5jLgoKU28sIG1vdmUgaXQgb3V0IG9mIHRo
ZSBoZWFkZXIgZmlsZS4KClNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNo
ZWhhYitodWF3ZWlAa2VybmVsLm9yZz4KLS0tCiAuLi4vYXRvbWlzcC9wY2kvaGl2ZV9pc3BfY3Nz
X2NvbW1vbi9ob3N0L2lucHV0X2Zvcm1hdHRlci5jICAgIHwgNCArKysrCiAuLi4vcGNpL2hpdmVf
aXNwX2Nzc19jb21tb24vaG9zdC9pbnB1dF9mb3JtYXR0ZXJfbG9jYWwuaCAgICAgIHwgNCAtLS0t
CiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaGl2ZV9pc3BfY3NzX2Nv
bW1vbi9ob3N0L2lucHV0X2Zvcm1hdHRlci5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21p
c3AvcGNpL2hpdmVfaXNwX2Nzc19jb21tb24vaG9zdC9pbnB1dF9mb3JtYXR0ZXIuYwppbmRleCAx
YjE5NmNkMjY1YjkuLjVjZDYxMzZmMjFhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2F0b21pc3AvcGNpL2hpdmVfaXNwX2Nzc19jb21tb24vaG9zdC9pbnB1dF9mb3JtYXR0ZXIu
YworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaGl2ZV9pc3BfY3NzX2Nv
bW1vbi9ob3N0L2lucHV0X2Zvcm1hdHRlci5jCkBAIC0yNyw2ICsyNywxMCBAQAogI2luY2x1ZGUg
ImlucHV0X2Zvcm1hdHRlcl9wcml2YXRlLmgiCiAjZW5kaWYgLyogX19JTkxJTkVfSU5QVVRfRk9S
TUFUVEVSX18gKi8KIAorc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBpbnB1dF9mb3JtYXR0ZXJf
YWxpZ25tZW50W05fSU5QVVRfRk9STUFUVEVSX0lEXSA9IHsKKwlJU1BfVkVDX0FMSUdOLCBJU1Bf
VkVDX0FMSUdOLCBISVZFX0lTUF9DVFJMX0RBVEFfQllURVMKK307CisKIGNvbnN0IGhydF9hZGRy
ZXNzIEhJVkVfSUZfU1JTVF9BRERSRVNTW05fSU5QVVRfRk9STUFUVEVSX0lEXSA9IHsKIAlJTlBV
VF9GT1JNQVRURVIwX1NSU1RfT0ZGU0VULAogCUlOUFVUX0ZPUk1BVFRFUjFfU1JTVF9PRkZTRVQs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaGl2ZV9pc3Bf
Y3NzX2NvbW1vbi9ob3N0L2lucHV0X2Zvcm1hdHRlcl9sb2NhbC5oIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2F0b21pc3AvcGNpL2hpdmVfaXNwX2Nzc19jb21tb24vaG9zdC9pbnB1dF9mb3JtYXR0
ZXJfbG9jYWwuaAppbmRleCA5NGZmZjc3NTg0ZjcuLmRmYjU5M2MxMDlhZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2hpdmVfaXNwX2Nzc19jb21tb24vaG9z
dC9pbnB1dF9mb3JtYXR0ZXJfbG9jYWwuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRv
bWlzcC9wY2kvaGl2ZV9pc3BfY3NzX2NvbW1vbi9ob3N0L2lucHV0X2Zvcm1hdHRlcl9sb2NhbC5o
CkBAIC0xMTUsOCArMTE1LDQgQEAgc3RydWN0IGlucHV0X2Zvcm1hdHRlcl9iaW5fc3RhdGVfcyB7
CiAJdTMyCWVuX3N0YXR1c191cGRhdGU7CiB9OwogCi1zdGF0aWMgY29uc3QgdW5zaWduZWQgaW50
IGlucHV0X2Zvcm1hdHRlcl9hbGlnbm1lbnRbTl9JTlBVVF9GT1JNQVRURVJfSURdID0gewotCUlT
UF9WRUNfQUxJR04sIElTUF9WRUNfQUxJR04sIEhJVkVfSVNQX0NUUkxfREFUQV9CWVRFUwotfTsK
LQogI2VuZGlmIC8qIF9fSU5QVVRfRk9STUFUVEVSX0xPQ0FMX0hfSU5DTFVERURfXyAqLwotLSAK
Mi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
