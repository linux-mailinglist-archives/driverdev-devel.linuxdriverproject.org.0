Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74534416D0
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 23:26:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2F7A875A0;
	Tue, 11 Jun 2019 21:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 25n-KTts-9-n; Tue, 11 Jun 2019 21:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0937286FC1;
	Tue, 11 Jun 2019 21:26:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E67C51BF33F
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 21:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E11E986F9E
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 21:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oowlv+AYUNaI for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 21:26:05 +0000 (UTC)
X-Greylist: delayed 00:05:58 by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D03486ECC
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 21:26:05 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id k8so7589766eds.7
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 14:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3OOJyWbB6/jxUd7+KAEy96qdC4Tdsl/f96tHzMaVcB4=;
 b=jyXIkF1GdcmUnLu0AjQVG+Udjq0UcLRwKiUZCFdPn8a+eUUs0JzwnCONzTAOgGvuuL
 8qywm8p9GaPge4mxScd7qXROT/CTuLJQpFl2FOylF96lRmgQ4fQvRcuYuCInAT5gHpWh
 Anuw3mQQ0ML9bICJ8UdTd7HL3HN9oMf9ogRugDvI1U/pGKPwFPIZr5xwo9aKz6tSL9V4
 PNu9kyl72rjbyjy1b8MTUB2fHoUgRpKJq1MVudCAG3SC8hfdFVVx/gVKqooXi1vcxQLG
 BMq7V6uYNvrRn6rQT5vUSD2LQfSuqy7EbRgy3wUz9ateaSAcjBUsdixYhK0zQNNmM++7
 H68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3OOJyWbB6/jxUd7+KAEy96qdC4Tdsl/f96tHzMaVcB4=;
 b=WNHENzaAOpR7UuUFVvNpN0csrkN3GdZ5ErzJIFEPEyws2TGTe49toGlwStWFuk2SnN
 glCN0b4p4iNbSlL5LiQbQdZaMdT5cjZkLYTh3ZIA/XcwgbINbAgiYG9EVS92RovsTYD8
 7Ipkzzs034UKTDA3rOSylonIp+i0/ttY4wAOxmau0S3+jYTt0ft44eP5Xj15Xa6hFT+T
 K/kc0t3IzApRZQUxS2696+ARORt+I9KRCj3oqzCjOglLFjYSCqxaHjfX3sJd1J4DBqqo
 SLr+BBxp/iyjXeJO2syZ4fJ8CPiNdXGUonDDLyNDxwqbwEGPzrGByFnz2lsNp0fj/4pC
 qoBA==
X-Gm-Message-State: APjAAAUiXQxSZrF3XYAAsfAdDFNoxyYENoQvw67fj0BrfA99/uLwBfmn
 SvIGQtZ03MN+RQly0XiAbMh2CQ==
X-Google-Smtp-Source: APXvYqy8UkurlAlIz6eWbNQVfj0pLtyKFJ1RdwsS4Mhclx5Ug3s5dTGx4YcObvRBnw363mK1Ak9kYA==
X-Received: by 2002:a50:f385:: with SMTP id g5mr2541498edm.14.1560288005996;
 Tue, 11 Jun 2019 14:20:05 -0700 (PDT)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id a15sm1967030ejr.4.2019.06.11.14.20.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:20:05 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] x86/hyperv: Disable preemption while setting reenlightenment
 vector
Date: Tue, 11 Jun 2019 22:20:03 +0100
Message-Id: <20190611212003.26382-1-dima@arista.com>
X-Mailer: git-send-email 2.22.0
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Dmitry Safonov <dima@arista.com>,
 x86@kernel.org, "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Roman Kagan <rkagan@virtuozzo.com>,
 Mohammed Gamal <mmorsy@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 devel@linuxdriverproject.org, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

S1ZNIHN1cHBvcnQgbWF5IGJlIGNvbXBpbGVkIGFzIGR5bmFtaWMgbW9kdWxlLCB3aGljaCB0cmln
Z2VycyB0aGUKZm9sbG93aW5nIHNwbGF0IG9uIG1vZHByb2JlOgoKIEtWTTogdm14OiB1c2luZyBI
eXBlci1WIEVubGlnaHRlbmVkIFZNQ1MKIEJVRzogdXNpbmcgc21wX3Byb2Nlc3Nvcl9pZCgpIGlu
IHByZWVtcHRpYmxlIFswMDAwMDAwMF0gY29kZTogbW9kcHJvYmUvNDY2IGNhbGxlciBpcyBkZWJ1
Z19zbXBfcHJvY2Vzc29yX2lkKzB4MTcvMHgxOQogQ1BVOiAwIFBJRDogNDY2IENvbW06IG1vZHBy
b2JlIEtkdW1wOiBsb2FkZWQgTm90IHRhaW50ZWQgNC4xOS40MyAjMQogSGFyZHdhcmUgbmFtZTog
TWljcm9zb2Z0IENvcnBvcmF0aW9uIFZpcnR1YWwgTWFjaGluZS9WaXJ0dWFsIE1hY2hpbmUsIEJJ
T1MgMDkwMDA3ICAwNi8wMi8yMDE3CiBDYWxsIFRyYWNlOgogIGR1bXBfc3RhY2srMHg2MS8weDdl
CiAgY2hlY2tfcHJlZW1wdGlvbl9kaXNhYmxlZCsweGQ0LzB4ZTYKICBkZWJ1Z19zbXBfcHJvY2Vz
c29yX2lkKzB4MTcvMHgxOQogIHNldF9odl90c2NjaGFuZ2VfY2IrMHgxYi8weDg5CiAga3ZtX2Fy
Y2hfaW5pdCsweDE0YS8weDE2MyBba3ZtXQogIGt2bV9pbml0KzB4MzAvMHgyNTkgW2t2bV0KICB2
bXhfaW5pdCsweGVkLzB4M2RiIFtrdm1faW50ZWxdCiAgZG9fb25lX2luaXRjYWxsKzB4ODkvMHgx
YmMKICBkb19pbml0X21vZHVsZSsweDVmLzB4MjA3CiAgbG9hZF9tb2R1bGUrMHgxYjM0LzB4MjA5
YgogIF9faWEzMl9zeXNfaW5pdF9tb2R1bGUrMHgxNy8weDE5CiAgZG9fZmFzdF9zeXNjYWxsXzMy
KzB4MTIxLzB4MWZhCiAgZW50cnlfU1lTRU5URVJfY29tcGF0KzB4N2YvMHg5MQoKVGhlIGVhc2ll
c3Qgc29sdXRpb24gc2VlbXMgdG8gYmUgZGlzYWJsaW5nIHByZWVtcHRpb24gd2hpbGUgc2V0dGlu
ZyB1cApyZWVubGlnaHRtZW50IE1TUnMuIFdoaWxlIGF0IGl0LCBmaXggaHZfY3B1XyooKSBjYWxs
YmFja3MuCgpGaXhlczogOTMyODYyNjFkZTFiNCAoIng4Ni9oeXBlcnY6IFJlZW5saWdodGVubWVu
dCBub3RpZmljYXRpb25zCnN1cHBvcnQiKQoKQ2M6IEFuZHkgTHV0b21pcnNraSA8bHV0b0BrZXJu
ZWwub3JnPgpDYzogQm9yaXNsYXYgUGV0a292IDxicEBhbGllbjguZGU+CkNjOiBDYXRoeSBBdmVy
eSA8Y2F2ZXJ5QHJlZGhhdC5jb20+CkNjOiBIYWl5YW5nIFpoYW5nIDxoYWl5YW5nekBtaWNyb3Nv
ZnQuY29tPgpDYzogIkguIFBldGVyIEFudmluIiA8aHBhQHp5dG9yLmNvbT4KQ2M6IEluZ28gTW9s
bmFyIDxtaW5nb0ByZWRoYXQuY29tPgpDYzogIksuIFkuIFNyaW5pdmFzYW4iIDxreXNAbWljcm9z
b2Z0LmNvbT4KQ2M6ICJNaWNoYWVsIEtlbGxleSAoRU9TRykiIDxNaWNoYWVsLkguS2VsbGV5QG1p
Y3Jvc29mdC5jb20+CkNjOiBNb2hhbW1lZCBHYW1hbCA8bW1vcnN5QHJlZGhhdC5jb20+CkNjOiBQ
YW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQuY29tPgpDYzogUmFkaW0gS3LEjW3DocWZIDxy
a3JjbWFyQHJlZGhhdC5jb20+CkNjOiBSb21hbiBLYWdhbiA8cmthZ2FuQHZpcnR1b3p6by5jb20+
CkNjOiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+CkNjOiBTdGVwaGVuIEhlbW1pbmdl
ciA8c3RoZW1taW5AbWljcm9zb2Z0LmNvbT4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51
dHJvbml4LmRlPgpDYzogVml0YWx5IEt1em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KCkNj
OiBkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCkNjOiBrdm1Admdlci5rZXJuZWwub3JnCkNj
OiBsaW51eC1oeXBlcnZAdmdlci5rZXJuZWwub3JnCkNjOiB4ODZAa2VybmVsLm9yZwpSZXBvcnRl
ZC1ieTogUHJhc2FubmEgUGFuY2hhbXVraGkgPHBhbmNoYW11a2hpQGFyaXN0YS5jb20+ClNpZ25l
ZC1vZmYtYnk6IERtaXRyeSBTYWZvbm92IDxkaW1hQGFyaXN0YS5jb20+Ci0tLQogYXJjaC94ODYv
aHlwZXJ2L2h2X2luaXQuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2h5cGVydi9odl9p
bml0LmMgYi9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jCmluZGV4IDE2MDgwNTBlOWRmOS4uMGJk
ZDc5ZWNiZmY4IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jCisrKyBiL2Fy
Y2gveDg2L2h5cGVydi9odl9pbml0LmMKQEAgLTkxLDcgKzkxLDcgQEAgRVhQT1JUX1NZTUJPTF9H
UEwoaHZfbWF4X3ZwX2luZGV4KTsKIHN0YXRpYyBpbnQgaHZfY3B1X2luaXQodW5zaWduZWQgaW50
IGNwdSkKIHsKIAl1NjQgbXNyX3ZwX2luZGV4OwotCXN0cnVjdCBodl92cF9hc3Npc3RfcGFnZSAq
Kmh2cCA9ICZodl92cF9hc3Npc3RfcGFnZVtzbXBfcHJvY2Vzc29yX2lkKCldOworCXN0cnVjdCBo
dl92cF9hc3Npc3RfcGFnZSAqKmh2cCA9ICZodl92cF9hc3Npc3RfcGFnZVtjcHVdOwogCXZvaWQg
KippbnB1dF9hcmc7CiAJc3RydWN0IHBhZ2UgKnBnOwogCkBAIC0xMDMsNyArMTAzLDcgQEAgc3Rh
dGljIGludCBodl9jcHVfaW5pdCh1bnNpZ25lZCBpbnQgY3B1KQogCiAJaHZfZ2V0X3ZwX2luZGV4
KG1zcl92cF9pbmRleCk7CiAKLQlodl92cF9pbmRleFtzbXBfcHJvY2Vzc29yX2lkKCldID0gbXNy
X3ZwX2luZGV4OworCWh2X3ZwX2luZGV4W2NwdV0gPSBtc3JfdnBfaW5kZXg7CiAKIAlpZiAobXNy
X3ZwX2luZGV4ID4gaHZfbWF4X3ZwX2luZGV4KQogCQlodl9tYXhfdnBfaW5kZXggPSBtc3JfdnBf
aW5kZXg7CkBAIC0xODIsNyArMTgyLDYgQEAgdm9pZCBzZXRfaHZfdHNjY2hhbmdlX2NiKHZvaWQg
KCpjYikodm9pZCkpCiAJc3RydWN0IGh2X3JlZW5saWdodGVubWVudF9jb250cm9sIHJlX2N0cmwg
PSB7CiAJCS52ZWN0b3IgPSBIWVBFUlZfUkVFTkxJR0hURU5NRU5UX1ZFQ1RPUiwKIAkJLmVuYWJs
ZWQgPSAxLAotCQkudGFyZ2V0X3ZwID0gaHZfdnBfaW5kZXhbc21wX3Byb2Nlc3Nvcl9pZCgpXQog
CX07CiAJc3RydWN0IGh2X3RzY19lbXVsYXRpb25fY29udHJvbCBlbXVfY3RybCA9IHsuZW5hYmxl
ZCA9IDF9OwogCkBAIC0xOTYsNyArMTk1LDExIEBAIHZvaWQgc2V0X2h2X3RzY2NoYW5nZV9jYih2
b2lkICgqY2IpKHZvaWQpKQogCS8qIE1ha2Ugc3VyZSBjYWxsYmFjayBpcyByZWdpc3RlcmVkIGJl
Zm9yZSB3ZSB3cml0ZSB0byBNU1JzICovCiAJd21iKCk7CiAKKwlwcmVlbXB0X2Rpc2FibGUoKTsK
KwlyZV9jdHJsLnRhcmdldF92cCA9IGh2X3ZwX2luZGV4W3NtcF9wcm9jZXNzb3JfaWQoKV07CiAJ
d3Jtc3JsKEhWX1g2NF9NU1JfUkVFTkxJR0hURU5NRU5UX0NPTlRST0wsICooKHU2NCAqKSZyZV9j
dHJsKSk7CisJcHJlZW1wdF9lbmFibGUoKTsKKwogCXdybXNybChIVl9YNjRfTVNSX1RTQ19FTVVM
QVRJT05fQ09OVFJPTCwgKigodTY0ICopJmVtdV9jdHJsKSk7CiB9CiBFWFBPUlRfU1lNQk9MX0dQ
TChzZXRfaHZfdHNjY2hhbmdlX2NiKTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
