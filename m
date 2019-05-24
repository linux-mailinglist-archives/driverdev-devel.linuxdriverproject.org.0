Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2403429F75
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 21:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6000188C7F;
	Fri, 24 May 2019 19:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vaxqZSfcJI+k; Fri, 24 May 2019 19:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF3F088BE5;
	Fri, 24 May 2019 19:56:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D9301BF3FC
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AA0E88BE5
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 19:56:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E6e-u1WfJbZf for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 19:56:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from webmail.ntymail.com (webmail.ntymail.com [185.175.7.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D7AF889A4
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 19:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by webmail.ntymail.com (Postfix) with ESMTP id 6E14866FA8;
 Fri, 24 May 2019 21:48:31 +0200 (CEST)
Received: from webmail.ntymail.com ([127.0.0.1])
 by localhost (nmmta1.newmanity.corp [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eIaFOXGmIRhG; Fri, 24 May 2019 21:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by webmail.ntymail.com (Postfix) with ESMTP id 90DFE66FAD;
 Fri, 24 May 2019 21:48:30 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.9.2 webmail.ntymail.com 90DFE66FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntymail.com;
 s=3D29A920-1D11-11E6-B680-91943B2FE0E3; t=1558727310;
 bh=VrEdKPY3HAzGMQdTTYOAHK4/gYtC6HbkgjTcEKutkGE=;
 h=Date:From:Reply-To:Message-ID:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding;
 b=bFtnqylSTjA0ddiCd1bSN53ASHgWHciz0FxRUMxZe7BShmr9owt+5FMeQky6DJn8M
 k/u5e9KEtEpm0/x7BnzhJPr9/YoXCmcezSaCi29iAsfsxn7XzPapKmnH1AvtXCMfYq
 ydFlWqkhyqwoxCh5rjAbD/7AvFsbZ7d6I8ur6N8A=
X-Virus-Scanned: amavisd-new at newmanity.corp
Received: from webmail.ntymail.com ([127.0.0.1])
 by localhost (nmmta1.newmanity.corp [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6xhSgkOs9_Kx; Fri, 24 May 2019 21:48:30 +0200 (CEST)
Received: from nmstorefo1.newmanity.corp (nmstore2.newmanity.corp [10.50.1.51])
 by webmail.ntymail.com (Postfix) with ESMTP id 0B23366FA8;
 Fri, 24 May 2019 21:48:30 +0200 (CEST)
Date: Fri, 24 May 2019 21:48:29 +0200 (CEST)
From: Flora Michael <ritaboris06@ntymail.com>
Message-ID: <1784672003.29479615.1558727309970.JavaMail.zimbra@ntymail.com>
Subject: Bitte hilf mir, diesen Traum zu verwirklichen.
MIME-Version: 1.0
X-Originating-IP: [41.79.219.201]
X-Mailer: Zimbra 8.6.0_GA_1194 (ZimbraWebClient - GC74 (Win)/8.6.0_GA_1194)
Thread-Topic: Bitte hilf mir, diesen Traum zu verwirklichen.
Thread-Index: 9aNnVZWrIWJReoQjot4aYDm8yidUUg==
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
Reply-To: "fm332558@gmail.com" <fm332558@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Qml0dGUgaGlsZiBtaXIsIGRpZXNlbiBUcmF1bSB6dSB2ZXJ3aXJrbGljaGVuLgoKSWNoIGJpbiBG
cmF1IEZsb3JhIE1pY2hhZWwgYXVzIEthbmFkYS4gSWNoIGJpbiBtaXQgSGVycm4gS2VsbGVuIE1p
Y2hhZWwgdmVyaGVpcmF0ZXQsIGRlciBuZXVuIEphaHJlIGxhbmcgbWl0IGRlciBrYW5hZGlzY2hl
biBCb3RzY2hhZnQgaGllciBpbiBkZXIgUmVwdWJsaWsgQmVuaW4gZ2VhcmJlaXRldCBoYXQsIGJl
dm9yIGVyIDIwMTUgc3RhcmIuIFdpciB3YXJlbiBlbGYgSmFocmUgb2huZSBLaW5kIHZlcmhlaXJh
dGV0LiBFciBzdGFyYiBuYWNoIGt1cnplciBLcmFua2hlaXQsIGRpZSBudXIgdmllciBUYWdlIGRh
dWVydGUuIFZvciBzZWluZW0gVG9kIHd1cmRlbiB3aXIgYmVpZGUgd2llZGVyZ2Vib3Jlbi4KClNl
aXQgc2VpbmVtIFRvZCBoYWJlIGljaCBtaWNoIGVudHNjaGxvc3Nlbiwgd2VkZXIgd2llZGVyIHp1
IGhlaXJhdGVuIG5vY2ggZWluIEtpbmQgYXXDn2VyaGFsYiBtZWluZXMgRWhlaGF1c2VzIHp1IGJl
a29tbWVuLCBnZWdlbiBkYXMgc2ljaCBkaWUgQmliZWwgcmljaHRldC4gQWxzIG1laW4gdmVyc3Rv
cmJlbmVyIEVoZW1hbm4gbGVidGUsIGhpbnRlcmxlZ3RlIGVyIGRpZSBTdW1tZSB2b24gdmllciBN
aWxsaW9uZW4gU2llYmVuaHVuZGVydHRhdXNlbmQgVVMtRG9sbGFyICg3LDUgTWlsbGlvbmVuIFVT
RCkgaW4gZWluZXIgQmFuayBoaWVyIGluIGRlciBIYXVwdHN0YWR0IGRlciBCZW5pbi1SZXB1Ymxp
ayBQb3J0byBOb3ZvLiBEZXJ6ZWl0IGlzdCBkaWVzZXMgR2VsZCBub2NoIGJlaSBkZXIgQmFuayBo
aWVyIGluIGRlciBIYXVwdHN0YWR0IGRlciBiZW5pbmlzY2hlbiBSZXB1YmxpayBQb3J0byBOb3Zv
LgoKVm9yIGt1cnplbSwgbmFjaCBtZWluZXIgS3JhbmtoZWl0LCBzYWd0ZSBtaXIgbWVpbiBBcnp0
LCBpY2ggd8O8cmRlIGRpZSBuw6RjaHN0ZW4gYWNodCBNb25hdGUgd2VnZW4gS3JlYnNlcmtyYW5r
dW5nZW4gbmljaHQgZHVyY2hoYWx0ZW4sIHNhZ3RlIGljaCwgZGFzcyBzaWNoIGRpZXNlIEFydCB2
b24gS25vY2hlbmtyZWJzIGluIGRlbiBuw6RjaHN0ZW4gYWNodCBNb25hdGVuIG5pY2h0IGF1c2Jy
ZWl0ZW4gd2lyZCB1bmQgaWNoIG5pY2h0IG1laHIgbGViZS4gV2FzIG1pY2ggYWJlciBhbSBtZWlz
dGVuIHN0w7ZydCwgaXN0IG1laW5lIFNjaGxhZ2FuZmFsbGtyYW5raGVpdC4KCk5hY2hkZW0gaWNo
IG1laW5lbiBadXN0YW5kIGdla2FubnQgaGF0dGUsIGVudHNjaGllZCBpY2ggbWljaCwgZGllc2Vu
IEZvbmRzIGVpbmVyIEtpcmNoZSwgZWluZXIgT3JnYW5pc2F0aW9uIG9kZXIgZWluZXIgRWluemVs
cGVyc29uIHp1IHNwZW5kZW4sIGRpZSBkaWVzZXMgR2VsZCBhdWYgZGllIEFydCB1bmQgV2Vpc2Ug
dmVyd2VuZGVuIHdpcmQsIGRpZSBpY2ggaGllciBlcnRlaWxlLiBJY2ggbcO2Y2h0ZSBlaW5lIEtp
cmNoZSwgT3JnYW5pc2F0aW9uIG9kZXIgRWluemVscGVyc29uLCBkaWUgZGllc2VuIEZvbmRzIGbD
vHIgV2Fpc2VuaMOkdXNlciwgV2l0d2VuIHdpZSBtaWNoLCBkaWUgQXJtZW4gdW5kIEJlZMO8cmZ0
aWdlbiB1bmQgYXVjaCBmw7xyIGRpZSBWZXJicmVpdHVuZyBkZXMgV29ydGVzIEdvdHRlcyB1bmQg
ZsO8ciBkaWUgRXJoYWx0dW5nIGRlcyBIYXVzZXMgR290dGVzIGVpbnNldHplbiB3aXJkLgoKRGll
IEJpYmVsIGxpZcOfIHVucyB2ZXJzdGVoZW4sIGRhc3MgImdlc2VnbmV0IGRpZSBIYW5kIGlzdCwg
ZGllIGdpYnQiLiBJY2ggaGFiZSBkaWVzZSBFbnRzY2hlaWR1bmcgZ2V0cm9mZmVuLCB3ZWlsIGlj
aCBrZWluIEtpbmQgaGFiZSwgZGFzIGRpZXNlcyBHZWxkIGVyYmVuIHdpcmQsIHVuZCBkaWUgVmVy
d2FuZHRlbiBtZWluZXMgTWFubmVzIG5pY2h0IENocmlzdGVuIHNpbmQgdW5kIGljaCBuaWNodCBt
w7ZjaHRlLCBkYXNzIGRpZSBCZW3DvGh1bmdlbiBtZWluZXMgTWFubmVzIHZvbiBVbmdsw6R1Ymln
ZW4gZ2VudXR6dCB3ZXJkZW4uIEljaCBtw7ZjaHRlIGtlaW5lIFNpdHVhdGlvbiwgaW4gZGVyIGRp
ZXNlcyBHZWxkIGF1ZiBnb3R0bG9zZSBXZWlzZSB2ZXJ3ZW5kZXQgd2lyZC4gRGVzaGFsYiB0cmVm
ZmUgaWNoIGRpZXNlIEVudHNjaGVpZHVuZy4KCkljaCBoYWJlIGtlaW5lIEFuZ3N0IHZvciBkZW0g
VG9kLCBkYWhlciB3ZWnDnyBpY2gsIHdvaGluIGljaCBnZWhlbiBzb2xsLiBJY2ggd2Vpw58sIGlj
aCB3ZXJkZSBpbiBkZXIgQnJ1c3QgZGVzIEhlcnJuIHNlaW4uIEluIEV4b2R1cyAxNCBWUyAxNCBo
ZWnDn3QgZXMsIGRhc3MgZGVyIEhlcnIgbWVpbmVuIEZhbGwgYmVrw6RtcGZlbiB3aXJkIHVuZCBp
Y2ggd2VyZGUgbWVpbmUgUnVoZSBiZXdhaHJlbi4gIkljaCBicmF1Y2hlIGluIGRpZXNlciBIaW5z
aWNodCBrZWluZSB0ZWxlZm9uaXNjaGUgS29tbXVuaWthdGlvbiB3ZWdlbiBtZWluZXIgR2VzdW5k
aGVpdCB1bmQgZGFoZXIgZGVyIEFud2VzZW5oZWl0IGRlciBWZXJ3YW5kdGVuIG1laW5lcyBNYW5u
ZXMgaW1tZXIgdW0gbWljaCBoZXJ1bSBJY2ggbcO2Y2h0ZSwgZGFzcyBkaWUgVmVyd2FuZHRlbiBt
ZWluZXMgTWFubmVzIHZvbiBkaWVzZXIgRW50d2lja2x1bmcgZXJmYWhyZW4uIE1pdCBHb3R0IGlz
dCBhbGxlcyBtw7ZnbGljaC4KClNvYmFsZCBpY2ggSWhyZSBBbnR3b3J0IGVyaGFsdGUsIGdlYmU4
IGljaCBJaG5lbiBkaWUgS29udGFrdHBlcnNvbiBkZXIgQmFuaywgYmVpIGRlciBkaWUgR2VsZGVy
IG1laW5lcyB2ZXJzdG9yYmVuZW4gTWFubmVzIGVpbmdlemFobHQgd3VyZGVuLCBkYW1pdCBTaWUg
c2llIGRpcmVrdCBrb250YWt0aWVyZW4ga8O2bm5lbi4gSWNoIHNlbmRlIElobmVuIGF1Y2ggZWlu
IEVybcOkY2h0aWd1bmdzc2NocmVpYmVuLCBkYXMgU2llIGFscyBnZWdlbnfDpHJ0aWdlbiBCZWfD
vG5zdGlndGVuIGRpZXNlcyBGb25kcyBiZXdlaXN0LiBJY2ggbcO2Y2h0ZSwgZGFzcyBTaWUgdW5k
IGRpZSBLaXJjaGUgaW1tZXIgZsO8ciBtaWNoIGJldGVuLCB3ZWlsIGRlciBIZXJyIG1laW4gSGly
dGUgaXN0LiBNZWluIEdsw7xjayBpc3QsIGRhc3MgaWNoIGVpbiBMZWJlbiBlaW5lcyB3w7xyZGln
ZW4gQ2hyaXN0ZW4gZ2VsZWJ0IGhhYmUuCgpXZXIgZGVtIEhlcnJuIGRpZW5lbiB3aWxsLCBtdXNz
IGlobSBpbiBHZWlzdCB1bmQgV2FocmhlaXQgZGllbmVuLiBTZWkgYml0dGUgaW1tZXIgZWluIExl
YmVuIGxhbmcgaW0gR2ViZXQuIEplZGUgVmVyesO2Z2VydW5nIGluIElocmVyIEFudHdvcnQgZ2li
dCBtaXIgUmF1bSwgdW0gZWluZSBhbmRlcmUgUGVyc29uIGbDvHIgZGllc2VuIFp3ZWNrIHp1IGZp
bmRlbi4gQml0dGUgdmVyc2ljaGVybiBTaWUgbWlyLCBkYXNzIFNpZSBzaWNoIHdpZSBoaWVyIGJl
c2NocmllYmVuIHZlcmhhbHRlbiB3ZXJkZW4uIEljaCBob2ZmZSBhdWYgZWluZSBBbnR3b3J0IHZv
biBkaXIuCgpEYW5rZSB1bmQgR290dCBzZWduZSBkaWNoLgpNaXQgZnJldW5kbGljaGVuIEdyw7zD
n2VuCgpGcmF1IEZsb3JhIE1pY2hhZWwuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
