Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F99D7FCDAD
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Nov 2023 04:57:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FEE784388;
	Wed, 29 Nov 2023 03:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEE784388
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOdwdPNxtX16; Wed, 29 Nov 2023 03:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E6D984387;
	Wed, 29 Nov 2023 03:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E6D984387
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2818F1BF302
 for <devel@linuxdriverproject.org>; Wed, 29 Nov 2023 03:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B8C040139
 for <devel@linuxdriverproject.org>; Wed, 29 Nov 2023 03:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B8C040139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMV2N_Ut8oyY for <devel@linuxdriverproject.org>;
 Wed, 29 Nov 2023 03:57:35 +0000 (UTC)
X-Greylist: delayed 14359 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Nov 2023 03:57:35 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00D6D40106
Received: from mail0.mid-americanmachine.com (unknown [198.23.242.202])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00D6D40106
 for <devel@driverdev.osuosl.org>; Wed, 29 Nov 2023 03:57:34 +0000 (UTC)
From: Tech@osuosl.org, "Guys <noreply"@suncor.com
To: devel@driverdev.osuosl.org
Subject: =?UTF-8?B?UmU6IElocmUgcGVyc8O2bmxpY2hlbiBEYXRlbiBzaW5kIGR1cmNoZ2VzaWNrZXJ0?=
Date: 28 Nov 2023 22:42:36 +0100
Message-ID: <20231128224235.EF184AFB2515D818@suncor.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osuosl.org; s=default; t=1701230257;
 bh=dquMOXf6vT9mFX43bzuHfBHwmZJKk+Frz7dvXA9WBos=;
 h=From:To:Subject:Date:From;
 b=z+Vp8fxFkIvTcGTtd2iLW134oKqiluZb7dpVESKMh50RLPMwLTORpDzzLuqyYiJ9Z
 Ub0UpW5+Fq9XjDrBTD8om4LeoZkrtj7K3dYn50cAsmCTJqrGpZ3bO02S3ihmVrSRCK
 MrjmnElwo6foGSxsMD7UASTWuBYdweDZJIgdHhS9IbqXNOlmlqLUwSLHfzDGkB1iKp
 NmWDqHc4MEdx7u2wbeo6D2F+ySi1Jlnz5t2bLNaGSuoP8rtCXgkHryttC+6L0KExdh
 XQJCQXPBvSrr/yicrj2icpUtkpu1HGlRAbpTD5Uw/4KzjuleYhS8gZDw5ZoB7dyP7G
 syGyTuJb8ddLg==
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

SGFsbG8hCgpJY2ggYmluIGVpbiBwcm9mZXNzaW9uZWxsZXIgSGFja2VyIHVuZCBoYWJlIGVzIGVy
Zm9sZ3JlaWNoIApnZXNjaGFmZnQsIElociBCZXRyaWVic3N5c3RlbSB6dSBoYWNrZW4uCkRlcnpl
aXQgaGFiZSBpY2ggdm9sbGVuIFp1Z3JpZmYgYXVmIElocmUgR2Vyw6R0ZS4KCkRhcsO8YmVyIGhp
bmF1cyBoYWJlIGljaCBoZWltbGljaCBhbGxlIElocmUgQWt0aXZpdMOkdGVuIMO8YmVyd2FjaHQg
CnVuZCBTaWUgbWVocmVyZSBNb25hdGUgbGFuZyBiZW9iYWNodGV0LgpEaWUgU2FjaGUgaXN0LCBk
YXNzIElociBHZXLDpHQgbWl0IHNjaMOkZGxpY2hlciBTcHl3YXJlIGluZml6aWVydCAKd3VyZGUs
IHdlaWwgU2llIHp1dm9yIGVpbmUgV2Vic2l0ZSBtaXQgUG9ybm9pbmhhbHRlbiBiZXN1Y2h0IApo
YXR0ZW4uIOKVrSDhkY4g4pWuCgpMYXNzZW4gU2llIG1pY2ggSWhuZW4gZXJrbMOkcmVuLCB3YXMg
ZGFzIGJlZGV1dGV0LiBEYW5rIFRyb2phbmVyLQpWaXJlbiBrYW5uIGljaCB2b2xsc3TDpG5kaWdl
biBadWdyaWZmIGF1ZiBJaHJlbiBDb21wdXRlciBvZGVyIApqZWRlcyBhbmRlcmUgR2Vyw6R0IGVy
aGFsdGVuLCBkYXMgU2llIGJlc2l0emVuLgpEYXMgYmVkZXV0ZXQsIGRhc3MgaWNoIGplZGVyemVp
dCBvaG5lIElocmUgRXJsYXVibmlzIGFic29sdXQgCmFsbGVzIGF1ZiBJaHJlbSBCaWxkc2NoaXJt
IHNlaGVuIHVuZCBkaWUgS2FtZXJhIHNvd2llIGRhcyAKTWlrcm9mb24gZWluc2NoYWx0ZW4ga2Fu
bi4KRGFyw7xiZXIgaGluYXVzIGthbm4gaWNoIGF1Y2ggYXVmIElocmUgdmVydHJhdWxpY2hlbiBJ
bmZvcm1hdGlvbmVuIApzb3dpZSBJaHJlIEUtTWFpbHMgdW5kIENoYXRuYWNocmljaHRlbiB6dWdy
ZWlmZW4gdW5kIGRpZXNlIAplaW5zZWhlbi4KClNpZSBmcmFnZW4gc2ljaCB2aWVsbGVpY2h0LCB3
YXJ1bSBJaHIgQW50aXZpcmVucHJvZ3JhbW0gbWVpbmUgClNjaGFkc29mdHdhcmUgbmljaHQgZXJr
ZW5uZW4ga2Fubi4KTGFzc2VuIFNpZSBlcyBtaWNoIGbDvHIgU2llIGF1ZnNjaGzDvHNzZWxuOiBJ
Y2ggdmVyd2VuZGUgc2Now6RkbGljaGUgClNvZnR3YXJlLCBkaWUgdHJlaWJlcmJhc2llcnQgaXN0
LgpEYWR1cmNoIHdlcmRlbiBkaWUgU2lnbmF0dXJlbiBhbGxlIDQgU3R1bmRlbiBha3R1YWxpc2ll
cnQsIHNvZGFzcyAKSWhyIEFudGl2aXJlbnByb2dyYW1tIGRpZSBBbndlc2VuaGVpdCBkZXMgVmly
dXMgbmljaHQgZXJrZW5uZW4gCmthbm4uCgpJY2ggaGFiZSBlaW5lIFZpZGVvenVzYW1tZW5zdGVs
bHVuZyBlcnN0ZWxsdCwgZGllIGF1ZiBkZXIgbGlua2VuIApTZWl0ZSBkaWUgU3plbmVuIHplaWd0
LCBpbiBkZW5lbiBkdSBnbMO8Y2tsaWNoIG1hc3R1cmJpZXJzdC4Kd8OkaHJlbmQgYXVmIGRlciBy
ZWNodGVuIFNlaXRlIGRhcyBWaWRlbyBhbmdlemVpZ3Qgd2lyZCwgZGFzIFNpZSAKZ2VyYWRlIGFu
Z2VzZWhlbiBoYWJlbi4u4bWULuG1lAoKSWNoIG11c3MgZGllc2VzIFZpZGVvIGxlZGlnbGljaCBh
biBhbGxlIEUtTWFpbC1BZHJlc3NlbiB1bmQgCk1lc3Nlbmdlci1Lb250YWt0ZSBkZXIgUGVyc29u
ZW4gd2VpdGVyZ2ViZW4sIG1pdCBkZW5lbiBTaWUgYXVmIApJaHJlbSBHZXLDpHQgb2RlciBQQyBr
b21tdW5pemllcmVuLgpEYXLDvGJlciBoaW5hdXMga2FubiBpY2ggYXVjaCBhbGxlIElocmUgRS1N
YWlscyB1bmQgSWhyZW4gCkNoYXR2ZXJsYXVmIMO2ZmZlbnRsaWNoIG1hY2hlbi4KCkljaCBnbGF1
YmUsIGRhc3MgU2llIGRpZXMgYXVmIGplZGVuIEZhbGwgdmVybWVpZGVuIG3DtmNodGVuLgpGb2xn
ZW5kZXMgbcO8c3NlbiBTaWUgdHVuOiDDnGJlcndlaXNlbiBTaWUgZGVuIEJpdGNvaW4tR2VnZW53
ZXJ0IAp2b24gMCwxNDYzNjk4OSB2b24gNS4wMDAgRVVSIGF1ZiBtZWluIEJpdGNvaW4tS29udG8K
KERhcyBpc3QgZWhlciBlaW4gZWluZmFjaGVyIFZvcmdhbmcsIGRlbiBTaWUgb25saW5lIG5hY2hs
ZXNlbiAKa8O2bm5lbiwgZmFsbHMgU2llIG5pY2h0IHdpc3Nlbiwgd2llIGRhcyBnZWh0KS4KCk5h
Y2hmb2xnZW5kIGZpbmRlbiBTaWUgbWVpbmUgQml0Y29pbi1Lb250b2luZm9ybWF0aW9uZW4gKEJp
dGNvaW4tCldhbGxldCk6IDE4ZWlRWFFkRjNXZnRiYXhrTnFOQVJNZ2I0NW13N3JyNlcKClNvYmFs
ZCBkZXIgZXJmb3JkZXJsaWNoZSBCZXRyYWcgYXVmIG1laW4gS29udG8gw7xiZXJ3aWVzZW4gaXN0
LCAKd2VyZGUgaWNoIGFsbGUgZGllc2UgVmlkZW9zIGzDtnNjaGVuIHVuZCBhdWNoIGVpbiBmw7xy
IGFsbGUgTWFsIGF1cyAKSWhyZW0gTGViZW4gdmVyc2Nod2luZGVuLgpCaXR0ZSBzdGVsbGVuIFNp
ZSBzaWNoZXIsIGRhc3MgU2llIGRlbiBvYmVuIGdlbmFubnRlbiBUcmFuc2ZlciAKaW5uZXJoYWxi
IHZvbiA1MCBTdHVuZGVuICgyIFRhZ2UgKykgYWJzY2hsaWXDn2VuLgpJY2ggZXJoYWx0ZSBkaXJl
a3QgbmFjaCBkZW0gw5ZmZm5lbiBkaWVzZXIgRS1NYWlsIGVpbmUgCkJlbmFjaHJpY2h0aWd1bmcg
dW5kIGRlciBDb3VudGRvd24gYmVnaW5udC4KCktvbnRha3RpZXJlbiBTaWUgbWljaCBwZXIgRS1N
YWlsIHRlY2hnMDAxNDdAZ21haWwuY29tLCBLb3BpZSBhbiAKbWozNzc4NjgyQG91dGxvb2suY29t
IG1pdCBCZXRyZWZmOiAoMDEyVklQLVJFU1RPUkVLRVlQQzQxMDI5MzQpCk5hY2ggZGllc2VuIFNj
aHJpdHRlbiBlcmhhbHRlbiBTaWUgcGVyIEUtTWFpbCBkZW4gU2NobMO8c3NlbCB1bmQgCmVpbiBF
bnRzY2hsw7xzc2VsdW5ncy1UdXRvcmlhbC4KClZlcnRyYXVlbiBTaWUgbWlyLCBpY2ggYmluIHNl
aHIgdm9yc2ljaHRpZywgYmVyZWNobmVuZCB1bmQgbWFjaGUgCm5pZSBGZWhsZXIuCldlbm4gaWNo
IGhlcmF1c2ZpbmRlLCBkYXNzIFNpZSBkaWVzZSBOYWNocmljaHQgbWl0IGFuZGVyZW4gCmdldGVp
bHQgaGFiZW4sIHdlcmRlIGljaCBJaHJlIHByaXZhdGVuIFZpZGVvcyBzb2ZvcnQgCnZlcsO2ZmZl
bnRsaWNoZW4uCgpWaWVsIEdsw7xjayEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
