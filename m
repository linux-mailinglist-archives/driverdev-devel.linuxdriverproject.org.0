Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2458B3A0
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Aug 2022 05:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B63076100E;
	Sat,  6 Aug 2022 03:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B63076100E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qu4DKe0OkMBE; Sat,  6 Aug 2022 03:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF9F61007;
	Sat,  6 Aug 2022 03:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF9F61007
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2D6A1BF9B9
 for <devel@linuxdriverproject.org>; Sat,  6 Aug 2022 03:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB1116100E
 for <devel@linuxdriverproject.org>; Sat,  6 Aug 2022 03:54:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB1116100E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVR2JCUTERFO for <devel@linuxdriverproject.org>;
 Sat,  6 Aug 2022 03:54:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E430061007
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com
 [IPv6:2607:f8b0:4864:20::e33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E430061007
 for <devel@driverdev.osuosl.org>; Sat,  6 Aug 2022 03:54:29 +0000 (UTC)
Received: by mail-vs1-xe33.google.com with SMTP id m67so4177570vsc.12
 for <devel@driverdev.osuosl.org>; Fri, 05 Aug 2022 20:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc;
 bh=BnDyzyd9yPs5HfSgbO1PUPJdCDbPk0pkDLgrPcIgTNw=;
 b=rmZ+UsCYp0CFIZiaUo00DDYziqZS+Zv81F+jEgfF7hyUMgaRluLQh/g8pqH0xBJJPy
 gaj3cAGrMkj1DD+ATD0OZ/z6+cTXLGigykuyxovf3FZ97kRiraOMwM9uwkeNNkp4mrj9
 GBYwO85OY4rykwQIWe22QLWda3jjJfxwzVbtfr6cdwSQTm0SqgAbOCOUkHsrdvf8G3Vs
 iSwPY03wSBhok6H6Z4FfSWpNuY+TiCMtC5fyuUs9NQNlvlAGhcRLelUqPkzTVfXCcUrX
 sNeN3RUnVNhpQtEIbFyrzNAAueALM/o5oHF5UtkCOnBNtI90lKpL74fvgwBJO/ZmuUgq
 9wqA==
X-Gm-Message-State: ACgBeo2voGzUi6L7VJnZ2NvxxVKGDEO/a/42QWsAfDlX+ds3RM6/iW8a
 JqGqyK+d0I3pdUCiClwCdPwLTeYMJT1YVUjAjLE=
X-Google-Smtp-Source: AA6agR77XaznaRfS510N9DP8cAwCf54JdwGeBiMPVLgBwrpjriOAtajxzAMHy6xD9O3t6/4jJK6dncrDloQksi/Yp8I=
X-Received: by 2002:a05:6102:5047:b0:34b:d9ef:bd26 with SMTP id
 by7-20020a056102504700b0034bd9efbd26mr4481280vsb.14.1659758068214; Fri, 05
 Aug 2022 20:54:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:1184:b0:2d3:7f73:8f9c with HTTP; Fri, 5 Aug 2022
 20:54:27 -0700 (PDT)
From: Mr yousef zongo <jubrilubaro484@gmail.com>
Date: Fri, 5 Aug 2022 20:54:27 -0700
Message-ID: <CANY2d-ZNB+3iezm-mi6C0+D6u-FxamPQoyDHAnY-sHwpuyNxBQ@mail.gmail.com>
Subject: URGENTBUSINESSPROPOSAL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc;
 bh=BnDyzyd9yPs5HfSgbO1PUPJdCDbPk0pkDLgrPcIgTNw=;
 b=R0I5XV4gKtrqltdftr8/BH6zCc+FD1iNZQuaeWLFYR9ubs/XE7B5BGiFVUwrYpc8BS
 0dwnakoCZnevVQmjkFHOhIssEFdJnCR+IevQUHO4X7G4OXHDBlHjWSyi1L3cvH6McP9M
 pKX/yTVP7IE/ms46izPCWnlGMZJP57xbaX6uAtIAL/V3ZAYmB5DyYkmv8qmqShbbET1g
 FLEI/4US5sQFk4x2n5J5ezUenqxlal2TqAYmWuavEkG98HA82XX8Co6W1g00xPZ6POex
 brWE7tioe+jxTMSWS2KADLQbJpdPms3ztG8k2Sd6WU5uVFnONfRA/9x52yh9q0tcJ39T
 26jQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=R0I5XV4g
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
Reply-To: yousefzongo5722@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkRlYXIgZnJpZW5kLCAuCgpHcmVldGluZ3MuCgpIb3cgYXJlIHlvdSBkb2luZyB0b2RheSBp
IGhvcGUgZmluZT8KCkkgY2FtZSBhY3Jvc3MgeW91ciBlbWFpbCBsaW5rIHByaW9yIHRvIHRoZSBy
ZXNlYXJjaApwcml2YXRlIHdoZW4gSSBuZWVkZWQgeW91ciBoZWxwLiBNeSBuYW1lIGlzIG1yIHlv
dXNlZgp6b25nbyAnIEkgd29yayB3aXRoIHRoZSBBdWRpdCBkZXBhcnRtZW50IGFuZCB0aGUgYWNj
b3VudGluZyBtYW5hZ2VyIGhlcmUKVUJBIEJhbmsgb2YgQWZyaWNhLCBUaGVyZSBpcyB0aGlzIGZ1
bmQgdGhhdCB3YXMga2VwdCBpbgpteSBob3VzZXMgeWVhcnMgYWdvIGFuZCBpIG5lZWQgeW91ciBo
ZWxwIGZvcgp0byB0cmFuc2ZlciB0aGlzIGZ1bmQgdG8geW91ciBiYW5rIGFjY291bnQgZm9yIGJv
dGgKb3VyIHdlIGJlbmVmaXQgZm9yIGxpZmUgdGltZSBpbnZlc3RtZW50IGFuZCBtb25leSBpcyAo
VVMKJDI3LDUwMC4gTWlsbGlvbiBEb2xsYXJzKS4KCkkgaGF2ZSBhbGwgdGhlIGRldGFpbHMgb2Yg
dGhlIHF1ZXN0aW9uIHRvIGdldCB0aGUgYmFuayB0byBiZWxpZXZlIHlvdSBhbmQKcmVsZWFzaW5n
IHRoZSBmdW5kIHRvIHlvdXIgYmFuayBhY2NvdW50IHdpdGhpbiA3IGRheXMKYSBqb2IgYSBiYW5r
IHdpdGggeW91ciBmdWxsIGNvb3BlcmF0aW9uIHdpdGggbWUgYWZ0ZXIKc3VjY2VzcyBDb25zaWRl
ciA1MCUgdG8geW91IHdoaWxlIDUwJSB0byBtZSBhZnRlciB0aGUgc3VjY2VzcyBvZgp0aGUgdHJh
bnNmZXIgb2YgZnVuZHMgdG8geW91ciBiYW5rIGFjY291bnQgaXMgZmluZS4KCldFIEFSRSBXQUlU
SU5HIEZST00gWU9VLgpUSEFOSyBZT1UuCgptciAgeW91c2VmICB6b25nbwoKCgpFc3RpbWFkbyBh
bWlnbywgLgoKU2FsdWRvcy4KCsK/Q8OzbW8gZXN0w6FzIGhveSwgZXNwZXJvIHF1ZSBiaWVuPwoK
RW5jb250csOpIHN1IGVubGFjZSBkZSBjb3JyZW8gZWxlY3Ryw7NuaWNvIGFudGVzIGRlIGxhIGlu
dmVzdGlnYWNpw7NuLgpwcml2YWRvIGN1YW5kbyBuZWNlc2l0YWJhIHR1IGF5dWRhLiBtaSBub21i
cmUgZXMgc3IgeW91c2VmCnpvbmdvICcgdHJhYmFqbyBjb24gZWwgZGVwYXJ0YW1lbnRvIGRlIGF1
ZGl0b3LDrWEgeSBlbCBnZXJlbnRlIGRlCmNvbnRhYmlsaWRhZCBhcXXDrQpVQkEgQmFuayBvZiBB
ZnJpY2EsIGV4aXN0ZSBlc3RlIGZvbmRvIHF1ZSBzZSBtYW50dXZvIGVuCm1pcyBjYXNhcyBoYWNl
IGHDsW9zIHkgbmVjZXNpdG8gc3UgYXl1ZGEgcGFyYQpwYXJhIHRyYW5zZmVyaXIgZXN0ZSBmb25k
byBhIHN1IGN1ZW50YSBiYW5jYXJpYSBwYXJhIGFtYm9zCm51ZXN0cm8gYmVuZWZpY2lvIHBhcmEg
bGEgaW52ZXJzacOzbiBkZSBwb3IgdmlkYSB5IGVsIGRpbmVybyBlcyAoRUUuIFVVLgokMjcsNTAw
LiBNaWxsw7NuIGRlIGTDs2xhcmVzKS4KClRlbmdvIHRvZG9zIGxvcyBkZXRhbGxlcyBkZSBsYSBw
cmVndW50YSBwYXJhIHF1ZSBlbCBiYW5jbyB0ZSBjcmVhIHkKbGliZXJhbmRvIGVsIGZvbmRvIGEg
c3UgY3VlbnRhIGJhbmNhcmlhIGRlbnRybyBkZSBsb3MgNyBkw61hcwp1biB0cmFiYWpvIHVuIGJh
bmNvIGNvbiBzdSB0b3RhbCBjb29wZXJhY2nDs24gY29ubWlnbyBkZXNwdcOpcwrDqXhpdG8gQ29u
c2lkZXJlIGVsIDUwJSBwYXJhIHVzdGVkIG1pZW50cmFzIHF1ZSBlbCA1MCUgcGFyYSBtw60gZGVz
cHXDqXMKZGVsIMOpeGl0byBkZQpsYSB0cmFuc2ZlcmVuY2lhIGRlIGZvbmRvcyBhIHN1IGN1ZW50
YSBiYW5jYXJpYSBlc3TDoSBiaWVuLgoKVEUgRVNQRVJBTU9TLgpHUkFDSUFTLgoKc2XDsW9yIHlv
dXNlZiB6b25nbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
