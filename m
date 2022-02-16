Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D5F4B7BFA
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 01:32:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C99EA827DE;
	Wed, 16 Feb 2022 00:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upp2emaRAB6u; Wed, 16 Feb 2022 00:32:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F9A6827CA;
	Wed, 16 Feb 2022 00:32:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 715E11BF2A4
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 00:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B560827DE
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 00:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W28clDyoln5I for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 00:32:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1550827CA
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 00:32:35 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id u6so796272lfc.3
 for <devel@driverdev.osuosl.org>; Tue, 15 Feb 2022 16:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=mHBMc89HAt5gN4d1lk210Ck3Ij8BXAAcBD41Bn0potk=;
 b=qhpPxFrHD9s7ZIA8C0f0W8LOc7UxEitwElGd0l+xmRLlpN8d1qkX1TPgAkNi+YM+Fh
 QFwENSUq0KLcaQLuKwIpmmQcKLQ6boYyMmWCNJDKGgX1YkyTJJBrGfbR7D8wJ1xPMVH+
 uleiVAHlN9zLghTnXSPZ4DGH3GRjV6kINBCLTG/k3TpHiVXNUkFRzZtrqqylkMd9oTHl
 p1HsATUEBNrxvSxy5uCtQ+kRMmw8euw0+jaaIoRf11Z7pCythQSlvMkDYgLKWGzFWNid
 4a02z9abCx+2pV6TqF57I2fJOaOzqIwl7qwIt7mmLUcod5UyN5xGHshg0EP8S1rbE2Tf
 4H+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=mHBMc89HAt5gN4d1lk210Ck3Ij8BXAAcBD41Bn0potk=;
 b=mnsO+fpSITM71o4ixK2PSjSzwwGpkoFioOyIkQks5C5jKmVDq6eNjQ1MwKBax9t04F
 BvwKHMgM6FA8zG8kUcARx1XcYvPN6qo1nMggDxURDY4bUT7MzuDJ8C90chX5EQrMnko9
 ivro6Zd+6r9iXvXjudwjI5Wl72mD+woYnOOG+JWx/PopG8XQBlMtzKtNZ3Wx604U9/NX
 izSQuMXxPjnioPHEo5+4zDPhfuvRYVgs5glbW3TuoVL6Gjsv10os/hhU1+1w8AB8dJ5S
 wDM3wpHmNUGhN2k+YGWlZNdl59v3RSZztVSRGOUNF7yIyA+heq1vDA91SK1WImnfa/Hx
 c4FQ==
X-Gm-Message-State: AOAM530oH73E9m7U9Lv0fVhL+S9uFUGwHxtXAWB4Q/EU+nL6LDtx/PIo
 JfCesI9C2EeJckHVv5cGwKUL4BzQqh11sxi5BDk=
X-Google-Smtp-Source: ABdhPJz6TY+I/HY9KWhP+B8GgNOauIhsvwDQWFuhDP46gqpt2u+enH2LnPNUFQeTg2N7rTzEt9h7NeLEZPI0WkqrB+0=
X-Received: by 2002:a05:6512:31d6:b0:42a:b35d:c5a0 with SMTP id
 j22-20020a05651231d600b0042ab35dc5a0mr145261lfe.401.1644971553331; Tue, 15
 Feb 2022 16:32:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab2:25c1:0:b0:127:7321:3bd8 with HTTP; Tue, 15 Feb 2022
 16:32:32 -0800 (PST)
From: Mrs Peninnah Ariel Benaiah <mrs.mimiqaudon3@gmail.com>
Date: Wed, 16 Feb 2022 00:32:32 +0000
Message-ID: <CALY4++5564wyQnQ+pQMLtPxbwSWQdsgVTM8YNSu+SK5hd3L9kg@mail.gmail.com>
Subject: Greetings in the name of Lord
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
Reply-To: mrspeninnaharielbenaiah22@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCipHcmVldGluZ3MgaW4gdGhlIG5hbWUgb2YgTG9yZCoKCgoKKk15IG5hbWUgaXMgTXJzLiBQ
ZW5pbm5haCBBcmllbCBCZW5haWFoIEkgYW0gYSBOb3J3YXkgQ2l0aXplbiB3aG8gaXMgbGl2aW5n
CmluIEJ1cmtpbmEgRmFzbywgSSBhbSBtYXJyaWVkIHRvIE1yLkJlbmFpYWggamVyZW1pYWgsIGEg
cG9saXRpY2lhbiB3aG8gb3ducwphIHNtYWxsIGdvbGQgY29tcGFueSBpbiBCdXJraW5hIEZhc287
IEhlIGRpZWQgb2YgTGVwcm9zeSBhbmQgUmFkZXN5Z2UsaW4KdGhlIHllYXIgRmVicnVhcnkgMjAx
MCwgRHVyaW5nIGhpcyBsaWZldGltZSBoZSBkZXBvc2l0ZWQgdGhlIHN1bSBvZiDigqwgOC41Ck1p
bGxpb24gRXVybykgRWlnaHQgbWlsbGlvbiwgRml2ZSBodW5kcmVkIHRob3VzYW5kIEV1cm9zIGlu
IGEgYmFuayBpbgpCcnVzc2VscyB0aGUgY2FwaXRhbCBjaXR5IG9mIEJlbGdpdW0gaW4gRXVyb3Bl
IFRoZSBtb25leSB3YXMgZnJvbSB0aGUgc2FsZQpvZiBoaXMgY29tcGFueSBhbmQgZGVhdGggYmVu
ZWZpdHMgcGF5bWVudCBhbmQgZW50aXRsZW1lbnRzIG9mIG15IGRlY2Vhc2VkCmh1c2JhbmQgYnkg
aGlzIGNvbXBhbnkuKgoKKkkgYW0gc2VuZGluZyB5b3UgdGhpcyBtZXNzYWdlIHdpdGggaGVhdnkg
dGVhcnMgaW4gbXkgZXllcyBhbmQgZ3JlYXQgc29ycm93CmluIG15IGhlYXJ0LCBhbmQgYWxzbyBw
cmF5aW5nIHRoYXQgaXQgd2lsbCByZWFjaCB5b3UgaW4gZ29vZCBoZWFsdGggYmVjYXVzZQpJIGFt
IG5vdCBpbiBnb29kIGhlYWx0aCwgSSBzbGVlcCBldmVyeSBuaWdodCB3aXRob3V0IGtub3dpbmcg
aWYgSSBtYXkgYmUKYWxpdmUgdG8gc2VlIHRoZSBuZXh0IGRheS4gSSBhbSBzdWZmZXJpbmcgZnJv
bSBsb25nIHRpbWUgY2FuY2VyIGFuZApwcmVzZW50bHkgSSBhbSBwYXJ0aWFsbHkgc3VmZmVyaW5n
IGZyb20gTGVwcm9zeSwgd2hpY2ggaGFzIGJlY29tZSBkaWZmaWN1bHQKZm9yIG1lIHRvIG1vdmUg
YXJvdW5kLiBJIHdhcyBtYXJyaWVkIHRvIG15IGxhdGUgaHVzYmFuZCBmb3IgbW9yZSB0aGFuIDYK
eWVhcnMgd2l0aG91dCBoYXZpbmcgYSBjaGlsZCBhbmQgbXkgZG9jdG9yIGNvbmZpZGVkIHRoYXQg
SSBoYXZlIGxlc3MgY2hhbmNlCnRvIGxpdmUsIGhhdmluZyB0byBrbm93IHdoZW4gdGhlIGN1cCBv
ZiBkZWF0aCB3aWxsIGNvbWUsIEkgZGVjaWRlZCB0bwpjb250YWN0IHlvdSB0byBjbGFpbSB0aGUg
ZnVuZCBzaW5jZSBJIGRvbid0IGhhdmUgYW55IHJlbGF0aW9uIEkgZ3JldyB1cApmcm9tIGFuIG9y
cGhhbmFnZSBob21lLioKCipJIGhhdmUgZGVjaWRlZCB0byBkb25hdGUgdGhpcyBtb25leSBmb3Ig
dGhlIHN1cHBvcnQgb2YgaGVscGluZyBNb3RoZXJsZXNzCmJhYmllcy9MZXNzIHByaXZpbGVnZWQv
V2lkb3dzIGFuZCBjaHVyY2hlcyBhbHNvIHRvIGJ1aWxkIHRoZSBob3VzZSBvZiBHb2QKYmVjYXVz
ZSBJIGFtIGR5aW5nIGFuZCBkaWFnbm9zZWQgd2l0aCBjYW5jZXIgZm9yIGFib3V0IDMgeWVhcnMg
YWdvLiBJIGhhdmUKZGVjaWRlZCB0byBkb25hdGUgd2hhdCBJIGhhdmUgaW5oZXJpdGVkIGZyb20g
bXkgbGF0ZSBodXNiYW5kIHRvIHlvdSBmb3IgdGhlCmdvb2Qgd29yayBvZiBBbG1pZ2h0eSBHb2Q7
IEkgd2lsbCBiZSBnb2luZyBpbiBmb3IgYW4gb3BlcmF0aW9uIHN1cmdlcnkKc29vbi4qCgoqTm93
IEkgd2FudCB5b3UgdG8gc3RhbmQgYXMgbXkgbmV4dCBvZiBraW4gdG8gY2xhaW0gdGhlIGZ1bmRz
IGZvciBjaGFyaXR5CnB1cnBvc2VzLiBCZWNhdXNlIG9mIHRoaXMgbW9uZXkgcmVtYWlucyB1bmNs
YWltZWQgYWZ0ZXIgbXkgZGVhdGgsIHRoZSBiYW5rCmV4ZWN1dGl2ZXMgb3IgdGhlIGdvdmVybm1l
bnQgd2lsbCB0YWtlIHRoZSBtb25leSBhcyB1bmNsYWltZWQgZnVuZCBhbmQKbWF5YmUgdXNlIGl0
IGZvciBzZWxmaXNobmVzcyBhbmQgd29ydGhsZXNzIHZlbnR1cmVzLCBJIG5lZWQgYSB2ZXJ5IGhv
bmVzdApwZXJzb24gd2hvIGNhbiBjbGFpbSB0aGlzIG1vbmV5IGFuZCB1c2UgaXQgZm9yIENoYXJp
dHkgd29ya3MsIGZvcgpvcnBoYW5hZ2VzLCB3aWRvd3MgYW5kIGFsc28gYnVpbGQgc2Nob29scyBh
bmQgY2h1cmNoZXMgZm9yIGxlc3MgcHJpdmlsZWdlCnRoYXQgd2lsbCBiZSBuYW1lZCBhZnRlciBt
eSBsYXRlIGh1c2JhbmQgYW5kIG15IG5hbWUuKgoKKkkgbmVlZCB5b3VyIHVyZ2VudCBhbnN3ZXIg
dG8ga25vdyBpZiB5b3Ugd2lsbCBiZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcwpwcm9qZWN0LCBhbmQg
SSB3aWxsIGdpdmUgeW91IG1vcmUgaW5mb3JtYXRpb24gb24gaG93IHRoZSBmdW5kIHdpbGwgYmUK
dHJhbnNmZXJyZWQgdG8geW91ciBiYW5rIGFjY291bnQgb3Igb25saW5lIGJhbmtpbmcuKgoKKlRo
YW5rcyoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
