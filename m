Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BE8902BE2
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2024 00:53:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D272D60608;
	Mon, 10 Jun 2024 22:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxFAg5XkezT7; Mon, 10 Jun 2024 22:53:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED64560673
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED64560673;
	Mon, 10 Jun 2024 22:53:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 839C61BF3AE;
 Mon, 10 Jun 2024 22:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FA6C40547;
 Mon, 10 Jun 2024 22:53:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQRjUCMTbh8o; Mon, 10 Jun 2024 22:53:32 +0000 (UTC)
X-Greylist: delayed 5472 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 10 Jun 2024 22:53:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FCB140471
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FCB140471
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=172.245.21.194;
 helo=mail0.coutts.com; envelope-from=office1@wphca.org; receiver=<UNKNOWN> 
Received: from mail0.coutts.com (unknown [172.245.21.194])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FCB140471
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2024 22:53:31 +0000 (UTC)
From: "Jafar Script" <office1@wphca.org>
To: devel@driverdev.osuosl.org
Subject: Hier ist die letzte Warnung.
Date: 10 Jun 2024 23:25:33 +0200
Message-ID: <20240610232533.7220780005E29F7F@wphca.org>
MIME-Version: 1.0
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=quarantine dis=none)
 header.from=wphca.org
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

R3V0ZW4gVGFnIQoKSGllciBpc3QgZGllIGxldHp0ZSBXYXJudW5nLgoKSWhyIFN5c3RlbSB3dXJk
ZSBnZWtuYWNrdC4gV2lyIGhhYmVuIGRpZSBnZXNhbXRlbiBJbmZvcm1hdGlvbmVuIAp2b24gSWhy
ZW0gR2Vyw6R0IGF1ZiB1bnNlcmUgU2VydmVyIGtvcGllcnQuIEF1w59lcmRlbSBoYWJlbiB3aXIg
ZGFzIApWaWRlbyB2b24gSWhyZXIgS2FtZXJhIGF1Zmdlbm9tbWVuLCB3w6RocmVuZCBTaWUgc2lj
aCBlaW5lbiAKUG9ybm9maWxtIGFuZ2VzZWhlbiBoYWJlbi4KCk1laW4gVmlydXMgaGF0IElociBH
ZXLDpHQgw7xiZXIgZWluZSBXZWJzaXRlIGbDvHIgRXJ3YWNoc2VuZSAKaW5maXppZXJ0LCBkaWUg
U2llIGvDvHJ6bGljaCBiZXN1Y2h0IGhhYmVuLgoKRmFsbHMgU2llIG5pY2h0IHdpc3Nlbiwgd2ll
IGVzIGZ1bmt0aW9uaWVydCwga2FubiBpY2ggSWhuZW4gCkVpbnplbGhlaXRlbiBtaXR0ZWlsZW4u
IEVpbiBUcm9qYW5lciBnZXfDpGhydCBtaXIgdm9sbHN0w6RuZGlnZW4gClp1Z3JpZmYgdW5kIEtv
bnRyb2xsZSDDvGJlciBJaHIgR2Vyw6R0LiBEYWR1cmNoIGthbm4gaWNoIElocmVuIApCaWxkc2No
aXJtIHNlaGVuLCBkaWUgS2FtZXJhIHVuZCBkYXMgTWlrcm9mb24gYWt0aXZpZXJlbiB1bmQgU2ll
IAptZXJrZW4gbmljaHRzIGRhdm9uLgoKSWNoIGhhYmUgZWluIFZpZGVvIHZvbiBJaHJlbSBCaWxk
c2NoaXJtIHVuZCBkZXIgS2FtZXJhIAphdWZnZW5vbW1lbiB1bmQgZWluIFZpZGVvIGVyc3RlbGx0
LCBpbiBkZW0gZWluIFRlaWwgZGVzIApCaWxkc2NoaXJtcyB6ZWlndCwgd2llIFNpZSBtYXN0dXJi
aWVyZW4sIHVuZCBlaW4gYW5kZXJlciBUZWlsIGVpbiAKUG9ybm92aWRlbyB6ZWlndCwgZGFzIFNp
ZSBzaWNoIHp1IGRpZXNlbSBaZWl0cHVua3QgYW5nZXNlaGVuIApoYWJlbi4KCkljaCBrYW5uIGRp
ZSBnZXNhbXRlIExpc3RlIElocmVyIEtvbnRha3RlIGltIFRlbGVmb24gdW5kIGluIGRlbiAKc296
aWFsZW4gTmV0endlcmtlbiBzZWhlbi4KCkljaCBrYW5uIGRpZXNlcyBWaWRlbyBtaXQgZWluZW0g
ZWluemlnZW4gS2xpY2sgYW4gYWxsZSBLb250YWt0ZSAKaW4gSWhyZW0gVGVsZWZvbiwgcGVyIEUt
TWFpbCB1bmQgaW4gZGVuIHNvemlhbGVuIE5ldHp3ZXJrZW4gCnNlbmRlbi4gRGFyw7xiZXIgaGlu
YXVzIGthbm4gaWNoIGRpZSBEYXRlbiBJaHJlciBFLU1haWwgdW5kIElocmVyIApNZXNzZW5nZXIg
YW4gamVkZW4gc2VuZGVuLgoKRGllcyB3w7xyZGUgSWhyZW4gUnVmIGVuZGfDvGx0aWcgcnVpbmll
cmVuLgoKV2VubiBTaWUgc29sY2hlIEtvbnNlcXVlbnplbiB2ZXJoaW5kZXJuIG3DtmNodGVuLCBn
ZWhlbiBTaWUgd2llIApmb2xndCB2b3I6CgrDnGJlcndlaXNlIDQ3MDAgRVVSICAoQlRDOiAwLjA3
NTYyMTAyKSBhdWYgbWVpbiBCaXRjb2luLVdhbGxldC4KCihXZW5uIFNpZSBuaWNodCB3aXNzZW4s
IHdpZSBkYXMgZ2VodCwgZ2ViZW4gU2llIGluIEdvb2dsZSBlaW5lIApTdWNoemVpY2hlbmZvbGdl
IGVpbjog4oCeQml0Y29pbiBrYXVmZW7igJwpLgoKTWVpbiBCaXRjb2luLVdhbGxldCAoQlRDLVdh
bGxldCk6IApiYzFxNjJ3bDdxZHRzZDRhdDN5N204ZzdrOHQ0OGo4dTd6cXA0c3NjNm0KClVubWl0
dGVsYmFyIG5hY2ggZGVyIEd1dHNjaHJpZnQgZGVyIFphaGx1bmcgd2VyZGUgaWNoIElociBWaWRl
byAKbMO2c2NoZW4gdW5kIFNpZSBuaWNodCBtZWhyIGJlbMOkc3RpZ2VuLgoKU2llIGhhYmVuIDUw
IFN0dW5kZW4gKGV0d2FzIG1laHIgYWxzIDIgVGFnZSkgWmVpdCwgdW0gZGllIFphaGx1bmcgCnZv
cnp1bmVobWVuLgoKSWNoIGVyaGFsdGUgZWluZSBhdXRvbWF0aXNjaGUgQmVuYWNocmljaHRpZ3Vu
ZyDDvGJlciBkaWUgTGVrdMO8cmUgCmRpZXNlcyBCcmllZmVzLiBEZXIgVGltZXIgc3RhcnRldCBh
dcOfZXJkZW0gYXV0b21hdGlzY2gsIGRpcmVrdCAKbmFjaGRlbSBTaWUgZGllc2UgRS1NYWlsIGdl
bGVzZW4gaGFiZW4uCgpWZXJzdWNoZW4gU2llIG5pY2h0LCBzaWNoIGlyZ2VuZHdvIHp1IGJlc2No
d2VyZW4g4oCTIG1laW4gQlRDLQpXYWxsZXQga2FubiBuaWNodCB6dXLDvGNrdmVyZm9sZ3Qgd2Vy
ZGVuIHVuZCBlaW5lIEUtTWFpbCwgZGllIApJaG5lbiBkZW4gQnJpZWYgZ2VzY2hpY2t0IGhhdCwg
d2lyZCBhdXRvbWF0aXNjaCBlcnN0ZWxsdCDigJMgamVkZSAKQW50d29ydCB3w6RyZSBzaW5ubG9z
LgoKU29sbHRlbiBTaWUgdmVyc3VjaGVuLCBkaWVzZSBFLU1haWwgbWl0IGplbWFuZGVtIHp1IHRl
aWxlbiwgCnNlbmRldCBkYXMgU3lzdGVtIGF1dG9tYXRpc2NoIGVpbmUgQW5mcmFnZSBhbiBkaWUg
U2VydmVyIHVuZCAKZGllc2UgYmVnaW5uZW4sIGRpZSBnZXNhbXRlbiBJbmZvcm1hdGlvbmVuIGFu
IHNvemlhbGUgTmV0endlcmtlIAp6dSBzZW5kZW4uCgpEYXMgw4RuZGVybiB2b24gUGFzc3fDtnJ0
ZXJuIHNvemlhbGVyIE5ldHp3ZXJrZSwgZWluZXIgRS1NYWlsIHVuZCAKZGVzIEdlcsOkdHMgd8Ok
cmUgZWJlbmZhbGxzIHNpbm5sb3MsIGRhIGRpZSBnZXNhbXRlbiBEYXRlbiBiZXJlaXRzIAphdWYg
ZGVuIENsdXN0ZXIgbWVpbmVyIFNlcnZlciBoZXJ1bnRlcmdlbGFkZW4gd3VyZGVuLgoKS29udGFr
dGllcmVuIFNpZSBtaWNoIHBlciBFLU1haWwgKGphZmFyX3NjcmlwdEBvdXRsb29rLmNvbSkgbWl0
IApCZXRyZWZmOiAoKkRFVklDRUtFWTkyNzM3MzAqKQoKTmFjaCBkaWVzZW4gU2Nocml0dGVuIGVy
aGFsdGVuIFNpZSBwZXIgRS1NYWlsIGRlbiBTY2hsw7xzc2VsIHVuZCAKZWluIEVudHNjaGzDvHNz
ZWx1bmdzLVR1dG9yaWFsLgoKSWNoIHfDvG5zY2hlIGRpciB2aWVsIEdsw7xjayB1bmQgbWFjaCBr
ZWluZSBEdW1taGVpdGVuLiBEZW5rZW4gU2llIAphbiBJaHJlbiBSdWYuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
