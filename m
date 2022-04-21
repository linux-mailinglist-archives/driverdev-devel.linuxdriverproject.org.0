Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1FD509F41
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Apr 2022 14:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D224060A73;
	Thu, 21 Apr 2022 12:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4zQxj539dhk; Thu, 21 Apr 2022 12:03:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 732F0607A1;
	Thu, 21 Apr 2022 12:03:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7611E1BF9B5
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 12:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72E2741B4A
 for <devel@linuxdriverproject.org>; Thu, 21 Apr 2022 12:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sbe0c-W0LxJN for <devel@linuxdriverproject.org>;
 Thu, 21 Apr 2022 12:03:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1AEF141B45
 for <devel@driverdev.osuosl.org>; Thu, 21 Apr 2022 12:03:49 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id el3so1426442edb.11
 for <devel@driverdev.osuosl.org>; Thu, 21 Apr 2022 05:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=+n80GvhxuiiRhkzU6A8dS53BEh8XR23+3pX9P1i4bF0=;
 b=q3OTHQpWCE83+acTzVuHpQS1PyKsnakKXwMZqtjf77dAgRZBWmKft9gWhe9nwKDbT8
 piAvivCKKA+5TuyE6ipFZJwwj2D7v/Ug6hS4pPDpjMACVFk3/r8GMdxv5KfQ/WGIG2Ap
 8H3SVb4mVNWuOK095jNqMKTyR83+zwv6/a6Q14HIzTL8ufZorO68WrjITyn7pfWX0VdH
 TInHohJ68+Ke3WKAbzZHR/s7IWbs8SXJu2KSEFTLdLsDjOxWpsLwVkk9B78UnFeQPEaG
 RUT+MoaLcilzrA723uJ3Q9LHEl3CxHLU9o53FnM8BfimlHn6g/ofRhzUXGHKTrYQwMMQ
 gkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=+n80GvhxuiiRhkzU6A8dS53BEh8XR23+3pX9P1i4bF0=;
 b=6S69bAZh1B/CZqEacnJy/D/2eM/xn0fXWsIczJtyL9RZ+3tUE3Tr8/gmVj49KCRsod
 lczaKoGozZcopiOiSJ5zVbg204Wi32M16IH/yvqmzZq58qCU58fOp1qwiDE6Pzt6HeGA
 bqsf/IVjCAtrmqErUIRKjWpWzCTMcJvz3QU5NgD2/vfxkUlPTZqF3xpWehYWpk4V1dhE
 RuhoFsXdtjmhwvGf3sWxtbahYIiQ5uprLX133nBUCM2vfuf2u9TY6mmaWlQk+mO2FBvU
 1h+QRQ+3tuEiPacHhg4yBiMNe4T9k+cfKursZfJOg5gjFMeXHMls9TzbIh4noIuHeXO/
 k6WA==
X-Gm-Message-State: AOAM533Aj/dSDHxVZoGlQHwGHaIzoJTEIi1REfnR5EsHu//LEw0BSxUh
 JldmVtdgHDLw8yrhU4LzxJgE6nXSjESudEWtsrw=
X-Google-Smtp-Source: ABdhPJyycVOdRyDYTlGQZZDI2Z00zLw7C/DDe6xFtQvsZ0ztUpByeUI0aN6egiuoltd8xdd2pIzq3piSIeabNTuaJJs=
X-Received: by 2002:a05:6402:7d3:b0:41d:9152:cad with SMTP id
 u19-20020a05640207d300b0041d91520cadmr29171948edy.370.1650542628162; Thu, 21
 Apr 2022 05:03:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:1f55:0:0:0:0 with HTTP; Thu, 21 Apr 2022 05:03:47
 -0700 (PDT)
From: POST OFFICE <onyechieevelyn77@gmail.com>
Date: Thu, 21 Apr 2022 12:03:47 +0000
Message-ID: <CAJ3m+xGrjNXxQ5JAPS15OCJjxhmRJQmQw4JMrDEYSwzsATtUBw@mail.gmail.com>
Subject: =?UTF-8?Q?Estimado_propietario_de_correo_electr=C3=B3nico?=
To: undisclosed-recipients:;
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
Reply-To: tonyelumelu5501@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QklFTlZFTklETyBBTCBDT1JSRU8gRUxFQ1RSw5NOSUNPIE9GSUNJQUwgREUgTEEgSS5NLkYuIFNF
w5FPUkEuCkRJUkVDVE9SLiBLUklTVEFMSU5BIEdFT1JHSUVWQS4gTlVFU1RSTyBJTkZPUk1FOiBG
T05ETyBERSBDT01QRU5TQUNJw5NOClVCVCAoVU5JT04gQkFOSyBPRiBUT0dPTEVTRSkgREUgJCAx
LjIwMCwwMDAuMDAgVVNELgoKU2FsdWRvcyBFc3RpbWFkbyBwcm9waWV0YXJpbyBkZSBjb3JyZW8g
ZWxlY3Ryw7NuaWNvIQoKU295IGxhIFNyYS4gS3Jpc3RhbGluYSBHZW9yZ2lldmEsIERpcmVjdG9y
YSB5IFByZXNpZGVudGEgKEZNSSkgZGUKQWtvZGVzc2V3YS1Ub2dvLiBMZXMgaW5mb3JtYW1vcyBx
dWUgZWwgRm9uZG8gTW9uZXRhcmlvIEludGVybmFjaW9uYWwKKEZNSSkgZW4gV2FzaGluZ3Rvbiwg
REMsIEVFLlVVLiB2aXNpdMOzIG51ZXN0cm8gcGHDrXMgcGFyYSBlc3R1ZGlhciBsYQppbnZlc3Rp
Z2FjacOzbiBkZSBmcmF1ZGUgZW4gbMOtbmVhOyBIYSByZWNpYmlkbyBlc3RhIGluZm9ybWFjacOz
biBob3kKcG9ycXVlIHN1IGRpcmVjY2nDs24gZGUgY29ycmVvIGVsZWN0csOzbmljbyBzZSBlbmNv
bnRyw7MgZW4gbGEgbGlzdGEgZGUKdsOtY3RpbWFzIGRlIGZyYXVkZSBlbiBlc3RlIHBhw61zIHkg
w4FmcmljYS4KCkluZm9ybWFjacOzbiBhZGljaW9uYWwgKEZNSSksIFdhc2hpbmd0b24sIERDLiBj
b21wZW5zYSBhIHRvZG9zIGxvcwpwYcOtc2VzIHF1ZSBmdWVyb24gZGVmcmF1ZGFkb3JlcyBlbiBu
dWVzdHJvIHBhw61zLCB5IHN1IGRpcmVjY2nDs24gZGUKY29ycmVvIGVsZWN0csOzbmljbyBmdWUg
ZW5jb250cmFkYSBlbiBlc3RhcyBsaXN0YXMgZGUgdsOtY3RpbWFzLiDCoUFzaQpxdWUhIE51ZXN0
cm8gYmFuY28gaGEgY29uZmlhZG8gKElNRikgbGEgbGliZXJhY2nDs24gZGUgc3UgZm9uZG8gZGUK
Y29tcGVuc2FjacOzbiB1dGlsaXphbmRvIGVsIG3DqXRvZG8gQVRNIENBUkQuCgpOb3MgZGltb3Mg
Y3VlbnRhIGRlIHF1ZSBhbGd1bm9zIG1hdG9uZXMvaW1wb3N0b3JlcyBoYW4gZXN0YWRvIHVzYW5k
bwplbCBub21icmUgZGUgZXN0ZSBiYW5jbyBwYXJhIGhhY2Vyc2UgcGFzYXIgcG9yIGV4dG9yc2lv
bmFkb3JlcyB5CnRhbWJpw6luIGRlc3ZpYXIgZWwgZm9uZG8gZGUgbnVlc3RybyBjbGllbnRlLCBl
biBlc2UgY2FzbywgbGUKYWNvbnNlamFyZW1vcyBxdWUgaWdub3JlIGN1YWxxdWllciBjb211bmlj
YWNpw7NuIHBvciBjb3JyZW8KZWxlY3Ryw7NuaWNvL3RlbMOpZm9ubyBjb24gY3VhbHF1aWVyIHBl
cnNvbmEvb3JnYW5pemFjacOzbiBxdWUgYWZpcm1lCmVzdGFyIGVuIHBvc2VzacOzbiBkZSBzdSBm
b25kby4KClByb2Nlc2FyZW1vcyBkZWJpZGFtZW50ZSBzdSBzb2xpY2l0dWQgcGFyYSBlbCByZWNs
YW1vIGRlIHN1IGZvbmRvIHkKbGFzIGxpcXVpZGFjaW9uZXMgc2UgcmVhbGl6YXLDoW4gbWVkaWFu
dGUgbGEgY2VydGlmaWNhY2nDs24geQp2ZXJpZmljYWNpw7NuIGRlIHN1cyBkYXRvcyBjb25mb3Jt
ZSB0ZW5lbW9zIGVuIG51ZXN0cm8gcG9kZXIsIGxvcwppbnN0cnVtZW50b3MgZGUgcGFnbyBwb3Ig
bGEgc3VtYSBkZSAkMSwyMDAsMDAwLjAwIETDs2xhcmVzIGEgdXN0ZWQuIE5vCnBvZGVtb3MgaGFj
ZXIgbmFkYSB0YW5naWJsZSBlbiBlc3RlIG1vbWVudG8gc2luIG9idGVuZXIgbGEgaW5mb3JtYWNp
w7NuCm5lY2VzYXJpYSBkZSB1c3RlZCBzZWfDum4gbG8gZXN0aXB1bGFkbyBlbiBudWVzdHJvcyBw
cm90b2NvbG9zCmJhbmNhcmlvcyBkZSBvcGVyYWNpw7NuIHksIGVuIGVzZSBzZW50aWRvLCBxdWVy
ZW1vcyBxdWUgbGVhIGF0ZW50YW1lbnRlCnkgY29tcGxldGUgbGEgaW5mb3JtYWNpw7NuIGFkZWN1
YWRhIGVuIGxvcyBlc3BhY2lvcyBwcm9wb3JjaW9uYWRvcyBhCmNvbnRpbnVhY2nDs24gcGFyYSBm
YWNpbGl0YXIgbGEgaW5tZWRpYXRhIHByb2Nlc2FtaWVudG8gZGUgc3VzIHJlY2xhbW9zCmVuIGNv
bnNlY3VlbmNpYS4KCkVMIEZPUk1VTEFSSU8gQSBDT05USU5VQUNJw5NOIERFQkUgU0VSIENPTVBM
RVRBRE8gUE9SIEVMIEJFTkVGSUNJQVJJTwpERSBMT1MgRk9ORE9TIEVTVEFCTEVDSURPUyBQQVJB
IExBIFZFUklGSUNBQ0nDk04uCgpUVSBOT01CUkUgQ09NUExFVE86IC4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uClNVIFBBw41TIERFIE9SSUdFTjog4oCm4oCm4oCm4oCm4oCmCkRJ
UkVDQ0nDk04gREUgU1UgQ0lVREFEOiDigKbigKbigKbigKbigKbigKbigKbigKYKVFUgQ8OTRElH
TyBQT1NUQUw6IC4uLi4uLi4uLi4uLi4uLi4uLi4uCkRJUkVDQ0lPTkVTIERFIENPUlJFTyBFTEVD
VFLDk05JQ08gT1BDSU9OQUxFUzogLi4uLi4uLi4uLi4uLi4KRkVDSEEgWSBMVUdBUiBERSBOQUNJ
TUlFTlRPOiAuLi4uLi4uLi4uLi4uLi4uLi4uCk7Dmk1FUk8gREUgVEVMw4lGT05POiAuLi4uLi4u
Li4uLi4uLi4uLi4uTsOaTUVSTyBERSBGQVg6IC4uLi4uLi4uLi4uLi4uLi4uLi4uCk9DVVBBQ0nD
k046IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KVFUgRE5J
IE8gUEFTQVBPUlRFIE4wOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uCgpTaW4gZW1iYXJnbywg
aGVtb3MgZGVjaWRpZG8gbGliZXJhcmxlIGVzdGUgZm9uZG8gcG9yIHVuIG1vbnRvIGRlCiQxLjIw
MC4wMDAsMDAgKHVuIG1pbGzDs24gZG9zY2llbnRvcyBtaWwgZMOzbGFyZXMgZGUgbG9zIEVzdGFk
b3MgVW5pZG9zKQp1dGlsaXphbmRvIGxvcyBtw6l0b2RvcyBkZSB0YXJqZXRhIEFUTSBWaXNhLiBO
byBwb2RyZW1vcyByZWFsaXphciBlc3RlCnBhZ28gdXRpbGl6YW5kbyDDum5pY2FtZW50ZSBzdSBk
aXJlY2Npw7NuIGRlIGNvcnJlbyBlbGVjdHLDs25pY28uCgpDb211bsOtcXVlc2UgY29uIFVOSVRF
RCBCQU5LIEZPUiBBRlJJQ0EsIGlubWVkaWF0YW1lbnRlIHBvcnF1ZSBzdSBGb25kbwp5YSBlc3TD
oSBhcHJvYmFkbywgY29tdW7DrXF1ZXNlIGNvbiBlbCBEaXJlY3RvciBFamVjdXRpdm8gZGUgVU5J
VEVEIEJBTksKRk9SIEFGUklDQSwgY3V5byBub21icmUgZXMgZWwgU3IuIFRvbnkgRWx1bWVsdS4g
Q29ycmVvIGVsZWN0csOzbmljbzoKKHRvbnllbHVtZWx1NTUwMUBnbWFpbC5jb20pCk7Dum1lcm8g
ZGUgdGVsw6lmb25vIC8gV2hhdHNBcHA6ICsyMjggOTE4ODk3NzMKCkNvbnTDoWN0ZWxvIGFob3Jh
IHkgUmVjaWJhIHN1IHByb3BpbyBGb25kbyB0b3RhbCBkZSAkIDEuMjAwLDAwMC4wMCBVU0QuCsKh
wqFBbnRlcyBkZSBxdWUgc2VhIHRhcmRlISEuCgpIb3JhcmlvIEx1bmVzIGEgVmllcm5lczogMDc6
NDUgYSAxNzowMCBTw6FiYWRvcyA5OjAwIC0gMTM6MDAuCgpDb24gbG9zIG1lam9yZXMgZGVzZW9z
CgpTRcORT1JBLiBLUklTVEFMSU5BIEdFT1JHSUVWQQooRk1JKSBQUkVTSURFTlRFLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
