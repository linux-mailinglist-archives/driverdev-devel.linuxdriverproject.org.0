Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A3E84C642
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Feb 2024 09:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AC7D8213D;
	Wed,  7 Feb 2024 08:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwBNtcJQ4j5B; Wed,  7 Feb 2024 08:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9994E8213E
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9994E8213E;
	Wed,  7 Feb 2024 08:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CA221BF350;
 Wed,  7 Feb 2024 08:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68B9A40278;
 Wed,  7 Feb 2024 08:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3LqGTSyd3Fr; Wed,  7 Feb 2024 08:27:36 +0000 (UTC)
X-Greylist: delayed 606 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 08:27:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 306A7400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 306A7400B9
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=192.3.255.135;
 helo=mail0.scfire.com; envelope-from=ferrer@suncor.com; receiver=<UNKNOWN> 
Received: from mail0.scfire.com (unknown [192.3.255.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 306A7400B9
 for <devel@driverdev.osuosl.org>; Wed,  7 Feb 2024 08:27:35 +0000 (UTC)
From: "Ferrer Barreiro Associates" <Ferrer@suncor.com>
To: devel@driverdev.osuosl.org
Subject: RE: Urgent
Date: 06 Feb 2024 22:09:00 +0100
Message-ID: <20240206220900.A52BBA39EBA75019@suncor.com>
MIME-Version: 1.0
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=quarantine dis=none)
 header.from=suncor.com
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
Reply-To: allejandroferrer@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhci4gLAoKQWNjZXB0IG15IHNpbmNlcmUgYXBvbG9neSBmb3IgdGhpcyB1bnNvbGljaXRlZCBs
ZXR0ZXIgdG8geW91LCBJIAphbSBhd2FyZSB0aGF0IHRoaXMgaXMgY2VydGFpbmx5IG5vdCBhIGNv
bnZlbnRpb25hbCB3YXkgb2YgCmFwcHJvYWNoIHRvIGVzdGFibGlzaCBhIHJlbGF0aW9uc2hpcCBv
ZiB0cnVzdCBidXQgeW91IHdpbGwgCnJlYWxpemUgdGhlIG5lZWQgZm9yIG15IGFjdGlvbi4gTXkg
bmFtZSBpcyBBbGVqYW5kcm8gRmVycmVyIApCYXJyZWlybyAsIEkgZ290IHlvdXIgY29udGFjdCBp
bmZvcm1hdGlvbiB0aHJvdWdoIHlvdXIgY291bnRyecK0cyAKcHVibGljIHJlY29yZHMgd2hpbGUg
c2VhcmNoaW5nIGZvciBhIGxhc3QgbmFtZSBzaW1pbGFyIHRvIG15IGxhdGUgCmNsaWVudC4gIEkg
YW0gd3JpdGluZyB0byB5b3UgaW4gcmVnYXJkcyB0byBteSBkZWNlYXNlZCBjbGllbnQsIApNci4g
S2xhdXMgUm9iZXJ0IERBUkxFTkUsIHdobyBkaWVkIGluIDIwMTAuCgpCZWZvcmUgaGlzIGRlbWlz
ZSwgaGUgZGVwb3NpdGVkIHRoZSBzdW0gb2YgKOKCrDYuNU0pIFNpeCBNaWxsaW9uLCAKRml2ZSBI
dW5kcmVkIFRob3VzYW5kIEV1cm9zLCB3aXRoIGEgYmFuayBoZXJlIGluIFNwYWluLiBUaGUgYmFu
ayAKYmVpbmcgYXdhcmUgb2YgIGhpcyBkZWF0aCBoYXZlIG1hbmRhdGVkIG1lICB0byAgcHJlc2Vu
dCAgYSBtZW1iZXIgCm9mIGhpcyBmYW1pbHkgKGhlaXIvaW5oZXJpdG9yKW9yIE5leHQgb2Yga2lu
IHRvIG1ha2UgQ2xhaW1zIG9mIApoaXMgZnVuZCBvdGhlcndpc2UgaXQgd2lsbCBiZSBmb3JmZWl0
ZWQsIHNlaXplZCBvciBjb25maXNjYXRlZCBieSAKdGhlIGF1dGhvcml0aWVzIGFuZCByZXZlcnRz
IHRvIHRoZSB0cmVhc3VyeSBvZiB0aGUgU3BhbmlzaCAKTWluaXN0cnkgIGFzIGFuIHVuY2xhaW1l
ZC4gVGhpcyBpcyBiZWNhdXNlIGluIGFjY29yZGFuY2Ugd2l0aCB0aGUgClNwYW5pc2ggbGF3LCBz
dWNoIGZvcnR1bmUgaXMgYXV0b21hdGljYWxseSBiZXF1ZWF0aGVkIHRvIHRoZSAKZ292ZXJubWVu
dCBpZiB0aGVyZSBpcyBubyBoZWlyIG9yIE5leHQgb2Yga2luIHRvIHRoZSBkZWNlYXNlZCAKdGhh
dCB3b3VsZCBzdXJmYWNlIHRvIGNsYWltIHRoZSBmb3J0dW5lLiBIb3dldmVyLCB0aGlzIGxhdyBp
cyAKdW5qdXN0IGFuZCBpbmh1bWFuZSBhcyBpdCBvZnRlbiBjcmVhdGVzIGFuIGF2ZW51ZSBmb3Ig
dGhlIHRvcCAKb2ZmaWNpYWxzIG9mIHNvbWUgZmluYW5jaWFsIGluc3RpdHV0aW9ucyB0byBkaXZl
cnQgc3VjaCBmb3J0dW5lcyAKZm9yIHRoZWlyIG93biBzZWxmaXNoIHVzZS4gT24gdGhhdCBncm91
bmQsIEkgZGVjaWRlZCB0byBzZWFyY2ggCmZvciBhbnkgb2YgbXkgbGF0ZSBjbGllbnQncyByZWxh
dGl2ZXMgd2hpY2ggaGFzIHByb3ZlZCBhYm9ydGl2ZSAKYXMgaGUgZGlkIG5vdCBvZmZpY2lhbGx5
IGRlY2xhcmUgYW55IE5leHQgb2Yga2luIG9yIGJlbmVmaWNpYXJ5LgoKVGhvdWdoIG15IGxhdGUg
Y2xpZW50IEtsYXVzIFJvYmVydCBEQVJMRU5FIGRpZCBub3QgZGlzY2xvc2Ugb3IgCnN0YXRlIGFu
eSBuZXh0IG9mIGtpbiBvciBiZW5lZmljaWFyeSBvbiB0aGUgZGF5IG9mIGRlcG9zaXQgZm9yIApy
ZWFzb25zIGJlc3Qga25vd24gdG8gaGltLiBUaGUgZnVuZCB3YXMgZGVwb3NpdGVkIFdlZG5lc2Rh
eSAxNXRoIApPY3RvYmVyIDIwMDcgYXQgMTI6MTdwbS4gTXkgbGF0ZSBjbGllbnQgZGlkIG5vdCBz
dGF0ZSB0aGUgTmV4dCBvZiAKa2luIG9yIGJlbmVmaWNpYXJ5IGR1ZSB0byBoaXMgaW1tZWRpYXRl
IGludmVzdG1lbnRzIHBsYW5zLiBJIGFtIApjb250YWN0aW5nIHlvdSBiZWNhdXNlIHlvdSBzaGFy
ZSB0aGUgc2FtZSBuYW1lIHdpdGggbXkgbGF0ZSAKY2xpZW50OyBJIGtub3cgeW91IG1pZ2h0IG5v
dCBiZSByZWxhdGVkIGJ1dCBhZnRlciBjb3VudGxlc3MgCmVmZm9ydHMgdG8gbG9jYXRlIGRpcmVj
dCByZWxhdGl2ZSB0byBteSBsYXRlIGNsaWVudCBhbmQgdGhyZWUgCm1vbnRocyBmaW5hbCBub3Rp
Y2UgZnJvbSB0aGUgYmFuayB0byBwcmVzZW50IGEgYmVuZWZpY2lhcnkgdG8gdGhlIApmdW5kIG9m
IG15IGxhdGUgY2xpZW50LCBBbmQgZmFpbHVyZSB0byBtZWV0IHVwIHdpdGggdGhpcyBkZWFkbGlu
ZSAKbWVhbnMgdGhlIGZ1bmQgd2lsbCBiZSBsaXF1aWRhdGVkIHRvIHRoZSBidXJlYXUgb2YgcHVi
bGljIGFuZCAKdW5jbGFpbWVkIGZ1bmQgYW5kIHRoYXQgSSBmb3JiaWQgaGFwcGVuaW5nLiAKCkFn
YWluc3QgdGhpcyBiYWNrZHJvcCwgSSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91IHRvIGpvaW4gbWUg
dG8gcHV0IApjbGFpbXMgb24gdGhpcyBkZXBvc2l0IGJlZm9yZSBpdGBzIGZvcmZlaXRlZCB0byB0
aGUgYXV0aG9yaXRpZXMuIApNeSBzdWdnZXN0aW9uIHRvIHlvdSBpcywgSSB3aWxsIGxpa2UgdG8g
cHJlc2VudCB5b3UgYXMgdGhlIE5leHQgCm9mIEtpbiBhbmQgYmVuZWZpY2lhcnkgdG8gdGhpcyBk
ZXBvc2l0LCBzaW5jZSB5b3UgYXJlIGJvdGggCmZvcmVpZ24gbmF0aW9uYWxzIGFuZCB5b3Ugc2hh
cmUgc2FtZSBzdXJuYW1lIGJ5IHZpcnR1ZSBvZiBteSAKcG9zaXRpb24gYXMgaGlzIHBlcnNvbmFs
IEF0dG9ybmV5IGJlZm9yZSBoaXMgZGVtaXNlLCBJIHdpbGwgbm93IApwbGFjZSB5b3VyIG5hbWUg
YXMgdGhlIE5leHQgb2Yga2luL0JlbmVmaWNpYXJ5IHRvIG15IGxhdGUgY2xpZW50IAphbmQgSSB3
aWxsIHByZXBhcmUgYWxsIHJlbGV2YW50IGxlZ2FsIGRvY3VtZW50YXRpb25zIHRoYXQgd2lsbCAK
YXNzaXN0IHRvIGZhY2lsaXRhdGUgdGhlIHJlbGVhc2Ugb2YgdGhlIHZhdWx0IHRvIHlvdSB3aXRo
b3V0IGFueSAKYnJlYWNoIG9mIHRoZSBsYXcuCgpOb3RlLCBJIGhhdmUgd29ya2VkIG91dCBhbGwg
bW9kYWxpdGllcyB0byBjb21wbGV0ZSB0aGUgCnRyYW5zYWN0aW9uIHN1Y2Nlc3NmdWxseSwgYmUg
cmVzdCBhc3N1cmVkIHRoYXQgdGhlIHRyYW5zYWN0aW9uIGlzIAoxMDAlIGxlZ2FsIGFuZCByaXNr
IGZyZWUuIE9uY2UgdGhlIHZhdWx0IGlzIHJlbGVhc2VkIHRvIHlvdSwgd2UgCnNoYWxsIHNoYXJl
IGluIHRoZSByYXRpbyBvZiA0NSUgZm9yIG1lLCA0NSUgZm9yIHlvdSB3aGlsZSB0aGUgCnJlbWFp
bmluZyAxMCUgd2lsbCBiZSBzZXQgYXNpZGUgZm9yIHRoZSBsZXNzIHByaXZpbGVnZWQvY2hhcml0
eSAKb3JnYW5pemF0aW9ucy4gSWYgbXkgcHJvcG9zYWwgaXMgYWNjZXB0YWJsZSB0byB5b3UsIEtp
bmRseSByZXBseSAKdmlhIG15IHByaXZhdGUgZW1haWwgYWRkcmVzcyBmb3IgZnVydGhlciBkaXNj
dXNzaW9uIG9uIGhvdyB0byAKcHJvY2VlZC4gRW1haWw7IGFsZWVqYW5kcm9iYXJyZWlyb0BnbWFp
bC5jb20gCgpJIGNhbiBiZSByZWFjaGVkIGF0IGFsbCB0aW1lcyBvbiBteSBkaXJlY3QgdGVsZXBo
b25lIG51bWJlcjogVGVsOiAKKyAzNC0gNjExLTMwMC0gIDY2OAoKClJlZ2FyZHMgU2luY2VyZWx5
LAogQWxlamFuZHJvIEZlcnJlciBCYXJyZWlybyBBc3NvY2lhdGVzIApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
