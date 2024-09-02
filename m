Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CBD967EF0
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2024 07:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43B0A4019A;
	Mon,  2 Sep 2024 05:51:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cze44_bNXtwV; Mon,  2 Sep 2024 05:51:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8941405AB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8941405AB;
	Mon,  2 Sep 2024 05:51:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6201BF3F4
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 05:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65469607BE
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 05:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FQg0pc5bauPg for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2024 05:51:19 +0000 (UTC)
X-Greylist: delayed 463 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Sep 2024 05:51:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 768DD607C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 768DD607C0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.193.255.71;
 helo=verify.tdminvestors.com; envelope-from=grupo.abogados@tdminvestors.com;
 receiver=<UNKNOWN> 
Received: from verify.tdminvestors.com (verify.tdminvestors.com
 [104.193.255.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 768DD607C0
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 05:51:19 +0000 (UTC)
Received: from [45.157.233.148] (unknown [45.157.233.148])
 by verify.tdminvestors.com (Postfix) with ESMTPA id AB6F08B147
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 05:43:33 +0000 (UTC)
Received-SPF: pass (verify.tdminvestors.com: connection is authenticated)
From: GRUPO & ABOGADOS<grupo.abogados@tdminvestors.com>
To: devel@linuxdriverproject.org
Subject: Benachrichtigung
Date: 2 Sep 2024 07:43:32 +0200
Message-ID: <20240902074331.66D5C587BC229A0C@tdminvestors.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tdminvestors.com; 
 s=default; t=1725255814;
 bh=jsqq3B4NEgqYjwz5IwyW5Ghoh5VXy/qiwOygXzO3Vco=; h=From:To:Subject;
 b=UzfShUUQRrkGaWBc/tMrZeNbPMq4idwikYwlAwPt5AXykyuOF3WB+PydFuyOOZoLw
 ZdsKsO31kcAoRVgr9UScPIEmXuO/ZSCF/5A24sjlt2+SmuHwnlfQ6X/UY3yrDYNKUB
 XJ+2rrUxlChIYGim7MW1GwDq0fF20J8JvvnhSU7MC3lEOWo2NTygPfSjkR8pwKwTBM
 m9q9MufQK4Fu6r/H6Q++PfcO37efuZDJCWiT94XCPMZaeN4KZ538Re9WSZlMo+TA2V
 E3ym0rBCw8T93y3b83KLt45goAgudPO8u/GgEpGtTiOIr5BfuoRhPWUyBhohSngCkV
 VFo+u5Y9TBF/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=tdminvestors.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=tdminvestors.com header.i=@tdminvestors.com
 header.a=rsa-sha256 header.s=default header.b=UzfShUUQ
X-Mailman-Original-Authentication-Results: verify.tdminvestors.com;
 spf=pass (sender IP is 45.157.233.148)
 smtp.mailfrom=grupo.abogados@tdminvestors.com smtp.helo=[45.157.233.148]
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
Reply-To: diza9468@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q2VudHJhbCBMb3RlcmlhIE5hY2lvbmFsIEV1cm9wYS4KQ2FsbGUgRGUgRXNwb3ogWSBNaW5hLCAy
ODAxMiBNYWRyaWQsIFNwYWluClRFTC4vRkFYICAwMDM0IDk2MSAxMjcgNDk1CkVtYWlsOiBkaXph
bnRvbmlvMkBnbWFpbC5jb20K77+977+977+977+977+977+977+977+977+977+977+977+977+9
77+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+977+9
77+977+977+977+977+977+977+977+977+977+977+977+977+977+9CgpTZWhyIEdlZWhydGVy
IEt1bmRlCgpBYnNjaGxpZcOfZW5kZSBNaXR0ZWlsdW5nIGbDvHIgZGllIFphaGx1bmcgZGVzIG5p
Y2h0IGJlYW5zcHJ1Y2h0ZW4KUHJlaXNnZWxkZXMgV2lyIG3vv71jaHRlbiBTaWUgaW5mb3JtaWVy
ZW4sIGRhc3MgZGFzIELvv71ybyBkZXMgbmljaHQKQmVhbnNwcnVjaHRlbiBQcmVpc2dlbGRlcyBp
biBTcGFuaWVuLHVuc2VyZSBBbndhbHRza2FuemxlaQplcm5hbm50IGhhdCwgYWxzIGdlc2V0emxp
Y2hlIEJlcmF0ZXIgenUgaGFuZGVsbiwgaW4gZGVyClZlcmFyYmVpdHVuZyB1bmQgZGVyIFphaGx1
bmcgZWluZXMgUHJlaXNnZWxkZXMsIGRhcyBhdWYgSWhyZW0KTmFtZW4gZ3V0Z2VzY2hyaWViZW4g
d3VyZGUsIHVuZCBudW4gc2VpdCDvv73DvGJlciB6d2VpIEphaHJlbiBuaWNodApiZWFuc3BydWNo
dCB3dXJkZS4KCkRlciBHZXNhbXRiZXRyYWcgZGVyIGlobmVuIHp1c3RlaHQgYmV0cu+/vWd0IG1v
bWVudGFuIDIuNzQwLjMwMi4xMApFVVJPU0RhcyB1cnNwcu+/vW5nbGljaGUgUHJlaXNnZWxkIGJl
cnR1ZyAxLjgxNi40MTIsMDAgRVVST1MuIERpZXNlClN1bW1lIHd1cmRlIGZ1ZXIgbnVuIG1laHIg
YWxzIHp3ZWkgSmFocmUsIEdld2lubmJyaW5nZW5kCmFuZ2VsZWd0LCBkYWhlciBkaWUgYXVmc3Rv
Y2t1bmcgYXVmIGRpZSBvYmVuIGdlbmFubnRlCkdlc2FtdHN1bW1lLiBFbnRzcHJlY2hlbmQgZGVt
IELvv71yb3MgZGVzIG5pY2h0IEJlYW5zcHJ1Y2h0ZW4KUHJlaXNnZWxkZXMsd3VyZGUgZGllc2Vz
IEdlbGQgYWxzIG5pY2h0IGJlYW5zcHJ1Y2h0ZW4gR2V3aW5uCmVpbmVyIExvdHRlcmllIEZpcm1h
IGJlaSBpaG5lbiB6dW0gdmVyd2FsdGVuIG5pZWRlcmdlbGVndCB1bmQgaW4KaWhyZW0gTmFtZW4g
dmVyc2ljaGVydC4gTmFjaCBBbnNpY2h0IGRlciBMb3R0ZXJpZSBGaXJtYSB3dXJkZQppaG5lbiBk
YXMgR2VsZCBuYWNoIGVpbmVyIFdlaWhuYWNodHPvv71yZGVydW5nIGxvdHRlcmllCnp1Z2VzcHJv
Y2hlbi4gRGllIEt1cG9ucyB3dXJkZW4gdm9uIGVpbmVyIEludmVzdG1lbnRnZXNlbGxzY2hhZnQK
Z2VrYXVmdC5OYWNoIEFuc2ljaHQgZGVyIExvdHRlcmllIEZpcm1hIHd1cmRlbiBzaWUgZGFtYWxz
CkFuZ2VzY2hyaWViZW4gdW0gU2llIO+/vWJlciBkaWVzZXMgR2VsZCB6dSBpbmZvcm1pZXJlbiBl
cyBoYXQgc2ljaAphYmVyIGxlaWRlciBiaXMgenVtIEFibGF1ZiBkZXIgZ2VzZXR6dGVuIEZyaXN0
IGtlaW5lcgpnZW1lbGRldCB1bSBkZW4gR2V3aW5uIHp1IEJlYW5zcHJ1Y2hlbi4gRGllc2VzIHdh
ciBkZXIgR3J1bmQKd2VzaGFsYiBkYXMgR2VsZCB6dW0gdmVyd2FsdGVuIG5pZWRlcmdlbGVndCB3
dXJkZS4gR2Vt77+977+9IGRlcwpTcGFuaXNjaGVuIEdlc2V0emVzIG11c3MgZGVyIGluaGFiZXIg
YWxsZSB6d2VpIEphaHJlIHVlYmVyIHNlaW5lbgp2b3JoYW5kZW4gR2V3aW5uIGluZm9ybWllcnQg
d2VyZGVuLiBTb2xsdGUKZGFzcyBHZWxkIHdpZWRlciBuaWNodCBiZWFuc3BydWNodCB3ZXJkZW4s
LndpcmQgZGVyIEdld2lubgphYmVybWFscyB1ZWJlciBlaW5lIEludmVzdG1lbnRnZXNlbGxzY2hh
ZnQgZu+/vXIgZWluZSB3ZWl0ZXJlClBlcmlvZGUgdm9uIHp3ZWkgSmFocmVuIGFuZ2VsZWd0IHdl
cmRlbi5XaXIgc2luZCBkYWhlciwgZHVyY2ggZGFzCkLvv71ybyBkZXMgbmljaHQgYmVhbnNwcnVj
aHRlbiBQcmVpc2dlbGRzIGJlYXVmdHJhZ3QKd29yZGVuLCBzaWUgYW56dXNjaHJlaWJlbi5EaWVz
IGlzdCBlaW5lIE5vdGlmaWthdGlvbiBmw7xyIGRhcwpCZWFuc3BydWNoZW4gZGllc2VzIEdlbGRz
LgoKV2lyIG3vv71jaHRlbiBzaWUgZGFyYXVmIGhpbndlaXNlbiwgZGFzcyBkaWUgTG90dGVyaWUg
R2VzZWxsc2NoYWZ0Cu+/vWJlcnBy77+9ZmVuIHVuZCBiZXN077+9dGlnZW4gd2lyZCBvYiBpaHJl
IElkZW50aXTvv710IMO8YmVyZWluc3RpbW10CmJldm9yIGlobmVuIGlociBHZWxkIGF1c2JlemFo
bHQgd2lyZC4gV2lyIHdlcmRlbiBzaWUgYmVyYXRlbiwgd2llCnNpZSBpaHJlbiBBbnNwcnVjaCBn
ZWx0ZW5kIG1hY2hlbi4KQml0dGUgc2V0emVuIHNpZSBzaWNoIGRhZnVlciBtaXQgdW5zZXJlciBE
ZXV0c2NoIFNwcmFjaGlnZW4KUmVjaHRzYW53YWx0IGluIFZlcmJpbmR1bmcgRFIuIEFOVE9OSU8g
RElBIFRFTC4gMDAzNCA5NjEgMTI3CjQ5NSAuIEUtTUFJTC0gZGl6YW50b25pbzJAZ21haWwuY29t
IGlzdCB6dXN0w6RuZGlnIGbDvHIKQXVzemFobHVuZ2VuIGlucyBBdXNsYW5kIHVuZCB3aXJkIGlo
bmVuIGluIGRpZXNlciBzYWNoZSB6dXIgc2VpdGUKc3RlaGVuLiBEZXIgQW5zcHJ1Y2ggc29sbHRl
IHZvciBkZW4gMDctMTAtMjAyNCBnZWx0ZW5kIGdlbWFjaHQKd2VyZGVuLGRhIHNvbnN0IGRhcyBH
ZWxkIHdpZWRlciBhbmdlbGVndCB3ZXJkZW4gd8O8cmRlLiBXaXIKZnJldWVuIHVucyB2b24gSWhu
ZW4genUgaO+/vXJlbiwgd++/vWhyZW5kIHdpciBJaG5lbiB1bnNlcmUKUmVjaHRzaGlsZmUgVmVy
c2ljaGVybi4KCkJlc3RlIEdyw7zDn2UgRFIuQU5UT05JTyBESUEgQU5NRUxERUZPUk1VTEFSIEbD
nFIgREVOIEdFV0lOTkFOU1BSVUNICkJpdHRlIGdlYmVuIFNpZSBkaWUgZm9sZ2VuZGVuIEluZm9y
bWF0aW9uZW4sIHdpZSB1bnRlbiBnZWZvcmRlcnQsCkVtYWlsIGVzIHp1csO8Y2sgaW4gbWVpbiBC
w7xybyBzb2ZvcnQgZsO8ciB1bnMgaW4gZGVyIExhZ2UgenUgc2VpbgpkaWUgTGVnYWxpc2llcnVu
ZyBQcm96ZXNzIElocmVyIFBlcnPDtm5saWNoZSBpbnZlc3RpZXJ0ZXMKUHJlaXNnZWxkIHp1IHZl
cnZvbGxzdMOkbmRpZ2VuLCB1bmQgZGFzIEdlbGQgd2lyZCBJaG5lbiB2b24gZGVyClNhbnRhIEZp
bmFuY2UgQmFuayBhdXNnZXphaGx0LiBBbGxlIFByb3plc3Mgw5xiZXJwcsO8ZnVuZyBkdXJjaAp1
bnNlcmUgS2FuemxlaSBpc3QgZsO8ciBTaWUga29zdGVubG9zLCB3ZWlsIHVuc2VyZSBLb3N0ZW4g
d2VyZGVuCnZvbiBkZXIgaW50ZXJuYXRpb25hbGVuIExvdHRvIEtvbW1pc3Npb24gYW0gRW5kZSBk
ZXMgUHJvemVzc2VzIHp1CnphaGxlbiwgd2VubiBTaWUgSWhyIEdlbGQgZXJoYWx0ZW4uV2VubiBT
aWUgbmljaHQgZGllCmVyZm9yZGVybGljaGVuIEluZm9ybWF0aW9uZW4gdm9yIGRlciBaZWl0IGdl
Z2ViZW4gaGF0LCBr77+9bm5lbgppc3Tvv70gQW53YWx0c2thbnpsZWkgbmljaHQgaGFmdGJhciBn
ZW1hY2h0IHdlcmRlbiwgd2VubiBJaHIgR2VsZApyZWludmVzdGllcnQgd3VyZGUuCkVpbiBCZXN0
w6R0aWd1bmdzc2NocmVpYmVuIHdpcmQgSWhuZW4gZ2VmYXh0IHdlcmRlbiBzb2ZvcnQgd2Vubgp3
aXIga29tcGxldHRlIMOcYmVycHLDvGZ1bmcgZGVyIEluZm9ybWF0aW9uZW4gZGllIFNpZSB1bnMg
enVyClZlcmZ1Z3VuZyBzdGVsbGVuIGhhYmUsIEljaCB3ZXJkZSBkaWUgSW52ZXN0bWVudGJhbmsg
dW52ZXJ6w7xnbGljaArDvGJlciBkaWUgdm9uIElobmVuIGFuZ2VnZWJlbmUgSW5mb3JtYXRpb25l
biB6dSBrb21tZW4sIGJldm9yIHNpZQp3ZXJkZW4gbWl0IElobmVuIEtvbnRha3QgYXVmbmVobWVu
IGbDvHIgZGllIGF1c1phaGx1bmcgdm9uIElocmVtCkdlbGQgLiBJaHJlIERhdGVuIHdlcmRlbiB2
ZXJ0cmF1bGljaCBnZWhhbHRlbiBuYWNoIGRlcgpFdXJvcMOkaXNjaGVuIFVuaW9uIERhdGVuc2No
dXR6cmVjaHQuCgrvv70KVk9STkFNRU46ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKTkFNRU46ClJFRkVSRU5aIE5SOiBTV0tBLzYwLTkwMC8y
NCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogCkdFV0lOTlNVTU1FOgpB
TlNDSFJJRlQ6ClBPU1RMRUlUWkFITDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIApPUlQ6ClRFTEVGT046ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIApNT0JJTEU6ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCkZBWDoKR0VCVVJUU0RBVFVNOiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCkVNQUlMIDoK
CkRBVFVNOi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLlVOVEVS
U0NIUklGVDouCi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLkxvdGVyCmlhIE5hY2lvbmFsIEZpc2NhbCBZIEFjY2Vzb3JpYSBob3Jhcmlv
IGRlIGNvbnN1bHRhcyBMdW5lcy4g77+9ClZpZXJuZXMgRGUuIDA3IC0gMTggMzUgUmVnLiA3NTAy
MC8gTSBMIEEgJi4gbWllbWJybyBzZW5pb3IgZGVsCkNvbnNlam8gZGUgQ29uc3RpdHVjaW9uYWwg
ZGUgRXNwYcOxYSBFIE1haWwgOiAKZGl6YW50b25pbzJAZ21haWwuY29tCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
