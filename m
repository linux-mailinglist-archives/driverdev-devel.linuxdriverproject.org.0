Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB3674D48C
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jul 2023 13:25:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5974460675;
	Mon, 10 Jul 2023 11:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5974460675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id diuS0j7JQuKz; Mon, 10 Jul 2023 11:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D2F960592;
	Mon, 10 Jul 2023 11:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D2F960592
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29D551BF40A
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 11:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10B5560592
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 11:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10B5560592
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N7qYTdPpjUPB for <devel@linuxdriverproject.org>;
 Mon, 10 Jul 2023 11:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 661F960675
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.155])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 661F960675
 for <devel@linuxdriverproject.org>; Mon, 10 Jul 2023 11:25:19 +0000 (UTC)
From: dorisgomo4@gmail.com
To: devel@linuxdriverproject.org
Date: 10 Jul 2023 07:25:17 -0400
Message-ID: <20230710072517.58AC9FACA841AE56@gmail.com>
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
Reply-To: dorisgomo4@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpNeSBOYW1lIGlzIE1pc3MgRG9yaXMgR29tbyBmcm9tIENvdGUgZCdJdm9p
cmUsIEknbSAxNiB5ZWFycyBvbGQKb3JpZ2luYXRlZCBmcm9tIEJvbmRvdWtvdSwgQ8O0dGUgZCdJ
dm9pcmUgLiBJIGJlbGlldmUgdGhhdCBpdCBpcwpiZXR0ZXIgd2Uga25vdyBlYWNoIG90aGVyIGJl
dHRlciBiZWNhdXNlIEkgYmVsaWV2ZSB0aGF0IGFueSBnb29kCnJlbGF0aW9uc2hpcCB3aWxsIG9u
bHkgbGFzdCBpZiBpdCBpcyBidWlsdCBvbiB0cnVzdCBhbmQgbXV0dWFsCnVuZGVyc3RhbmRpbmcu
CgpQbGVhc2UgSSB3YW50IHlvdSB0byByZWFkIHRoaXMgbGV0dGVyIHZlcnkgY2FyZWZ1bGx5IGFu
ZCBJIG11c3QKYXBvbG9naXplIGZvciBiYXJnaW5nIHRoaXMgbWVzc2FnZSBpbnRvIHlvdXIgbWFp
bGJveCB3aXRob3V0IGFueQpmb3JtYWwgaW50cm9kdWN0aW9uIGR1ZSB0byB0aGUgdXJnZW5jeSBh
bmQgY29uZmlkZW50aWFsaXR5IG9mCnRoaXMgaXNzdWUuCgpJIGxvc3QgbXkgcGFyZW50cyB0aHJv
dWdoIHRoZSBjcmlzZXMgd2FyIGxhc3QgdGltZSBpbiBDb25nbyBSRFAsCmhlIGlzIGEgZ29sZCBt
aW5lciwgbXkgdW5jbGUgY29uc3BpcmVkIGFuZCBzb2xkIG15IGZhdGhlcidzCnByb3BlcnRpZXMg
YW5kIGxlZnQgbm90aGluZyBmb3IgbWUsIG9uIGEgZmFpdGhmdWwgbW9ybmluZyBJCm9wZW5lZCBt
eSBsYXRlIGZhdGhlcidzIHJvb20gd2hpY2ggSSBzYXcgYSBicmllZmNhc2UgYW5kIEkgb3BlbmVk
Cml0IHRoZXJlIEkgZm91bmQgZG9jdW1lbnRzIGluIHdoaWNoIGluZGljYXRlZCB0aGF0IG15IGxh
dGUgZmF0aGVyCmRlcG9zaXRlZCBhbW91bnQgb2YgbW9uZXkgaW4gb25lIG9mIHRoZSBiYW5rIGlu
IExvbmRvbiBpbiBteSBuYW1lCmFzIGhpcyBuZXh0IG9mIGtpbi4KCkkgaGF2ZSBjb250YWN0ZWQg
dGhlIGJhbmsgYnkgY2FsbCBhbmQgYnkgZW1haWwgdG8gd2l0aGRyYXcgdGhlCm1vbmV5IHNvIHRo
YXQgSSBjYW4gc3RhcnQgYSBiZXR0ZXIgbGlmZSBhbmQgdGFrZSBjYXJlIG9mIG15c2VsZi4KVGhl
IGJyYW5jaCBtYW5hZ2VyIG9mIHRoZSBiYW5rIHdob20gSSBlbWFpbGVkIHRvbGQgbWUgdGhhdCBt
eQpGYXRoZXIncyBpbnN0cnVjdGlvbiB0byB0aGUgYmFuayB3YXMgdGhhdCB0aGUgbW9uZXkgc2hv
dWxkIGJlCnJlbGVhc2VkIHRvIG1lIG9ubHkgd2hlbiBJIGFtIG1hcnJpZWQgb3IgaWYgSSBwcmVz
ZW50IGEgdHJ1c3RlZQp3aG8gd2lsbCBoZWxwIG1lIGFuZCBpbnZlc3QgdGhlIG1vbmV5IG92ZXJz
ZWFzLgoKSSBoYXZlIGNob3NlbiB0byBjb250YWN0IHlvdSBhbmQgSSBiZWxpZXZlIHRoYXQgeW91
IHdpbGwgbm90CmJldHJheSBteSB0cnVzdCBvbiB5b3UsIHRob3VnaCB5b3UgbWF5IHdvbmRlciB3
aHkgSSBzbyBzb29uCnJldmVhbGVkIG15c2VsZiB0byB5b3Ugd2l0aG91dCBrbm93aW5nIHlvdSB3
ZWxsLCBJIGFtIGNvbnZpbmNlCnRoYXQgeW91IGFyZSB0aGUgcmVhbCBwZXJzb24gdG8gaGVscCBt
ZSBvdXQuIEkgd2lsbCBkaXNjbG9zZSBtdWNoCnRvIHlvdSBpZiB5b3UgY2FuIGFzc2lzdCBtZSB0
byByZWxvY2F0ZSB0byB5b3VyIGNvdW50cnkgYmVjYXVzZQpNeSB3aWNrZWQgdW5jbGUgaGFzIHRo
cmVhdGVuZWQgdG8gYXNzYXNzaW5hdGUgbWUuIFRoZSBhbW91bnQKaW52b2x2ZWQgaXMgJDEwLjUg
TWlsbGlvbiBEb2xsYXJzIHdpdGggc29tZSBraWxvcyBvZiBHb2xkIEJhcnMKYW5kIEkgaGF2ZSBj
b25maXJtZWQgZnJvbSB0aGUgYmFuayBpbiBMb25kb24gd2hlcmUgdGhlIEdvbGQgQkFSUwp3ZXJl
IGRlcG9zaXRlZC4gWW91IHdpbGwgYWxzbyBoZWxwIG1lIHRvIHBsYWNlIHRoZSBtb25leSBpbiBh
Cm1vcmUgcHJvZml0YWJsZSBidXNpbmVzcyB2ZW50dXJlcyBpbiB5b3VyIGNvdW50cnkuCgpIb3dl
dmVyIHlvdSB3aWxsIGhlbHAgbWUgYnkgcmVjb21tZW5kaW5nIGEgbmljZSB1bml2ZXJzaXR5IGlu
CnlvdXIgY291bnRyeSBzbyB0aGF0IEkgY2FuIGNvbXBsZXRlIG15IGVkdWNhdGlvbiwgaXQgaXMg
bXkKaW50ZW50aW9uIHRvIGNvbXBlbnNhdGUgeW91IHdpdGggMzAlIGZyb20gdGhlIHRvdGFsIG1v
bmV5IGZvcgp5b3VyIG5vYmxlIGFzc2lzdGFuY2UgYW5kIHRoZSBiYWxhbmNlIHNoYWxsIGJlIG15
IGNhcGl0YWwgZm9yCmVzdGFibGlzaG1lbnQgYWZ0ZXIgbXkgc2Nob29sLgoKCkluIHJlY2VpcHQg
b2YgeW91ciBiZWxvdyBpbmZvcm1hdGlvbiwgSSB3aWxsIHN1bW1pdCBhIGxldHRlciBvZgppbnRy
b2R1Y3Rpb24vcmVjb21tZW5kYXRpb24gdG8gdGhlIGJhbmsgaW1tZWRpYXRlbHkgaW4geW91ciBu
YW1lCmFzIG15IHRydXN0ZWUuIFBsZWFzZSByZWFkIHRoaXMgcHJvcG9zYWwgYXMgdXJnZW50IGFu
ZCBjb250YWN0IG1lCndpdGggeW91ciBpbmZvcm1hdGlvbiBiZWxvdzogaGVyZSBpcyBteSBwcml2
YXRlIGVtYWlsIGFkZHJlc3MuCijCoGRvcmlzZ29tbzRAZ21haWwuY29twqApCgoxLiBOYW1lIElu
IGZ1bGw6Li4uLi4uLi4uCjIuIEFkZHJlc3M6Li4uLi4uLi4uLi4uLi4KMy4gTmF0aW9uYWxpdHk6
Li4uLi4uLi4uLgo0LiBBZ2U6Li4uLi4uLi4uCjUuIFNleC4uLi4uLi4uLi4KNi4gT2NjdXBhdGlv
bjogLi4uLi4uLi4uLgo3LiBNYXJpdGFsIFN0YXR1czouLi4uLi4uCjguIFBob25lLi4uLi4uLi4u
CgpZb3VycyBGYWl0aGZ1bGx5LAoKTWlzcyBEb3JpcyBHb21vLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
