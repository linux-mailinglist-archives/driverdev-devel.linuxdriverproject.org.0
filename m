Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB9D1A5285
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 16:51:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66ED322728;
	Sat, 11 Apr 2020 14:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0H4VTUq-zAm; Sat, 11 Apr 2020 14:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C25132079D;
	Sat, 11 Apr 2020 14:50:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EEF51BF410
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 14:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B2CE21551
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 14:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYo2GzC16lMH for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 14:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from cmccmta1.chinamobile.com (cmccmta1.chinamobile.com
 [221.176.66.79])
 by silver.osuosl.org (Postfix) with ESMTP id 57D902079D
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 14:50:51 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.7]) by
 rmmx-syy-dmz-app04-12004 (RichMail) with SMTP id 2ee45e91d925d4b-15fa2;
 Sat, 11 Apr 2020 22:50:13 +0800 (CST)
X-RM-TRANSID: 2ee45e91d925d4b-15fa2
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.104.145.126])
 by rmsmtp-syy-appsvr04-12004 (RichMail) with SMTP id 2ee45e91d923f00-9d4e6;
 Sat, 11 Apr 2020 22:50:13 +0800 (CST)
X-RM-TRANSID: 2ee45e91d923f00-9d4e6
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: gregkh@linuxfoundation.org, arve@android.com, maco@android.com,
 tkjos@android.com, joel@joelfernandes.org, christian@brauner.io
Subject: [PATCH] binderfs: Fix binderfs.c selftest compilation warning
Date: Sat, 11 Apr 2020 22:51:51 +0800
Message-Id: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
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
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4IG1pc3NpbmcgYnJhY2VzIGNvbXBpbGF0aW9uIHdhcm5pbmcgaW4gdGhlIEFSTQpjb21waWxl
ciBlbnZpcm9ubWVudDoKICAgIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXJmcy5jOiBJbiBmdW5jdGlv
biAnYmluZGVyZnNfZmlsbF9zdXBlcic6CiAgICBkcml2ZXJzL2FuZHJvaWQvYmluZGVyZnMuYzo2
NTA6OTogd2FybmluZzogbWlzc2luZyBicmFjZXMgYXJvdW5kIGluaXRpYWxpemVyIFstV21pc3Np
bmctYnJhY2VzXQogICAgICBzdHJ1Y3QgYmluZGVyZnNfZGV2aWNlIGRldmljZV9pbmZvID0geyAw
IH07CiAgICBkcml2ZXJzL2FuZHJvaWQvYmluZGVyZnMuYzo2NTA6OTogd2FybmluZzogKG5lYXIg
aW5pdGlhbGl6YXRpb24gZm9yIOKAmGRldmljZV9pbmZvLm5hbWXigJkpIFstV21pc3NpbmctYnJh
Y2VzXQoKU2lnbmVkLW9mZi1ieTogVGFuZyBCaW4gPHRhbmdiaW5AY21zcy5jaGluYW1vYmlsZS5j
b20+Ci0tLQogZHJpdmVycy9hbmRyb2lkL2JpbmRlcmZzLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Fu
ZHJvaWQvYmluZGVyZnMuYyBiL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXJmcy5jCmluZGV4IDllY2Fk
NzQxOC4uNzg1MjhlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hbmRyb2lkL2JpbmRlcmZzLmMKKysr
IGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlcmZzLmMKQEAgLTY1MCw3ICs2NTAsNyBAQCBzdGF0aWMg
aW50IGJpbmRlcmZzX2ZpbGxfc3VwZXIoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgc3RydWN0IGZz
X2NvbnRleHQgKmZjKQogCXN0cnVjdCBiaW5kZXJmc19pbmZvICppbmZvOwogCXN0cnVjdCBiaW5k
ZXJmc19tb3VudF9vcHRzICpjdHggPSBmYy0+ZnNfcHJpdmF0ZTsKIAlzdHJ1Y3QgaW5vZGUgKmlu
b2RlID0gTlVMTDsKLQlzdHJ1Y3QgYmluZGVyZnNfZGV2aWNlIGRldmljZV9pbmZvID0geyAwIH07
CisJc3RydWN0IGJpbmRlcmZzX2RldmljZSBkZXZpY2VfaW5mbyA9IHt9OwogCWNvbnN0IGNoYXIg
Km5hbWU7CiAJc2l6ZV90IGxlbjsKIAotLSAKMi43LjQKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
