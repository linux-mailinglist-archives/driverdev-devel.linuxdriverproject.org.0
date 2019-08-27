Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867BE9E3BC
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 11:12:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0035883C8;
	Tue, 27 Aug 2019 09:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KT6+eUTOnR77; Tue, 27 Aug 2019 09:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2186B88341;
	Tue, 27 Aug 2019 09:12:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 752A31BF2B9
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 09:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 724A188250
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 09:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEmZ1QXHn9Bk for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 09:12:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 961D488227
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 09:12:48 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x4so17739109ljj.6
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 02:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WJNG8KcQj8a8aW6KDJN0JhXCmJZIOlHAKu/f7GwxcOM=;
 b=EsUWQmENmRh4DQ7R8C0XXJzPVm9GHtii5fC/76vb1FKlN/s5JtHreizdM7trwGgnSD
 0+bHFHSV3D6Iyw9zWbP4kpCP6myO59hfTqWXcswyWBz95bROjA64p9tOhMYgFBUl07PJ
 piqOm0NHlUak4+Iibpnb/uMzc3Pk8rmONj4sIqn8p0bjlR5XKob1Au87pfQ2JgaQDP+x
 mWFxH+jSGHbUz2lR5Rts9SVSNsVDQmwWkTonoKxmZVveMRmIgi9kyDLio2wNWmDMUO5o
 WjMlkaz+xXZpKo1xj4g69fRfeLVXhkGzTliv8iWjIaAVA6CuSr7FnXjcX2LLA0fIOHke
 oTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=WJNG8KcQj8a8aW6KDJN0JhXCmJZIOlHAKu/f7GwxcOM=;
 b=EK+HXAQdE6BnZ30HWYXP+CGpke+stGTciWwffqwU9rgsQGK4glt/fA7U1GoaW7Syfp
 81kHFDag6XJ4gqGIBhNoeRjU1P54MA5ri0obps5RxsLknA5k8vyfOcuxt8rJWlUs/7mL
 CGmmD6d7Ooy/pKh5G7by9c0MvxxroKsurv/o7X7YJ5SlIHNfqmBBCjAypDo/zt+crEQ8
 3PKA/MZZKtX+H3ekZdppus1gDwY9MkX4lfPQdplp0qyWCMGy6DNoNB1pHEcxPDDfCAOl
 /O39tf92M149wwSokrpydQSHv/qJfsBJrxp2BYBnLeoC70Gu7k+2R4nlIzyz3+/NomMo
 RbhA==
X-Gm-Message-State: APjAAAVXz3O64oYEROWiyyp9u9mgf2MeaIe+vPbftaPj3q/idTlPpi45
 D+HKecGq9zhm/7gBTzJZFbXEGHYVsanGd0p06Ks=
X-Google-Smtp-Source: APXvYqy3B4KI+Yq6xuW7gAJ9i/cV340FtBpUOg+r+ucPQTUtiwIsVzYnxT7H4Uu9U7KE323NtuBHaaqtrUoRNMIph0M=
X-Received: by 2002:a2e:8510:: with SMTP id j16mr13382673lji.174.1566897166603; 
 Tue, 27 Aug 2019 02:12:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:9109:0:0:0:0:0 with HTTP; Tue, 27 Aug 2019 02:12:46
 -0700 (PDT)
From: Donna Louise <donnalouise1056@gmail.com>
Date: Tue, 27 Aug 2019 09:12:46 +0000
X-Google-Sender-Auth: z4_QnnJNfnCqsj-KVFLuPoZ_C_k
Message-ID: <CA+F+MbavuXfMX52HU8DUMHWbCyA=MNNxfQF4cRVxBFwRBc_DSg@mail.gmail.com>
Subject: HELLO,
To: undisclosed-recipients:;
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

RGVhciBGcmllbmQsCgogIEkgYW0gZ2xhZCB0byBrbm93IHlvdSwgYnV0IGdvZCBrbm93cyB5b3Ug
YmV0dGVyIGFuZCBoZSBrbm93cyB3aHkgaGUKaGFzIGRpcmVjdGVkIG1lIHRvIHlvdSBhdCB0aGlz
IHBvaW50IGluIHRpbWUgc28gZG8gbm90IGJlIHN1cnByaXNlIGF0CmFsbC4gTXkgbmFtZXMgYXJl
IE1ycy4gRG9ubmEgTG91aXNlIE1jSW5uZXMgYSB3aWRvdywgSSBhbSBmcm9tCihDYW5hZGEpIGJ1
dCBwcmVzZW50bHkgYmFzZWQgaW4gTWFkcmlkIGhlcmVpbiBTcGFpbiBzaW5jZSBteSBsaWZlIHdp
dGgKbXkgbGF0ZSBodXNiYW5kIGFuZCBpIGhhdmUgYmVlbiBzdWZmZXJpbmcgZnJvbSBvdmFyaWFu
IGNhbmNlciBkaXNlYXNlLgpBdCB0aGlzIG1vbWVudCBpIGFtIGFib3V0IHRvIGVuZCB0aGUgcmFj
ZSBsaWtlIHRoaXMgYmVjYXVzZSB0aGUKaWxsbmVzcyBoYXMgZ290dGVuIHRvIGEgdmVyeSBiYWQg
c3RhZ2UsIHdpdGhvdXQgYW55IGZhbWlseSBtZW1iZXJzIGFuZApubyBjaGlsZC4gSSBob3BlZCB0
aGF0IHlvdSB3aWxsIG5vdCBleHBvc2Ugb3IgYmV0cmF5IHRoaXMgdHJ1c3QgYW5kCmNvbmZpZGVu
dCB0aGF0IEkgYW0gYWJvdXQgdG8gZW50cnVzdCBvbiB5b3UgZm9yIHRoZSBtdXR1YWwgYmVuZWZp
dCBvZgp0aGUgb3JwaGFucyBhbmQgdGhlIGxlc3MgcHJpdmlsZWdlcyBvbmVzLiBJIGhhdmUgc29t
ZSBmdW5kcyBJCmluaGVyaXRlZCBmcm9tIG15IGxhdGUgaHVzYmFuZCwgdGhlIHN1bSBvZiAo4oKs
Ni41MDAuMDAwLjAwMCBTaXggTWlsbGlvbgpGaXZlIEh1bmRyZWQgVGhvdXNhbmQgRXVybykgZGVw
b3NpdGVkIHdpdGggdGhlIEliZXJjYWphIEJhbmsgU3BhaW4KYnJhbmNoLiAgSGF2aW5nIGtub3du
IG15IHByZXNlbnQgaGVhbHRoIHN0YXR1cywgSSBkZWNpZGVkIHRvIGVudHJ1c3QKdGhpcyBmdW5k
IHRvIHlvdSBiZWxpZXZpbmcgdGhhdCB5b3Ugd2lsbCB1dGlsaXplIGl0IHRoZSB3YXkgaSBhbSBn
b2luZwp0byBpbnN0cnVjdCBoZXJlaW4uCgpUaGVyZWZvcmUgSSBuZWVkIHlvdSB0byBhc3Npc3Qg
bWUgYW5kIHJlY2xhaW0gdGhpcyBtb25leSBhbmQgdXNlIGl0CmZvciBDaGFyaXR5IHdvcmtzLCBm
b3Igb3JwaGFuYWdlcyBhbmQgZ2l2ZXMganVzdGljZSBhbmQgaGVscCB0byB0aGUKcG9vciwgbmVl
ZHkgYW5kIHRvIHByb21vdGUgdGhlIHdvcmRzIG9mIEdvZCBhbmQgdGhlIGVmZm9ydCB0aGF0IHRo
ZQpob3VzZSBvZiBHb2Qgd2lsbCBiZSBtYWludGFpbmVkIHNheXMgVGhlIExvcmQuIiBKZXJlbWlh
aCAyMjoxNS0xNi7igJwKCkl0IHdpbGwgYmUgbXkgZ3JlYXQgcGxlYXN1cmUgdG8gY29tcGVuc2F0
ZSB5b3Ugd2l0aCAzNSAlIHBlcmNlbnQgb2YKdGhlIHRvdGFsIG1vbmV5IGZvciB5b3VyIHBlcnNv
bmFsIHVzZSwgNSAlIHBlcmNlbnQgZm9yIGFueSBleHBlbnNlcwp0aGF0IG1heSBvY2N1ciBkdXJp
bmcgdGhlIGludGVybmF0aW9uYWwgdHJhbnNmZXIgcHJvY2VzcyB3aGlsZSA2MCUgb2YKdGhlIG1v
bmV5IHdpbGwgZ28gdG8gdGhlIGNoYXJpdHkgcHJvamVjdC4KCkFsbCBJIHJlcXVpcmUgZnJvbSB5
b3UgaXMgc2luY2VyaXR5IGFuZCBhYmlsaXR5IHRvIGNvbXBsZXRlIEdvZCB0YXNrCndpdGhvdXQg
YW55IGZhaWx1cmUuIEl0IHdpbGwgYmUgbXkgcGxlYXN1cmUgdG8gc2VlIHRoYXQgdGhlIGJhbmsg
aGFzCmZpbmFsbHkgcmVsZWFzZSBhbmQgdHJhbnNmZXIgdGhlIGZ1bmQgaW50byB5b3VyIGJhbmsg
YWNjb3VudCB0aGVyZWluCmNvdW50cnkgZXZlbiBiZWZvcmUgSSBkaWUgaGVyZSBpbiB0aGUgaG9z
cGl0YWwsIGJlY2F1c2Ugb2YgbXkgcHJlc2VudApoZWFsdGggc3RhdHVzIGV2ZXJ5dGhpbmcgbmVl
ZCB0byBiZSBwcm9jZXNzIHJhcGlkbHkgYXMgc29vbiBhcwpwb3NzaWJsZS4gSSBhbSB3YWl0aW5n
IGZvciB5b3VyIGltbWVkaWF0ZSByZXBseSwgaWYgb25seSB5b3UgYXJlCmludGVyZXN0ZWQgZm9y
IGZ1cnRoZXIgZGV0YWlscyBvZiB0aGUgdHJhbnNhY3Rpb24gYW5kIGV4ZWN1dGlvbiBvZgp0aGlz
IGNoYXJpdGFibGUgcHJvamVjdC4KCkJlc3QgUmVnYXJkcyB5b3VyIGZyaWVuZCBNcnMuCkRvbm5h
IExvdWlzZSBNY0lubmVzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
