Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 476D85813F8
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 15:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD03E60EA0;
	Tue, 26 Jul 2022 13:13:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD03E60EA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id brbFXyQ_sJjd; Tue, 26 Jul 2022 13:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09FBD60AE7;
	Tue, 26 Jul 2022 13:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09FBD60AE7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F0DAE1BF2B4
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 13:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D856F4171C
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 13:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D856F4171C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YexLg1poJtE4 for <devel@linuxdriverproject.org>;
 Tue, 26 Jul 2022 13:13:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5228B41089
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5228B41089
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 13:13:38 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 c19-20020a17090ae11300b001f2f94ed5c6so863080pjz.1
 for <devel@driverdev.osuosl.org>; Tue, 26 Jul 2022 06:13:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=1L3skQ4LxYebTOSQFwfE5FsDWrdJ8fWzviTQuLpyfxY=;
 b=UHtQRWXrGsOsWxgyqxj1i3KD/CHB3wDuDxiqUm5laqOC3lpfYzpT0Mwuh1aHKPc6fI
 8abirBDCXgLy5hjxDTsYL+hOPBF2MaRDPCLnaUbf6yQb3vEDKWQ5SBXh73TLsNHu7KVf
 MwLz9thnSX07NNuzOX7Lt4YEcKKTecKhQD4icxm/b2Fmhbt/7bWxjAPblTe8D7N8isrR
 eFIC5SOdqaw/xLGelBl3GLV0xJyFpjiatZKm1Tm+O+rvkMIwbLOU+qpaxnQXgZjLuWsU
 pBn5bU3xn+atkZbgj9y1HbnElu0HpJfiQlyiBGBrfgudIrcuWovKFvbf0uv+kcETDj6d
 ZL6A==
X-Gm-Message-State: AJIora/f+AjjKQGPxMi7wCXJvTqON180KkPl9T+yhzvVRwhQiuHvxLv+
 kdIzXsvZ9W7qC+G5A/hY1FpZF5wwCS7AMBW2Sjs=
X-Google-Smtp-Source: AGRyM1smtOEn71qUPmKBWSZdF7s9IIbGL08GSaSxhtcTx3d0VsTlVLS/Ptk0F+E4ZlleYi7lnZYRpOcXkHy6g/ApAio=
X-Received: by 2002:a17:90b:4a12:b0:1ef:a8bb:b475 with SMTP id
 kk18-20020a17090b4a1200b001efa8bbb475mr19328670pjb.124.1658841217551; Tue, 26
 Jul 2022 06:13:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:780f:b0:6b:6ad2:8016 with HTTP; Tue, 26 Jul 2022
 06:13:36 -0700 (PDT)
From: DAVIS JOHNSON <victoiradjokou@gmail.com>
Date: Tue, 26 Jul 2022 13:13:36 +0000
Message-ID: <CAObDnGy3cd6Zjn-R7N-WU-u9ubCnJtwfcHrZPt0rroY5K28MCA@mail.gmail.com>
Subject: ATM CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=1L3skQ4LxYebTOSQFwfE5FsDWrdJ8fWzviTQuLpyfxY=;
 b=iIVhfAKEgCcg9ALFOtddAQt1THtD9W3Neq+/0REQb9Y5tj6oo8Y8Nuu9xkpI7vewxn
 8T9mcAvO/1SSup9UxsEABy6qMLvQH7tYKFd2NkkiBf3yAg96ahK2qrUt81sU8KptERUL
 M+lhNlCLSOfEcfkbMXByDa/IvpcHelAz/vOkxdK05raD0UseiKzEqIm8UjCYLhed/883
 JjbbAiJvHImL4jjbFdyoJ2hevBfk571yY6xqlg3F93w03cgt20edgva9D6Z03pOlEPz6
 lh7KCgbcwBjy8UFL9UyHY2Z8mSCiNUOYGmllepgbb/mpSEDu3F/LNfbKYudLnlbgj4nz
 DhYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iIVhfAKE
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
Reply-To: angeladonald1980@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCk1laW4gbGllYmVyIEZyZXVuZCwKCkd1dGVuIFRhZywgbWVpbiBsaWViZXIgRnJldW5kLCB3
aWUgZ2VodCBlcyBkaXI/IEzDpG5nc3RlIFplaXQuIGljaCBmcmV1ZSBtaWNoIGbDvHIKdW0gU2ll
IMO8YmVyIG1laW5lbiBFcmZvbGcgYmVpIGRlciBFcmxhbmd1bmcgZGllc2VyCkVyYnNjaGFmdHNm
b25kc8O8YmVydHJhZ3VuZyBpbiBadXNhbW1lbmFyYmVpdCBtaXQgZWluZW0gbmV1ZW4gUGFydG5l
cgp6dSBpbmZvcm1pZXJlbi4KSWNoIGRlbmtlIGpldHp0IGFuIG1laW5lbiBBbnRlaWwgYW4gZGVu
IGdlc2FtdGVuCkF1c2xhbmRzaW52ZXN0aXRpb25zcHJvamVrdGVuIEluZGllbnMuCsOcYnJpZ2Vu
cyBoYWJlIGljaCBJaHJlIGJpc2hlcmlnZW4gQmVtw7xodW5nZW4gdW5kIEJlbcO8aHVuZ2VuIHp1
IGhlbGZlbgpuaWNodCB2ZXJnZXNzZW4uCmhhdCBtaWNoIGlyZ2VuZHdpZSBkYXJhbiBnZXNjaGVp
dGVydCwgZGllc2UgRXJic2NoYWZ0c2dlbGRlciB6dSDDvGJlcnRyYWdlbi4KS29udGFrdGllcmVu
IFNpZSBqZXR6dCBtZWluZSBTZWtyZXTDpHJpbiBpbiBMb21lIFRvZ28gV2VzdGFmcmlrYSwgaWhy
Ck5hbWUgaXN0IEFOR0VMQSBET05BTEQgdW50ZXIgRS1NYWlsIChhbmdlbGFkb25hbGQxOTgwQGdt
YWlsLmNvbSkKQml0dGVuIFNpZSBzaWUsIElobmVuIGRlbiBHZXNhbXRiZXRyYWcgKCQgMS41MDAu
MDAwKSB6dSBzZW5kZW4sIGVpbmUKTWlsbGlvbiBmw7xuZmh1bmRlcnR0YXVzZW5kIFVTLURvbGxh
ciwgZGllIGljaCBmw7xyIElocmUgZnLDvGhlcmVuCkJlbcO8aHVuZ2VuIHVuZCBWZXJzdWNoZSwg
bWljaCBiZWkgZGVyIFRyYW5zYWt0aW9uIHp1IHVudGVyc3TDvHR6ZW4sCmdlc3BhcnQgaGFiZS4K
SSBEYW5uIGhhYmUgaWNoIElocmUgQmVtw7xodW5nZW4gc2VociBnZXNjaMOkdHp0LiBGw7xobGVu
IFNpZSBzaWNoIGFsc28KZnJlaSB1bmQga29udGFrdGllcmVuIFNpZSBtZWluZSBTZWtyZXTDpHJp
biwgQU5HRUxBIERPTkFMRCwgdW5kIHNhZ2VuClNpZSBpaHIsIHdvaGluIHNpZSBlcyBzY2hpY2tl
biBzb2xsLiBnaWJ0IElobmVuIGRpZSBBVE0tS0FSVEUgw7xiZXIgZGVuCkdlc2FtdGJldHJhZyAo
VVMkMS41MDAuMDAwKS4gQml0dGUgbGFzc2VuIFNpZSBlcyBtaWNoIHdpc3NlbiwgZGFtaXQKd2ly
IGRpZSBGcmV1ZGUgc29mb3J0IHRlaWxlbiBrw7ZubmVuLCB3ZW5uIFNpZSBlcyBlcmhhbHRlbiwg
ZGFubiBkZW4KU2NobWVyei4KSWNoIGJpbiBpbiBkaWVzZW4gVGFnZW4gaGllciBzZWhyIGJlc2No
w6RmdGlndC4gQXVmZ3J1bmQgZGVyCkludmVzdGl0aW9uc3Byb2pla3RlLCBkaWUgaWNoIG1pdCBt
ZWluZW0gbmV1ZW4gSGF1cyBoYWJlLCBkZW5rZW4gU2llCmRhcmFuLCBQYXJ0bmVyLCBkYXNzIGlj
aCBtZWluZSBBbndlaXN1bmdlbiBzY2hsaWXDn2xpY2ggYW4gbWljaCBzZWxic3QKd2VpdGVyZ2Vn
ZWJlbiBoYWJlLiBTZWtyZXTDpHJpbiBpbiBJaHJlbSBOYW1lbiwgdW0gZWluZQpHZWxkYXV0b21h
dGVua2FydGUgenUgZXJoYWx0ZW4sIGFsc28gesO2Z2VybiBTaWUgbmljaHQsIHNpZSB6dSBuZWht
ZW4uCldlbm4gU2llIEFuZ2VsYSBEb25hbGQga29udGFrdGllcmVuLCB3aXJkIHNpZSBJaG5lbiBk
ZW4gQmV0cmFnCnp1c2VuZGVuLgpqZWRlIFZlcnrDtmdlcnVuZy4KCk1pdCBmcmV1bmRsaWNoZW4g
R3LDvMOfZW4sCgpIZXJyIERBVklTIEpPSE5TT04KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
