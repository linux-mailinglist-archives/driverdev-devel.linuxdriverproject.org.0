Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C14260F59
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 12:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A6F58728B;
	Tue,  8 Sep 2020 10:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HICWa7EbGlva; Tue,  8 Sep 2020 10:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D91A587014;
	Tue,  8 Sep 2020 10:12:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F23F1BF286
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BE3B87277
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DEnizY3GBJ7u for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E5DC86A07
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5ce.dynamic.kabel-deutschland.de
 [95.90.213.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD899216C4;
 Tue,  8 Sep 2020 10:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599559951;
 bh=68DNqEok2XhXHOmQ4/OhRUUJNNkVRuXHV71v+f39NZM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gvLSkwfAcQ8V+/WodB5dkaMyFIcNgQ0c4wdSL3yhrGFVXRe5cofRHaIdQUSO9Pyvo
 22LHFHkAi+tqdaOSBaLBqRm0HEf3OmJUsWx/Mwlq5tZ5/pVkZLdzjW1ge2Y2lp7kzR
 fdQPz8NWeAdP4f1t4VTa+wDsS1nprFL483diKtFE=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kFac1-00B3qh-4u; Tue, 08 Sep 2020 12:12:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] media: atomisp: move a static constant out of a header
 file
Date: Tue,  8 Sep 2020 12:12:25 +0200
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, linux-media@vger.kernel.org
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
