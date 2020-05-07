Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B97D11C855C
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 11:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C6B7726261;
	Thu,  7 May 2020 09:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dycnib-JfItd; Thu,  7 May 2020 09:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6935126129;
	Thu,  7 May 2020 09:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9269F1BF860
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 09:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88FAF872CC
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 09:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcbCbwb24ls8 for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 09:10:46 +0000 (UTC)
X-Greylist: delayed 00:13:14 by SQLgrey-1.7.6
Received: from mail118c50.megamailservers.eu (mail1475c50.megamailservers.eu
 [91.136.14.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B328D870E0
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 09:10:45 +0000 (UTC)
X-Authenticated-User: 017623705678@o2online.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1588841847;
 bh=9AVDDx9V2gYEDXeTNlt74d5XCNEQnpqZSN3VPF09Hgo=;
 h=To:From:Subject:Cc:Date:From;
 b=DFiwmbOa3bgHNh4E9inRazcp5ciZtrCxazNafTMLDonUPgSCmOd9v9TPzF+s77SnE
 y4i96EzAKd2AClwwSb+xMAfynZ1ywVT05uhToWTlr1vJsvRrWmH+A8C7gKtmJwUBgD
 Vi1KqGd1mhmSi/2iIxmC2efbA2yxdzcQYrrDPmTo=
Feedback-ID: 017623705678@o2
Received: from [192.168.2.2]
 (ipservice-092-210-125-153.092.210.pools.vodafone-ip.de [92.210.125.153])
 (authenticated bits=0)
 by mail118c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 0478vNmH019869; 
 Thu, 7 May 2020 08:57:25 +0000
To: hdegoede@redhat.com, Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
From: Tobias Baumann <017623705678@o2online.de>
Subject: RTL8723BS driver doesn't work for,me but I can help testing
Message-ID: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
Date: Thu, 7 May 2020 10:57:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: de-DE
X-Antivirus: AVG (VPS 200506-0, 06.05.2020), Outbound message
X-Antivirus-Status: Clean
X-CTCH-RefID: str=0001.0A782F27.5EB3CD45.009D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=KaGsTjQD c=1 sm=1 tr=0 a=hSNHuiTHMbSMD4yx1hjzQA==:117
 a=hSNHuiTHMbSMD4yx1hjzQA==:17 a=IkcTkHD0fZMA:10 a=oCcaPWc0AAAA:8
 a=xa8cPLTrDijPg6maogsA:9 a=QEXdDO2ut3YA:10 a=pHzHmUro8NiASowvMSCR:22
 a=nt3jZW36AmriUCFCBwmW:22
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gQ29tbXVuaXR5CgpJIHdhcyByZWZlcnJlZCB0byB5b3UgYnkgTWFydGluLiBJIGhhdmUg
YW4gb2xkZXIgQW5kcm9pZCBUViBib3ggdGhhdCAKcnVucyBmb3Igb3ZlciAzIHllYXJzIHdpdGgg
QXJtYmlhbiBMaW51eCAoRGViaWFuIEplc3NpZSBIZWFkbGVzcyBLZXJuZWwgCjMuMTAuOTkpLiBJ
J20gbG9va2luZyBmb3J3YXJkIHRvIHRoZSBuZXcga2VybmVscyBhbmQgSSdtIGdsYWQgdGhhdCBv
bGRlciAKaGFyZHdhcmUgaXMgc3RpbGwgc3VwcG9ydGVkLgpUb2dldGhlciB3aXRoIE9sZWcoYmFs
YmVzMTUwKSBhbmQgTWFydGluKHhkYXJrbGlnaHQpIEkgYW0gdGVzdGluZyB0aGUgCm5ldyBrZXJu
ZWwgNS54IGZvciBBUk0gKCBBbWxvZ2ljIFM4MTIgLyBNZXNvbjhtMiApIC4gTWFydGluIGhhcyB3
cml0dGVuIAphIHBhdGNoIGZvciB0aGUgU0RJTyBjb250cm9sbGVyIGluIHRoZSBsYXN0IGRheXMg
c28gdGhhdCBhbHNvIFdpZmkgCm1vZHVsZSBhbmQgTU1DIGFyZSByZWNvZ25pemVkLiBJIGNvdWxk
IG5vdyBzdWNjZXNzZnVsbHkgbG9hZCB0aGUgZHJpdmVyIAptb2R1bGUgUlRMV0lGSSBmcm9tIHRo
ZSBrZXJuZWwuIEJ1dCB1bmZvcnR1bmF0ZWx5IHRoZSBjYXJkIGlzIG9ubHkgCmxpc3RlZCBvbiB0
aGUgZGVza3RvcCBhcyAibm90IHJlYWR5IiBvciBpbiB0aGUgdGVybWluYWwgKGl3bGlzdCkgYXMg
Im5vIApzY2FuIHJlc3VsdCIuIEluIHRoZSBkbWVzZy9sc21vZCBSVExXSUZJLT5SVEw4NzIzYnMg
aXMgbG9hZGVkIGFuZCB0aGUgCm1vZHVsZSBpcyBsb2FkZWQgd2l0aCB2ZXJzaW9uIHY0LjMuNS41
XzEyMjkwLjIwMTQwOTE2X0JUQ09FWDIwMTQwNTA3LTRFNDAgLgoKCkkgd291bGQgbGlrZSB0byBh
c2sgeW91IHRvIGNoZWNrIHRoZSBkcml2ZXIgYmVjYXVzZSBldmVuIGluIGtlcm5lbCAKMy4xMC45
OSBhIG5ld2VyIHZlcnNpb24gKHY0LjMuMTZfMTM4NTQuMjAxNTA0MTBfQlRDT0VYMjAxNTAxMTkt
NTg0NCkgaXMgCmxvYWRlZCBhbmQgYWxzbyBhdCBnaXRodWIgYXJlIGhhcmQga2VybmVscyAoIHZl
cnNpb24gMjAxNyBLZXJuZWwgNC45PikgCmFuZCBhcDE3IGFuZCB0aGlyZHlvdXRoICh2NS4yLjE3
LjFfMjY5NTUuMjAxODAzMDdfQ09FWDIwMTgwMjAxLTZmNTIpLiAKTW9yZSByZWNlbnQgb25lcyBj
YW4gYWxzbyBiZSBmb3VuZCAtIHRoZXNlIGhhdmUgYWxyZWFkeSBiZWVuIApzdWNjZXNzZnVsbHkg
dGVzdGVkIHdpdGggRGViaWFuIDEwLiBpIGhvcGUgdGhhdCB0aGlzIG1heSBzb2x2ZSB0aGUgCnBy
b2JsZW0gd2l0aCBteSBMaW51eCBib3guCgpJIHdvdWxkIGFwcHJlY2lhdGUgZmVlZGJhY2sgb24g
dGhpcyByZXF1ZXN0IG9yIGluZm9ybWF0aW9uIGFib3V0IApkZWJ1Z2dpbmcgLiBNeSBMaW51eCBi
b3ggaXMgYWxzbyBhdmFpbGFibGUgZm9yIHRlc3RpbmcgcHVycG9zZXMKCktpbmRseQpUb2JpYXMg
QmF1bWFubiAoUmFwdG9yU0RTKQoKCgotLSAKRGllc2UgRS1NYWlsIHd1cmRlIHZvbiBBVkcgYXVm
IFZpcmVuIGdlcHLDvGZ0LgpodHRwOi8vd3d3LmF2Zy5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
