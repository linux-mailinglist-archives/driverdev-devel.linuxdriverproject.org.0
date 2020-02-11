Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3AB158B88
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4FC185277;
	Tue, 11 Feb 2020 08:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\203\302\251r\303\203\302\264me Pouiller[...]
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFmFqs9OWl35; Tue, 11 Feb 2020 08:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B0F380ED6;
	Tue, 11 Feb 2020 08:54:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A495C1BF982
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CDBA20447
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\251r\303\264me Pouiller[...]
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 98dtCQcpQWGH for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id C0EEA20403
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGR2T3wz20t;
 Tue, 11 Feb 2020 09:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410815; bh=Ci9W0jXZm0ymnmxa8Jmg5yWrgaK1seZQuVQQGPp0jM0=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=H6F8ECu5oAK3K9BJiSXbGK/KYC7HF49Jpe1aB4OYFI85MVPH8nWuBFuBSuGb7DqpZ
 eeuhdnAXecF+nvjdBCQfG17SnmWIJvSEEGZJWFNO+MHCCNWEGnrCcGpcstOXAxq468
 0xeF0VQOHODSEmB7sATulxcTRTAYs224xmQFip91V1r8vVx/qr+QWVsRNLOVofQ1lz
 z9DCznQj4DbeLZII8xTrOVlcO+LacWJueb5iPoSqBC7x4aJyHGyLGep+XzF93IpP1X
 nUisaw4MLv29T3FobIkj53lP81ySA1XTexFxjfa/Wu1qSHFsUU+jPMOIdt8eYqVVzM
 X0cB2UnjabBvQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:55 +0100
Message-Id: <c47c0b645071aff141fa0d39d92184b6dc5e4f52.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [[PATCH staging] 4/7] staging: wfx: annotate nested gc_list vs tx
 queue locking
MIME-Version: 1.0
To: "Jérôme Pouiller" <jerome.pouiller@silabs.com>,
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
bGlzdC0+bG9jayktPnJsb2NrKTsKCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1v
ZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgfCAxNiArKysrKysrKy0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYwpp
bmRleCAwYmNjNjFmZWVlMWQuLjUxZDZjNTVhZTkxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9xdWV1ZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYwpAQCAtMTMw
LDEyICsxMzAsMTIgQEAgc3RhdGljIHZvaWQgd2Z4X3R4X3F1ZXVlX2NsZWFyKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2LCBzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZSwKIAlzcGluX2xvY2tfYmgoJnF1ZXVl
LT5xdWV1ZS5sb2NrKTsKIAl3aGlsZSAoKGl0ZW0gPSBfX3NrYl9kZXF1ZXVlKCZxdWV1ZS0+cXVl
dWUpKSAhPSBOVUxMKQogCQlza2JfcXVldWVfaGVhZChnY19saXN0LCBpdGVtKTsKLQlzcGluX2xv
Y2tfYmgoJnN0YXRzLT5wZW5kaW5nLmxvY2spOworCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXRzLT5w
ZW5kaW5nLmxvY2ssIDEpOwogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHN0YXRzLT5saW5r
X21hcF9jYWNoZSk7ICsraSkgewogCQlzdGF0cy0+bGlua19tYXBfY2FjaGVbaV0gLT0gcXVldWUt
PmxpbmtfbWFwX2NhY2hlW2ldOwogCQlxdWV1ZS0+bGlua19tYXBfY2FjaGVbaV0gPSAwOwogCX0K
LQlzcGluX3VubG9ja19iaCgmc3RhdHMtPnBlbmRpbmcubG9jayk7CisJc3Bpbl91bmxvY2soJnN0
YXRzLT5wZW5kaW5nLmxvY2spOwogCXNwaW5fdW5sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7
CiB9CiAKQEAgLTIwNyw5ICsyMDcsOSBAQCB2b2lkIHdmeF90eF9xdWV1ZV9wdXQoc3RydWN0IHdm
eF9kZXYgKndkZXYsIHN0cnVjdCB3ZnhfcXVldWUgKnF1ZXVlLAogCiAJKytxdWV1ZS0+bGlua19t
YXBfY2FjaGVbdHhfcHJpdi0+bGlua19pZF07CiAKLQlzcGluX2xvY2tfYmgoJnN0YXRzLT5wZW5k
aW5nLmxvY2spOworCXNwaW5fbG9ja19uZXN0ZWQoJnN0YXRzLT5wZW5kaW5nLmxvY2ssIDEpOwog
CSsrc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdOwotCXNwaW5fdW5sb2Nr
X2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX3VubG9jaygmc3RhdHMtPnBlbmRpbmcu
bG9jayk7CiAJc3Bpbl91bmxvY2tfYmgoJnF1ZXVlLT5xdWV1ZS5sb2NrKTsKIH0KIApAQCAtMjM3
LDExICsyMzcsMTEgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICp3ZnhfdHhfcXVldWVfZ2V0KHN0
cnVjdCB3ZnhfZGV2ICp3ZGV2LAogCQlfX3NrYl91bmxpbmsoc2tiLCAmcXVldWUtPnF1ZXVlKTsK
IAkJLS1xdWV1ZS0+bGlua19tYXBfY2FjaGVbdHhfcHJpdi0+bGlua19pZF07CiAKLQkJc3Bpbl9s
b2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwkJc3Bpbl9sb2NrX25lc3RlZCgmc3RhdHMt
PnBlbmRpbmcubG9jaywgMSk7CiAJCV9fc2tiX3F1ZXVlX3RhaWwoJnN0YXRzLT5wZW5kaW5nLCBz
a2IpOwogCQlpZiAoIS0tc3RhdHMtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdKQog
CQkJd2FrZXVwX3N0YXRzID0gdHJ1ZTsKLQkJc3Bpbl91bmxvY2tfYmgoJnN0YXRzLT5wZW5kaW5n
LmxvY2spOworCQlzcGluX3VubG9jaygmc3RhdHMtPnBlbmRpbmcubG9jayk7CiAJfQogCXNwaW5f
dW5sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7CiAJaWYgKHdha2V1cF9zdGF0cykKQEAgLTI1
OSwxMCArMjU5LDEwIEBAIGludCB3ZnhfcGVuZGluZ19yZXF1ZXVlKHN0cnVjdCB3ZnhfZGV2ICp3
ZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQogCXNwaW5fbG9ja19iaCgmcXVldWUtPnF1ZXVlLmxv
Y2spOwogCSsrcXVldWUtPmxpbmtfbWFwX2NhY2hlW3R4X3ByaXYtPmxpbmtfaWRdOwogCi0Jc3Bp
bl9sb2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX2xvY2tfbmVzdGVkKCZzdGF0
cy0+cGVuZGluZy5sb2NrLCAxKTsKIAkrK3N0YXRzLT5saW5rX21hcF9jYWNoZVt0eF9wcml2LT5s
aW5rX2lkXTsKIAlfX3NrYl91bmxpbmsoc2tiLCAmc3RhdHMtPnBlbmRpbmcpOwotCXNwaW5fdW5s
b2NrX2JoKCZzdGF0cy0+cGVuZGluZy5sb2NrKTsKKwlzcGluX3VubG9jaygmc3RhdHMtPnBlbmRp
bmcubG9jayk7CiAJX19za2JfcXVldWVfdGFpbCgmcXVldWUtPnF1ZXVlLCBza2IpOwogCXNwaW5f
dW5sb2NrX2JoKCZxdWV1ZS0+cXVldWUubG9jayk7CiAJcmV0dXJuIDA7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
