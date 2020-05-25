Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4EB1E0BC8
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 12:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C97A86237;
	Mon, 25 May 2020 10:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ne2uj532G1_l; Mon, 25 May 2020 10:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0D84860FF;
	Mon, 25 May 2020 10:27:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B35F1BF32B
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 10:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72EDD87A77
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 10:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V82pNrENFH12 for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 10:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-20.consmr.mail.ir2.yahoo.com
 (sonic313-20.consmr.mail.ir2.yahoo.com [77.238.179.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5E3A84FFF
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 10:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1590402420; bh=6Y7ZU9BahXi5DMHj+CdhAlt4QTrKMDKzjUJl1O/dew8=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=T0pOrD7cs0Fpkr4OaQKNtU77QK8e4zvAO0ImSfySv+pVFkD5i0/kpTbovhrPS+U2jZv+X5NXRt/4DLERJ5ZAOw+sH1WBQZ3Xb0Og6BrXduv7Ny2KhbUvcLbIvOHMiwHDkdZdI43R8xTSCaKQAZT98XYBfpCX1ahXnBPU/0iY42suSUrF2Vj3WQUbyolkzcP9GMMLXCRhBzXqIXXKPTUDJ93BWu/mitmGqx9CQInqbQp1PQpJf08q0R+1N2hlCHAhOig8aG/nA6uVBhZvgQ/K5soPV30cVvh+wjZ5Z9z/NL2dPr+xkQLO8izQIceKPzbNLzfC14I8WiT/WvXeXMkD8g==
X-YMail-OSG: hPcHnTkVM1mSUG8XAuwnZC4AINU7c_wGQ_.54iFA_FsrfJAGhAobUOZsKGU3Zdy
 jhHu.4qxSMLHyqUv04jd6z_VpJDk4siH4nsMxkGGl8mg5u7Ge8Y1KdmJZ6kn34D6BkYqF4oxeCaU
 xVLFqNMGwyoj98YQC_fURJGTmCustcgsHwuPf26wWEBjHmI2MXZmsh5IdlVPTkrwN0oexiR.D8db
 xZKuh05wMWL25CO_lsstsuEmMELpXfP4_2uBPAGFb4nDDzkVa0g3AbL9L_ULd28SPsgS.LLX4Tw.
 zlfLrjJ.QY3QzwDZURogqx20CoT0.5AnDOU8N5Nb4FCtGQsBTmpwZG0vtJ1v8wxlZzPPCGZg1ikw
 FXlcRYdtvsdKjI3aJv906wUOyUDYopPyluZ1i9RkURFuJ7JqfpE0pu6qagkPsjVFLm2sEsd6rb6U
 v9WzIR5FK_T48jcbdtIQv28wIlFsduVW9DsnqXXo.OvyfChyy.JuOTcvBsbaCUOXsfskbQ877_Gi
 kIO.duDhIp26.H5BI6Y77q7britWxPHS1fP55N4nV9zs8fbtjRN8g2nXpyQz95N0eUqTYbZYrTKn
 lG3Iug1p35JcFKKING_BYvRuSMX59cZcUWj7.Mkzy3jUUM6oWyyT7keiZNI5N16QB7_35l_JkDrO
 d8EMFTVJvFFx55YuRQXi7dGU3Kr5NWp8EyHjOl9Di_OZw4xDuL9t_Td9Y.UP4HdewTePGmiJ.3rR
 QK2.xCU0zvN_V_Eox6WhyMcZgmx2lW8yYYdcl7PZizqqxB8ZPKQ2ulNXNOZd3yphDomDCXfPx3ez
 1vdtzg16466BaTKWeygUc8kPDydCnfgtdpqTweIbySqNrZRHV6tkR_GmpC3ThEcxLJ.aKeDEOwmP
 1u0S.YTXXfycVYJfsFllDobRYE4fUjHimk4VZs2qLWZO87CrQLuuOeRoC9rd0C445eOosDkQH6IF
 upG69zuAm.MkZ3ohX0uRH_eEq8fjDjDLLdjurvBbs5.Xpmptta7zlBoKktZcIiTwa_a8rO0rdcJe
 X_zPXPIEreaiHelL1Fcc6rJVNDCWd7a9lzAfifpF8E_.KdlPAqmZWv9Yqfbov1bmMEIYiajTRu.J
 K3cXLscTDq2fC2Mvk0tWkcep_btA8ObTfXCTPnNQLNU7fSxWU0a3gnA.pDOkcHszUhBKPzttbf_o
 SVrKh0uuQVOyIVub2gDJy6Z1dszmKIy50o5dpiNU.tVsQEpqSdpQDqB9BtjNR4Y5tKYJpqfz.EL3
 ndL7J8C_WQCufCM9JmgEL3FtDz8LnOTovCx6CKhvwoRcJ.71qPSWvSs50Lf6qAWg4o50KOytXpD1
 .7q5TNQYniDPwpxT9LsPH03S4IfBXXAZUy5YKVcH1
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ir2.yahoo.com with HTTP; Mon, 25 May 2020 10:27:00 +0000
Date: Mon, 25 May 2020 10:26:55 +0000 (UTC)
From: Edward Caroline <edwardcaroline417@yahoo.com>
Message-ID: <360256457.5115448.1590402415984@mail.yahoo.com>
Subject: Good day,
MIME-Version: 1.0
References: <360256457.5115448.1590402415984.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15960 YMailNodin Mozilla/5.0 (Windows NT 6.1)
 AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36
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
Reply-To: mrs.carolineedward@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBkYXksCgpBbSBDYXJvbGluZSBFZHdhcmQsIGEgc3RhZmYgU2VyZ2VhbnQgaW4gdGhlIFVT
IEFybXkgcHJlc2VudGx5IHNlcnZpbmcgaW4gU3lyaWEgYXMgYSBjb21iYXQgaW5zdHJ1Y3Rvciwg
SSBzaW5jZXJlbHkgYXBvbG9naXplIGZvciBpbnRydWRpbmcgaW50byB5b3VyIHByaXZhY3ksIHRo
aXMgbWlnaHQgY29tZSBhcyBhIHN1cnByaXNlIHRvIHlvdSwgYnV0IG5vdGhpbmcgaXMgbW9yZSBk
aXN0cmVzc2luZyB0byBtZSBhdCB0aGlzIHRpbWUgYXMgaSBmaW5kIG15c2VsZiBmb3JjZWQgYnkg
ZXZlbnRzIGJleW9uZCBteSBjb250cm9sLCBpIGhhdmUgc3VtbW9uZWQgY291cmFnZSB0byBjb250
YWN0IHlvdS4gQW0gNDUgeWVhcnMgb2xkIGxhZHksIGFtIGEgd2lkb3cgYW5kIEkgaGFkIGEgc29u
IHdobyBpcyBub3cgMTYgeWVhcnMgb2YgYWdlLgoKU29tZSBtb25leSBpbiB2YXJpb3VzIGN1cnJl
bmNpZXMgd2hlcmUgZGlzY292ZXJlZCBpbiBiYXJyZWxzIGF0IGEgZmFybSBob3VzZSBpbiB0aGUg
bWlkZGxlIEVhc3QgZHVyaW5nIGEgcmVzY3VlIG9wZXJhdGlvbiBpbiBJcmFxIFdhcixhbmQgaXQg
d2FzIGFncmVlZCBieSBTdGFmZiBTZXJnZWFudCBLZW5uZXRoIEJ1ZmYgYW5kIG15c2VsZiB0aGF0
IHNvbWUgcGFydCBvZiB0aGVzZSBtb25leSBiZSBzaGFyZWQgYmV0d2VlbiBib3RoIG9mIHVzLCBJ
IHdhcyBnaXZlbiBhIHRvdGFsIG9mICgkNSBNaWxsaW9uIFVTIERvbGxhcnMpIGFzIG15IG93biBz
aGFyZSAsIEkga2VwdCB0aGlzIG1vbmV5IGluIGEgY29uc2lnbm1lbnQgZm9yIGEgbG9uZyB3aGls
ZSB3aXRoIGEgc2VjdXJpdHkgQ29tcGFueSB3aGljaCBpIGRlY2xhcmVkIGFuZCBkZXBvc2l0IGFz
IG15IHBlcnNvbmFsIGVmZmVjdHMgYW5kIGl0IGhhcyBiZWVuIHNlY3VyZWQgYW5kIHByb3RlY3Rl
ZCBmb3IgeWVhcnMgbm93IHdpdGggdGhlIGRpcGxvbWF0aWMgRGVsaXZlcnkgU2VydmljZS4KCk5v
dywgdGhlIFdBUiBpbiBJcmFxIGlzIG92ZXIsIGFuZCBhbGwgcG9zc2libGUgcHJvYmxlbXMgdGhh
dCBjb3VsZCBoYXZlIGVtYW5hdGVkIGZyb20gdGhlIHNoYXJlZCBtb25leSBoYXMgYmVlbiB0b3Rh
bGx5IGNsZWFuZWQgdXAgYW5kIGFsbCBmaWxlIGNsb3NlZCwgYWxsIHdoYXQgd2FzIGRpc2NvdmVy
ZWQgaW4gdGhlIE1pZGRsZSBFYXN0IGlzIG5vIG1vcmUgZGlzY3Vzc2VkLCBhbSBub3cgcmVhZHkg
dG8gcmV0aXJlIGZyb20gYWN0aXZlIHNlcnZpY2VzLCBidXQsIGkgbmVlZCBhIHRydXN0d29ydGh5
IHBlcnNvbiB0aGF0IGNhbiBoZWxwIG1lIHRha2UgcG9zc2Vzc2lvbiBvZiB0aGlzIGZ1bmRzIGFu
ZCBrZWVwIGl0IHNhZmUgd2hpbGUgaSB3b3JrIG9uIG15IHJlbGllZiBsZXR0ZXJzIHRvIGpvaW4g
eW91IHNvIHRoYXQgd2UgY291bGQgZGlzY3VzcyBwb3NzaWJsZSBidXNpbmVzcyBwYXJ0bmVyc2hp
cCB0b2dldGhlciB3aXRoIHRoZSBtb25leS4KCkJ1dCBJIHRlbGwgeW91IHdoYXQhIE5vIGNvbXBl
bnNhdGlvbiBjYW4gbWFrZSB1cCBmb3IgdGhlIHJpc2sgd2UgYXJlIHRha2VuIHdpdGggb3VyIGxp
dmVzLllvdSBjYW4gY29uZmlybSB0aGUgZ2VudWluZW5lc3Mgb2YgdGhlIGZpbmRpbmdzIGJ5IGNs
aWNraW5nIG9uIHRoaXMgd2ViIHNpdGU6ICAgaHR0cDovL25ld3MuYmJjLmNvLnVrLzIvaGkvbWlk
ZGxlX2Vhc3QvMjk4ODQ1NS5zdG0KCknigJltIHNlZWtpbmcgeW91ciBraW5kIGFzc2lzdGFuY2Ug
dG8gbW92ZSB0aGUgc3VtIG9mIFVTJDUgTWlsbGlvbiBEb2xsYXJzIHRvIHlvdSBhcyBmYXIgYXMg
SSBjYW4gYmUgYXNzdXJlZCB0aGF0IHRoZSBtb25leSB3aWxsIGJlIHNhZmUgaW4geW91ciBjYXJl
IHVudGlsIEkgIGNvbXBsZXRlIG15IHNlcnZpY2UgaGVyZSBpbiAoU1lSSUEpIGJlZm9yZSB0aGUg
ZW5kIG9mIHRoZSBtb250aC4gVGhlIG1vc3QgaW1wb3J0YW50IHRoaW5nIGlzOyDigJxDYW4gSSBU
cnVzdCB5b3XigJ0/LEFzIGFuIG9mZmljZXJzIG9uIEFDVElWRSBEVVRZIGFtIG5vdCBhbGxvd2Vk
IGFjY2VzcyB0byBtb25leSwgdGhlcmVmb3JlLCBpIGhhdmUgZGVjbGFyZWQgdGhlIGNvbnRlbnQg
b2YgdGhlIGNvbnNpZ25tZW50IGFzIHBlcnNvbmFsIGVmZmVjdCB0aGF0IGkgd291bGQgbGlrZSB0
byBiZSBkZWxpdmVyZWQgdG8gYSBmcmllbmQuIFlvdSB3aWxsIGJlIHJld2FyZGVkIHdpdGggMzAl
IG9mIHRoaXMgZnVuZHMgZm9yIHlvdXIgaGVscCwgYWxsIHRoYXQgaSByZXF1aXJlZCBpcyB5b3Vy
IHRydXN0IGJldHdlZW4gdXMgdGlsbCB0aGUgbW9uZXkgZ2V0IHRvIHlvdS4KClNpbmNlcmVseSwK
U2d0LiBDYXJvbGluZSBFZHdhcmQuCkVtYWlsOiBtcnMuY2Fyb2xpbmVlZHdhcmRAZ21haWwuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
