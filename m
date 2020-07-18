Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ADD2247B4
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 03:26:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8267863E3;
	Sat, 18 Jul 2020 01:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bEYk0QlHEWun; Sat, 18 Jul 2020 01:26:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE98A862C1;
	Sat, 18 Jul 2020 01:26:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2ACC41BF425
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 01:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0EE242040D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 01:26:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMwkUpTKQGqr
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 01:26:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout-bounce.perfora.net (mout-bounce.perfora.net [74.208.4.205])
 by silver.osuosl.org (Postfix) with ESMTPS id C7CF52033D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 01:26:31 +0000 (UTC)
Received: from localhost by mout-bounce.perfora.net id 0M9ZGr-1k8Rrd1JOR-00CzM0
 Sat, 18 Jul 2020 03:26:30 +0200
Date: Sat, 18 Jul 2020 03:26:30 +0200
From: "Mail Delivery System" <mailer-daemon@perfora.net>
To: driverdev-devel@linuxdriverproject.org
Subject: Mail delivery failed: returning message to sender
Auto-Submitted: auto-replied
MIME-Version: 1.0
X-UI-Out-Filterresults: unknown:0;V03:K0:okI/23N3VEs=:jeIDfDRo4JnPBK+XZL2pNA ==
Message-Id: <20200718012633.0EE242040D@silver.osuosl.org>
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

VGhpcyBtZXNzYWdlIHdhcyBjcmVhdGVkIGF1dG9tYXRpY2FsbHkgYnkgbWFpbCBkZWxpdmVyeSBz
b2Z0d2FyZS4KCkEgbWVzc2FnZSB0aGF0IHlvdSBzZW50IGNvdWxkIG5vdCBiZSBkZWxpdmVyZWQg
dG8gb25lIG9yIG1vcmUgb2YKaXRzIHJlY2lwaWVudHMuIFRoaXMgaXMgYSBwZXJtYW5lbnQgZXJy
b3IuIFRoZSBmb2xsb3dpbmcgYWRkcmVzcyhlcykKZmFpbGVkOgoKYWNjQGFmYXEtdWFlLmNvbToK
U01UUCBlcnJvciBmcm9tIHJlbW90ZSBzZXJ2ZXIgZm9yIFJDUFQgVE8gY29tbWFuZCwgaG9zdDog
bWFpbC5hZmFxLXVhZS5jb20gKDE5Mi4yNTQuMjM0LjIzMikgcmVhc29uOiA1NTAgTm8gU3VjaCBV
c2VyIEhlcmUKCgoKLS0tIFRoZSBoZWFkZXIgb2YgdGhlIG9yaWdpbmFsIG1lc3NhZ2UgaXMgZm9s
bG93aW5nLiAtLS0KClJlY2VpdmVkOiBmcm9tIGluZm9uZ3AtdXM4OC5wZXJmb3JhLm5ldCAoWzc0
LjIwOC41OS41MF0pIGJ5IG1yZWxheS5wZXJmb3JhLm5ldAogKG1yZXVldXMwMDIgWzE3Mi4xOS4x
NDMuM10pIHdpdGggRVNNVFBBIChOZW1lc2lzKSBpZCAwTHdKdUMtMWt1ZW00Mkh1dy0wMTgweXkK
IGZvciA8YWNjQGFmYXEtdWFlLmNvbT47IFNhdCwgMTggSnVsIDIwMjAgMDM6MjY6MTggKzAyMDAK
UmVjZWl2ZWQ6IGZyb20gMTk2LjUyLjg0LjM5IChJUCBtYXkgYmUgZm9yZ2VkIGJ5IENHSSBzY3Jp
cHQpCiAgICBieSBpbmZvbmdwLXVzODgucGVyZm9yYS5uZXQgd2l0aCBIVFRQCiAgICBpZCAwRVRx
TWctMWt2VHpMMVBSTi0wMTdXRXA7IEZyaSwgMTcgSnVsIDIwMjAgMjE6MjY6MTggLTA0MDAKWC1T
ZW5kZXItSW5mbzogPDc2NzIwNzA2MUBpbmZvbmdwLXVzODgucGVyZm9yYS5uZXQ+CkRhdGU6IEZy
aSwgMTcgSnVsIDIwMjAgMjE6MjY6MTggLTA0MDAKTWVzc2FnZS1JZDogPDBFVHFNZy0xa3ZUekwx
UFJOLTAxN1dFcEBpbmZvbmdwLXVzODgucGVyZm9yYS5uZXQ+ClByZWNlZGVuY2U6IGJ1bGsKVG86
IGFjY0BhZmFxLXVhZS5jb20KU3ViamVjdDogTWVzc2FnZSBmcm9tIGEgc2l0ZSB2aXNpdG9yIFdp
0LUgbdCwbiAxNTQ2OSBFVVIgZWluINCcb25hdCBpbSBw0LBzc2l20LVuIEVpbtC6b21tZW4gYmls
ZGV0OiBodHRwOi8vbHZwYS5sYXB0b3AxMDAud2Vic2l0ZS9iYQpGcm9tOiBkcml2ZXJkZXYtZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpSZXBseS1UbzogZHJpdmVyZGV2LWRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKWC1Qcm92YWdzLUlEOiBWMDM6SzE6bHhrZUlMWUxUV3N4NkRGQ1FX
WEFETHRBSnVUdDJQNFJXM2dlbTBadUEwd0N1WFVuTEQxCiBzaVNZOEd3aTU3SXdJUW5JQ2RtTlo2
TnYyTkpEWEZyeG9TbUhlY2gzVEtmb3pOSjV4N1pUMXN6UU42Zm1uVEhFWm5OOGNsUAogMU9QNG9i
TURMNGlhcHpQMDFld0dtT1BQRzloMGg2cFd4WEkxY1JRKzcwaTlXNUQ5WTZxWE8wYmlJNXlyWGRZ
Q1hSUXRIdnIKIGpJZGE4R2JWZ0lhZjRaTWhNMFFmRzdGNXJNWXNTNFlsQU9uN1U5YXh5VT0KWC1T
cGFtLUZsYWc6IFlFUwpYLVVJLU91dC1GaWx0ZXJyZXN1bHRzOiBqdW5rOjEwO1YwMzpLMDpkbVdF
OTJrVVNkRT06TWZ2eUpEeFJ1VFl0KzZMc2VCM0p3bVpxCiBhQjFKdk5qdWEvRHlkK0VXVXlYUU9r
ZWNpVmZVVHRaUlFzVU1SYWJZKzQ3TXZHdm9CY1pDbU9ndTlWdVZUSGVPaTNxMFpOQ0ptCiBqUTlv
RXRleHA4cmtkWHZqTHAyMkNpcHlvSXFaY1NMaXRFUE9iaDJtb1ZmcW1UOVBqWlNaZnNOY1hBcG8y
VVcxa1F0dGNpUGJxCiA4ZXp3cUErZ2xvaitHQmpScWpUeUo3aHdtWWQ5SWxkMVVZeGo2ME9CajFS
V0h1TkcrTEJqeG8yYkpMZTczN0hpc3cvdy9kVzk5CiBRelIwdThES1QrUFM4VlBFYnZoNjJwdkRC
UmtZanlxeVdBdjJYZlFwUkJQYUxRNUg5UEtJRUhhTm5DdThrMm1wdlNmK0ViMVQ4CiB4dGc4b1FR
VDhQTEhrS0M5VTVLQWdtT3lMZERWaDZKdjUyKzFUMU9zWkcydWdSRXZlbWg2dmlVRlVPM0IwU29S
bHk2WFdpSXNLCiB1MVR3Qk1IMkFXYjZTLytjYTdHeE1tM3hBamlqTGpDbWRxcitNL2J4NHVlcDBG
ZTk3VzhXUDNtNUhtZHI2TDdDOXp5WVU0OTlGCiBRR2U2ZjlpbUxOZ2pXOCtvblRSOWhMb0NGMXlT
bEZzVEJUbTRXQ1I0T0NtZnNEeTMxc25sNXpyOGhRZnRTWU03dUhUUVpQbXA3CiAzYSswaitTbmJi
VGxYUUFTa2pLNytBenllREZXNGloQlhkczh6Z1hhUTkrZCt5c1V4V0RSdUExWGYxcUsxNmpqdk8r
UXNsYVN6CiB3dnBZVDArSzlqZnNjU3ZTM3RyeC8vZ3ZPcHhoZUpSVTZsOFdQbmlZamk2S3J1SG4x
NEpWdlRwUjZNR1BTcDhjRDZKVnU2TlcrCiAwR1pTUE8rVEkzV09UU0NJa3VpWlBKRUNxRTZPQXA1
NzViK1JLYyt1czNTNVdGT0g0UjA0eTJQbmlmOVRORmtwb1NESG5jQlpRCiA4Nll1UUo4YkFEVlMw
cFAvc2cwQmVJM0UzZnVHczJSR3RlaDA0QWFpc3hjNEhVSUw3TXFpeHEyeW55a1hRdTk3RjhjdUJF
N2JZCiBZaGRvQngzRFgrSGNvTi9zMlU3RWFYc0kyRDlqMm8yNEhZSGtyTThXRHdxVVJlZHVNY2l0
Rmx0ajJEeTFmcytLQUNzaGt2bXA4CiAzZzdFWWpMSUp2Z2RNd2pXOUg3K1R6OWZkS0lyL0pISS96
alBqTVhTMW51NHJCYkRJT1IrWGRUVGxaSERDUEVZa3MycnpkdXVICiBLVkNVVzAzTWtURm1pekFD
UkNUZVV1NSs1WXcvZ0JDeXJyMWxVb1dUV1JRSmQ1cDArNkRPSE9LOENOY2F3emg4bDR1Y0x3czhO
CiBMOU5hR0ZyTFJPbFlBZU02cXZwNXFDRklFdzdxSEFFamhtUnFGWXdWUTlnalNERWo4dTVUL2sw
RDNuYTZZVDVBPT0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
