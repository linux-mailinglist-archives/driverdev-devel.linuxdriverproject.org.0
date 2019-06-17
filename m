Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 601D34892B
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 18:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 716DD84426;
	Mon, 17 Jun 2019 16:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1_oz66SpkBw; Mon, 17 Jun 2019 16:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B371845DB;
	Mon, 17 Jun 2019 16:40:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90B061BF386
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 16:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 898DC2035A
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 16:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SD4FsTFQFty3 for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 16:39:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 0DD6720354
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 16:39:59 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f9so10661537wre.12
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QbiPhpQVwadkxwWwxjXwvyYtMv62C8jLCWc43wCVGgA=;
 b=Nbt6c8XjsUO1WKmxXBx2rhdqfo6aRRO3XCDZCOYk/LJEdRiTStAP9V+2Ec4HPkNy3i
 dcb3fJA1iEDY1Fd5wZ5M3tsA+03Z4ouYS9uEqSbe+yz3IqqzhYkeXmAqDoRHoIc6C54c
 KZ2LZM30yJN8ph2G6nO9YtZ5oR605ysGYifEdWja6Tg5QTO+Aqy5cEys1HSHg4sXO4NE
 mZwXj5bT6p3ccyJ/thqe4QQ8BCzlSbVbMQpe9cv6j7zJH+B1GQt44guX2VDbGVN/Mo9i
 DPqOX0hhXvTGcieympMKVTr3d7GXt830jVu/UnRRcqcWanL+5d7zsN9ql7GdeWR0bIjP
 WGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QbiPhpQVwadkxwWwxjXwvyYtMv62C8jLCWc43wCVGgA=;
 b=H5w0dIoG8gjpm3wFzGvc0Zl6FFRHYOWCHKK7aijPcFaCl6vQXTt/5qcpBXdRhMuCiz
 6eBySNVsnaFecrN5NKMuE/W5WUUC7cAlFqfWr46UYAAa5Dtavz/hiCBbuDUIItXPUSTV
 NU8WZoJH6nn1lQKq9iGB2QTrKUEdJFaDBVZBcZiv/HSfZ2ITulBDtuXYhNkySLgnYK+h
 Qz+1TQDw3Nf7+5xfTpshqWBncG3DGz8yLZbzDx4eBUQVWK/ARe60pRoKr7rKQjtvHmrK
 yFRJqPwHrmjjZGzWvdAR6268RyRyZGPgjxODw+rKrPm1vnuZ4t1ooaLW5kfr9H1hhNUP
 fjQA==
X-Gm-Message-State: APjAAAU903XcQgVhGy4tLM45nZMfrHDgxmDLR1LhXIY5DY1xKUwHY3u6
 XUxjB9JUHinmt+ZvoKNxEyuKsg==
X-Google-Smtp-Source: APXvYqxWmprhSIQFrp6t1xWST1zp4m0M4IRmuT1yMzRfcK4ZLnwK4Kkm5/WSedVmpsHQ739OSSRy2Q==
X-Received: by 2002:a5d:6449:: with SMTP id d9mr21108302wrw.192.1560789597394; 
 Mon, 17 Jun 2019 09:39:57 -0700 (PDT)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id y133sm20578382wmg.5.2019.06.17.09.39.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 09:39:56 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2] x86/hyperv: Hold cpus_read_lock() on assigning
 reenlightenment vector
Date: Mon, 17 Jun 2019 17:39:55 +0100
Message-Id: <20190617163955.25659-1-dima@arista.com>
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
 Peter Zijlstra <peterz@infradead.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
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
Z2VycyB0aGUKZm9sbG93aW5nIHNwbGF0IG9uIG1vZHByb2JlICh1bmRlciBDT05GSUdfREVCVUdf
UFJFRU1QVCk6CgogS1ZNOiB2bXg6IHVzaW5nIEh5cGVyLVYgRW5saWdodGVuZWQgVk1DUwogQlVH
OiB1c2luZyBzbXBfcHJvY2Vzc29yX2lkKCkgaW4gcHJlZW1wdGlibGUgWzAwMDAwMDAwXSBjb2Rl
OiBtb2Rwcm9iZS80NjYKIGNhbGxlciBpcyBkZWJ1Z19zbXBfcHJvY2Vzc29yX2lkKzB4MTcvMHgx
OQogQ1BVOiAwIFBJRDogNDY2IENvbW06IG1vZHByb2JlIEtkdW1wOiBsb2FkZWQgTm90IHRhaW50
ZWQgNC4xOS40MyAjMQogSGFyZHdhcmUgbmFtZTogTWljcm9zb2Z0IENvcnBvcmF0aW9uIFZpcnR1
YWwgTWFjaGluZS9WaXJ0dWFsIE1hY2hpbmUsIEJJT1MgMDkwMDA3ICAwNi8wMi8yMDE3CiBDYWxs
IFRyYWNlOgogIGR1bXBfc3RhY2srMHg2MS8weDdlCiAgY2hlY2tfcHJlZW1wdGlvbl9kaXNhYmxl
ZCsweGQ0LzB4ZTYKICBkZWJ1Z19zbXBfcHJvY2Vzc29yX2lkKzB4MTcvMHgxOQogIHNldF9odl90
c2NjaGFuZ2VfY2IrMHgxYi8weDg5CiAga3ZtX2FyY2hfaW5pdCsweDE0YS8weDE2MyBba3ZtXQog
IGt2bV9pbml0KzB4MzAvMHgyNTkgW2t2bV0KICB2bXhfaW5pdCsweGVkLzB4M2RiIFtrdm1faW50
ZWxdCiAgZG9fb25lX2luaXRjYWxsKzB4ODkvMHgxYmMKICBkb19pbml0X21vZHVsZSsweDVmLzB4
MjA3CiAgbG9hZF9tb2R1bGUrMHgxYjM0LzB4MjA5YgogIF9faWEzMl9zeXNfaW5pdF9tb2R1bGUr
MHgxNy8weDE5CiAgZG9fZmFzdF9zeXNjYWxsXzMyKzB4MTIxLzB4MWZhCiAgZW50cnlfU1lTRU5U
RVJfY29tcGF0KzB4N2YvMHg5MQoKSG9sZCBjcHVzX3JlYWRfbG9jaygpIHNvIHRoYXQgTVNSIHdp
bGwgYmUgd3JpdHRlbiBmb3IgYW4gb25saW5lIENQVSwKZXZlbiBpZiBzZXRfaHZfdHNjY2hhbmdl
X2NiKCkgZ2V0cyBiZWluZyBwcmVlbXB0ZWQuCldoaWxlIGF0IGl0LCBjbGVhbnVwIHNtcF9wcm9j
ZXNzb3JfaWQoKSdzIGluIGh2X2NwdV9pbml0KCkgYW5kIGFkZCBhCmxvY2tkZXAgYXNzZXJ0IGlu
dG8gaHZfY3B1X2RpZSgpLgoKRml4ZXM6IDkzMjg2MjYxZGUxYjQgKCJ4ODYvaHlwZXJ2OiBSZWVu
bGlnaHRlbm1lbnQgbm90aWZpY2F0aW9ucwpzdXBwb3J0IikKCkNjOiBBbmR5IEx1dG9taXJza2kg
PGx1dG9Aa2VybmVsLm9yZz4KQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgpDYzog
Q2F0aHkgQXZlcnkgPGNhdmVyeUByZWRoYXQuY29tPgpDYzogSGFpeWFuZyBaaGFuZyA8aGFpeWFu
Z3pAbWljcm9zb2Z0LmNvbT4KQ2M6ICJILiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNj
OiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4KQ2M6ICJLLiBZLiBTcmluaXZhc2FuIiA8
a3lzQG1pY3Jvc29mdC5jb20+CkNjOiAiTWljaGFlbCBLZWxsZXkgKEVPU0cpIiA8TWljaGFlbC5I
LktlbGxleUBtaWNyb3NvZnQuY29tPgpDYzogTW9oYW1tZWQgR2FtYWwgPG1tb3JzeUByZWRoYXQu
Y29tPgpDYzogUGFvbG8gQm9uemluaSA8cGJvbnppbmlAcmVkaGF0LmNvbT4KQ2M6IFBldGVyIFpp
amxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KQ2M6IFJhZGltIEtyxI1tw6HFmSA8cmtyY21h
ckByZWRoYXQuY29tPgpDYzogUm9tYW4gS2FnYW4gPHJrYWdhbkB2aXJ0dW96em8uY29tPgpDYzog
U2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgpDYzogU3RlcGhlbiBIZW1taW5nZXIgPHN0
aGVtbWluQG1pY3Jvc29mdC5jb20+CkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25p
eC5kZT4KQ2M6IFZpdGFseSBLdXpuZXRzb3YgPHZrdXpuZXRzQHJlZGhhdC5jb20+CgpDYzogZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpDYzoga3ZtQHZnZXIua2VybmVsLm9yZwpDYzogbGlu
dXgtaHlwZXJ2QHZnZXIua2VybmVsLm9yZwpDYzogeDg2QGtlcm5lbC5vcmcKUmVwb3J0ZWQtYnk6
IFByYXNhbm5hIFBhbmNoYW11a2hpIDxwYW5jaGFtdWtoaUBhcmlzdGEuY29tPgpTaWduZWQtb2Zm
LWJ5OiBEbWl0cnkgU2Fmb25vdiA8ZGltYUBhcmlzdGEuY29tPgotLS0KdjEgbGluazogbGttbC5r
ZXJuZWwub3JnL3IvMjAxOTA2MTEyMTIwMDMuMjYzODItMS1kaW1hQGFyaXN0YS5jb20KCk5PVEUg
dGhhdCBJIGhhZG4ndCBhIGNoYW5jZSB0byB0ZXN0IHYyIG9uIGh5cGVydiBtYWNoaW5lIHNvIGZh
ciwKT05MWSBCVUlMRCBURVNURUQuIChJbiBob3BlIHRoYXQgdGhlIHBhdGNoIHN0aWxsIG1ha2Vz
IHNlbnNlIGFuZCBLYnVpbGQKYm90IHdpbGwgcmVwb3J0IGFueSBpc3N1ZSkuCgogYXJjaC94ODYv
aHlwZXJ2L2h2X2luaXQuYyB8IDE2ICsrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2h5
cGVydi9odl9pbml0LmMgYi9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jCmluZGV4IDE2MDgwNTBl
OWRmOS4uZWM3ZmQ3ZDZjMTI1IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5j
CisrKyBiL2FyY2gveDg2L2h5cGVydi9odl9pbml0LmMKQEAgLTIwLDYgKzIwLDcgQEAKICNpbmNs
dWRlIDxsaW51eC9jbG9ja2NoaXBzLmg+CiAjaW5jbHVkZSA8bGludXgvaHlwZXJ2Lmg+CiAjaW5j
bHVkZSA8bGludXgvc2xhYi5oPgorI2luY2x1ZGUgPGxpbnV4L2NwdS5oPgogI2luY2x1ZGUgPGxp
bnV4L2NwdWhvdHBsdWcuaD4KIAogI2lmZGVmIENPTkZJR19IWVBFUlZfVFNDUEFHRQpAQCAtOTEs
NyArOTIsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTChodl9tYXhfdnBfaW5kZXgpOwogc3RhdGljIGlu
dCBodl9jcHVfaW5pdCh1bnNpZ25lZCBpbnQgY3B1KQogewogCXU2NCBtc3JfdnBfaW5kZXg7Ci0J
c3RydWN0IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3ZwX2Fzc2lzdF9wYWdlW3NtcF9w
cm9jZXNzb3JfaWQoKV07CisJc3RydWN0IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3Zw
X2Fzc2lzdF9wYWdlW2NwdV07CiAJdm9pZCAqKmlucHV0X2FyZzsKIAlzdHJ1Y3QgcGFnZSAqcGc7
CiAKQEAgLTEwMyw3ICsxMDQsNyBAQCBzdGF0aWMgaW50IGh2X2NwdV9pbml0KHVuc2lnbmVkIGlu
dCBjcHUpCiAKIAlodl9nZXRfdnBfaW5kZXgobXNyX3ZwX2luZGV4KTsKIAotCWh2X3ZwX2luZGV4
W3NtcF9wcm9jZXNzb3JfaWQoKV0gPSBtc3JfdnBfaW5kZXg7CisJaHZfdnBfaW5kZXhbY3B1XSA9
IG1zcl92cF9pbmRleDsKIAogCWlmIChtc3JfdnBfaW5kZXggPiBodl9tYXhfdnBfaW5kZXgpCiAJ
CWh2X21heF92cF9pbmRleCA9IG1zcl92cF9pbmRleDsKQEAgLTE4Miw3ICsxODMsNiBAQCB2b2lk
IHNldF9odl90c2NjaGFuZ2VfY2Iodm9pZCAoKmNiKSh2b2lkKSkKIAlzdHJ1Y3QgaHZfcmVlbmxp
Z2h0ZW5tZW50X2NvbnRyb2wgcmVfY3RybCA9IHsKIAkJLnZlY3RvciA9IEhZUEVSVl9SRUVOTElH
SFRFTk1FTlRfVkVDVE9SLAogCQkuZW5hYmxlZCA9IDEsCi0JCS50YXJnZXRfdnAgPSBodl92cF9p
bmRleFtzbXBfcHJvY2Vzc29yX2lkKCldCiAJfTsKIAlzdHJ1Y3QgaHZfdHNjX2VtdWxhdGlvbl9j
b250cm9sIGVtdV9jdHJsID0gey5lbmFibGVkID0gMX07CiAKQEAgLTE5Niw3ICsxOTYsMTYgQEAg
dm9pZCBzZXRfaHZfdHNjY2hhbmdlX2NiKHZvaWQgKCpjYikodm9pZCkpCiAJLyogTWFrZSBzdXJl
IGNhbGxiYWNrIGlzIHJlZ2lzdGVyZWQgYmVmb3JlIHdlIHdyaXRlIHRvIE1TUnMgKi8KIAl3bWIo
KTsKIAorCS8qCisJICogQXMgcmVlbmxpZ2h0ZW5tZW50IHZlY3RvciBpcyBnbG9iYWwsIHRoZXJl
IGlzIG5vIGRpZmZlcmVuY2Ugd2hpY2gKKwkgKiBDUFUgd2lsbCByZWdpc3RlciBNU1IsIHRob3Vn
aCBpdCBzaG91bGQgYmUgYW4gb25saW5lIENQVS4KKwkgKiBodl9jcHVfZGllKCkgY2FsbGJhY2sg
Z3VhcmFudGVlcyB0aGF0IG9uIENQVSB0ZWFyZG93bgorCSAqIGFub3RoZXIgQ1BVIHdpbGwgcmUt
cmVnaXN0ZXIgTVNSIGJhY2suCisJICovCisJY3B1c19yZWFkX2xvY2soKTsKKwlyZV9jdHJsLnRh
cmdldF92cCA9IGh2X3ZwX2luZGV4W3Jhd19zbXBfcHJvY2Vzc29yX2lkKCldOwogCXdybXNybChI
Vl9YNjRfTVNSX1JFRU5MSUdIVEVOTUVOVF9DT05UUk9MLCAqKCh1NjQgKikmcmVfY3RybCkpOwor
CWNwdXNfcmVhZF91bmxvY2soKTsKIAl3cm1zcmwoSFZfWDY0X01TUl9UU0NfRU1VTEFUSU9OX0NP
TlRST0wsICooKHU2NCAqKSZlbXVfY3RybCkpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoc2V0X2h2
X3RzY2NoYW5nZV9jYik7CkBAIC0yMzksNiArMjQ4LDcgQEAgc3RhdGljIGludCBodl9jcHVfZGll
KHVuc2lnbmVkIGludCBjcHUpCiAKIAlyZG1zcmwoSFZfWDY0X01TUl9SRUVOTElHSFRFTk1FTlRf
Q09OVFJPTCwgKigodTY0ICopJnJlX2N0cmwpKTsKIAlpZiAocmVfY3RybC50YXJnZXRfdnAgPT0g
aHZfdnBfaW5kZXhbY3B1XSkgeworCQlsb2NrZGVwX2Fzc2VydF9jcHVzX2hlbGQoKTsKIAkJLyog
UmVhc3NpZ24gdG8gc29tZSBvdGhlciBvbmxpbmUgQ1BVICovCiAJCW5ld19jcHUgPSBjcHVtYXNr
X2FueV9idXQoY3B1X29ubGluZV9tYXNrLCBjcHUpOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
