Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A8158CC1
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B1DF7204CE;
	Tue, 11 Feb 2020 10:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CO3FSW-VrXrf; Tue, 11 Feb 2020 10:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8613204BC;
	Tue, 11 Feb 2020 10:35:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B107C1BF982
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD6BB83773
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MI_a2Y_-TP7R for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEDCD85552
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzgB1Ct2zfJ;
 Tue, 11 Feb 2020 11:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417302; bh=vJ8NUWITEPRXpkbxoGsrULQBqI+6p7Npd4ClhxGYj/Y=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=OagUjMkQfG5ZYGu77ODgUQyZtbdGkOXc/fjC4sC6MtxSDwdGw19s/NRUrAzkPM1Cp
 ROA40S2z9fowEyomLfG7EdyQxp77js26SH/69y911FaTyMuIsrtyuJYubUKmMBa6um
 p1N4PO0I67nfQ9RZVw33+AhfFkhCpyEuC/cZK15SoidZYowb4VAKhCOSvZCpLpX36w
 BO34mOHS4r++XtbCDr0aoUvmElVJizgD7ltpvpyD+DnjrWEresoXkKAC8/FxF6/9S+
 PDJ0PyrxpYhHGsraXzJ4kHqFktwWqAe54LTo+xof1TZd3ooA9QltnsIwggRPHNSSzJ
 XcGVscxrRaQFw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:35:01 +0100
Message-Id: <5e30397af95854b4a7deea073b730c00229f42ba.1581416843.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 2/6] staging: wfx: annotate nested gc_list vs tx queue
 locking
MIME-Version: 1.0
To: =?UTF-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TG9ja2RlcCBpcyBjb21wbGFpbmluZyBhYm91dCByZWN1cnNpdmUgbG9ja2luZywgYmVjYXVzZSBp
dCBjYW4ndCBtYWtlCmEgZGlmZmVyZW5jZSBiZXR3ZWVuIGxvY2tlZCBza2JfcXVldWVzLiBBbm5v
dGF0ZSBuZXN0ZWQgbG9ja3MgYW5kIGF2b2lkCmRvdWJsZSBiaF9kaXNhYmxlL2VuYWJsZS4KClsu
Li5dCmluc21vZC84MTUgaXMgdHJ5aW5nIHRvIGFjcXVpcmUgbG9jazoKY2I3ZDY0MTggKCYoJmxp
c3QtPmxvY2spLT5ybG9jayl7Ky4uLn0sIGF0OiB3ZnhfdHhfcXVldWVzX2NsZWFyKzB4ZmMvMHgx
OTggW3dmeF0KCmJ1dCB0YXNrIGlzIGFscmVhZHkgaG9sZGluZyBsb2NrOgpjYjdkNjFmNCAoJigm
bGlzdC0+bG9jayktPnJsb2NrKXsrLi4ufSwgYXQ6IHdmeF90eF9xdWV1ZXNfY2xlYXIrMHhhMC8w
eDE5OCBbd2Z4XQoKWy4uLl0KUG9zc2libGUgdW5zYWZlIGxvY2tpbmcgc2NlbmFyaW86CgogICAg
ICBDUFUwCiAgICAgIC0tLS0KIGxvY2soJigmbGlzdC0+bG9jayktPnJsb2NrKTsKIGxvY2soJigm
bGlzdC0+bG9jayktPnJsb2NrKTsKCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCkZpeGVzOiA5
YmNhNDVmM2Q2OTIgKCJzdGFnaW5nOiB3Zng6IGFsbG93IHRvIHNlbmQgODAyLjExIGZyYW1lcyIp
ClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5w
bD4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgfCAxNiArKysrKysrKy0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
cXVldWUuYwppbmRleCAwYmNjNjFmZWVlMWQuLjUxZDZjNTVhZTkxZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUu
YwpAQCAtMTMwLDEyICsxMzAsMTIgQEAgc3RhdGljIHZvaWQgd2Z4X3R4X3F1ZXVlX2NsZWFyKHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZSwKIAlzcGluX2xvY2tf
YmgoJnF1ZXVlLT5xdWV1ZS5sb2NrKTsKIAl3aGlsZSAoKGl0ZW0gPSBfX3NrYl9kZXF1ZXVlKCZx
dWV1ZS0+cXVldWUpKSAhPSBOVUxMKQogCQlza2JfcXVldWVfaGVhZChnY19saXN0LCBpdGVtKTsK
LQlzcGluX2xvY2tfYmgoJnN0YXRzLT5wZW5kaW5nLmxvY2spOworCXNwaW5fbG9ja19uZXN0ZWQo
JnN0YXRzLT5wZW5kaW5nLmxvY2ssIDEpOwogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHN0
YXRzLT5saW5rX21hcF9jYWNoZSk7ICsraSkgewogCQlzdGF0cy0+bGlua19tYXBfY2FjaGVbaV0g
LT0gcXVldWUtPmxpbmtfbWFwX2NhY2hlW2ldOwogCQlxdWV1ZS0+bGlua19tYXBfY2FjaGVbaV0g
PSAwOwogCX0KLQlzcGluX3VubG9ja19iaCgmc3RhdHMtPnBlbmRpbmcubG9jayk7CisJc3Bpbl91
bmxvY2soJnN0YXRzLT5wZW5kaW5nLmxvY2spOwogCXNwaW5fdW5sb2NrX2JoKCZxdWV1ZS0+cXVl
dWUubG9jayk7CiB9CiAKQEAgLTIwNyw5ICsyMDcsOSBAQCB2b2lkIHdmeF90eF9xdWV1ZV9wdXQo
c3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCB3ZnhfcXVldWUgKnF1ZXVlLAogCiAJKytxdWV1
ZS0+bGlua19tYXBfY2FjaGVbdHhfcHJpdi0+bGlua19pZF07CiAKLQlzcGluX2xvY2tfYmgoJnN0
YXRzLT5wZW5kaW5nLmxvY2spOworCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXRzLT5wZW5kaW5nLmxv
Y2ssIDEpOwogCSsrc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdOwotCXNw
aW5fdW5sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX3VubG9jaygmc3RhdHMt
PnBlbmRpbmcubG9jayk7CiAJc3Bpbl91bmxvY2tfYmgoJnF1ZXVlLT5xdWV1ZS5sb2NrKTsKIH0K
IApAQCAtMjM3LDExICsyMzcsMTEgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICp3ZnhfdHhfcXVl
dWVfZ2V0KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAogCQlfX3NrYl91bmxpbmsoc2tiLCAmcXVldWUt
PnF1ZXVlKTsKIAkJLS1xdWV1ZS0+bGlua19tYXBfY2FjaGVbdHhfcHJpdi0+bGlua19pZF07CiAK
LQkJc3Bpbl9sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwkJc3Bpbl9sb2NrX25lc3Rl
ZCgmc3RhdHMtPnBlbmRpbmcubG9jaywgMSk7CiAJCV9fc2tiX3F1ZXVlX3RhaWwoJnN0YXRzLT5w
ZW5kaW5nLCBza2IpOwogCQlpZiAoIS0tc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxp
bmtfaWRdKQogCQkJd2FrZXVwX3N0YXRzID0gdHJ1ZTsKLQkJc3Bpbl91bmxvY2tfYmgoJnN0YXRz
LT5wZW5kaW5nLmxvY2spOworCQlzcGluX3VubG9jaygmc3RhdHMtPnBlbmRpbmcubG9jayk7CiAJ
fQogCXNwaW5fdW5sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7CiAJaWYgKHdha2V1cF9zdGF0
cykKQEAgLTI1OSwxMCArMjU5LDEwIEBAIGludCB3ZnhfcGVuZGluZ19yZXF1ZXVlKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogCXNwaW5fbG9ja19iaCgmcXVldWUt
PnF1ZXVlLmxvY2spOwogCSsrcXVldWUtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRd
OwogCi0Jc3Bpbl9sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX2xvY2tfbmVz
dGVkKCZzdGF0cy0+cGVuZGluZy5sb2NrLCAxKTsKIAkrK3N0YXRzLT5saW5rX21hcF9jYWNoZVt0
eF9wcml2LT5saW5rX2lkXTsKIAlfX3NrYl91bmxpbmsoc2tiLCAmc3RhdHMtPnBlbmRpbmcpOwot
CXNwaW5fdW5sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX3VubG9jaygmc3Rh
dHMtPnBlbmRpbmcubG9jayk7CiAJX19za2JfcXVldWVfdGFpbCgmcXVldWUtPnF1ZXVlLCBza2Ip
OwogCXNwaW5fdW5sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7CiAJcmV0dXJuIDA7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
