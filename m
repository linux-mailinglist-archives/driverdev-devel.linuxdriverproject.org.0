Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CFF727396
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Jun 2023 02:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97E36613AF;
	Thu,  8 Jun 2023 00:10:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E36613AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZ8rjBfT8Gos; Thu,  8 Jun 2023 00:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE9D6137D;
	Thu,  8 Jun 2023 00:10:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BE9D6137D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B74C1BF3C2
 for <devel@linuxdriverproject.org>; Thu,  8 Jun 2023 00:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7217D41B75
 for <devel@linuxdriverproject.org>; Thu,  8 Jun 2023 00:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7217D41B75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hIarqDXNmPgC for <devel@linuxdriverproject.org>;
 Thu,  8 Jun 2023 00:10:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF856418BC
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF856418BC
 for <devel@driverdev.osuosl.org>; Thu,  8 Jun 2023 00:10:46 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id
 a640c23a62f3a-973bf581759so13089466b.0
 for <devel@driverdev.osuosl.org>; Wed, 07 Jun 2023 17:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686183045; x=1688775045;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lwmqmz3SLTAm/5XHn54kA2Qkz1KiGdBlOiEDAaxIk1A=;
 b=F4Tedf3u7XSSjn3cfM/nxIrkwLpD8EecTF0vj1R0oK6mabTMu73bSGFYpYCUIybSR4
 3rrVHVNyEUIkkzaFFT9xcABYn3skj4M3cQKnG4CnZCljzZWTbXg6+M3y5p7xm1fgT0h5
 yMGqtgXB+/d7uWnD22XDWiv8Q4N6w549/ZIQhM7m1vomtqujJ0AKsfSFpKzuDVK/xCQW
 AZ+HYpFHmOwPoP9iVynU3Ea/l4T7xqbWlOKaHLRc8fZj5osqTw7Oaifae4uolFWJM1cO
 MA2pz6oVZD01dF7PGAY+eQs83fYEDMkxQjwbVOyImNKQ9ifEdHdsm7k7x4dXmSm3fWMp
 cidQ==
X-Gm-Message-State: AC+VfDzETMvLLGlaQuDlo1A7bAp0mw1XXt1Q8nJERYqsVYwqBg7+dZ6Q
 /7pwV+avbKBW0ayF/ZAkUnZKJTntN0ZFKTvZt2Y=
X-Google-Smtp-Source: ACHHUZ7euoT0+EJOZeez30GFsvcVLyXtdgVI/4eopJ8eX1lRCe1Z/RbLJR0AelzN6/keVdqhcSl/SvlPzpZdJSTIafA=
X-Received: by 2002:a17:907:2d94:b0:970:e010:3bb2 with SMTP id
 gt20-20020a1709072d9400b00970e0103bb2mr8362122ejc.35.1686183044693; Wed, 07
 Jun 2023 17:10:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2b01:0:b0:213:b140:ccc6 with HTTP; Wed, 7 Jun 2023
 17:10:44 -0700 (PDT)
From: "UNITED NATION DEPUTY SECRETARY-GENERAL (U.N)"
 <recoversfund.ng@gmail.com>
Date: Wed, 7 Jun 2023 17:10:44 -0700
Message-ID: <CAEeG17iP7_LYdkA99mPyo4tPh6ZtD+SZnvP26EkSkBy=fKKnAQ@mail.gmail.com>
Subject: CONTACT DHL OFFICE IMMEDIATELY FOR YOUR ATM MASTER CARD 1.5 MILLION,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686183045; x=1688775045;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lwmqmz3SLTAm/5XHn54kA2Qkz1KiGdBlOiEDAaxIk1A=;
 b=ARbrLxLUNJOZZ8QyT5ipNAd3QCbeEKzrGoYJ4psklRhFt56d/du4G7BW1yK83weOz2
 XRFOeNsawH8W+vK2XvRkXtMNEelMyjWwIvtD/r4L86lYBbrbeoePUOYPWeArnedOPu2g
 wKD4IkTxFEmzVUpIC3B5tgzIwkUF8CtG7hAdLo98gOlqip8UAZ0R2VBm8NLDzoD7Vcv3
 rD/PhkFqwLmh6qClaig0gw8BmdH+IKhPvZD4dNI73f33OTxJM9m5KVc2rP/qeRHHEDx7
 f2emFwLAtHMhcn3KC4tnFYfOueoVnqlcmVeqTpdaWgZ1XA6XxiShQsasiIIa+WVnFqR+
 nzpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ARbrLxLU
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
Reply-To: unitednationcompensationcoordinatortreasury@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VU5JVEVEIE5BVElPTiBERVBVVFkgU0VDUkVUQVJZLUdFTkVSQUwuCgpUaGlzIGlzIHRvIG9mZmlj
aWFsIGluZm9ybSB5b3UgdGhhdCB3ZSBoYXZlIGJlZW4gaGF2aW5nIG1lZXRpbmdzIGZvcgp0aGUg
cGFzdCB0aHJlZSAoMykgd2Vla3Mgd2hpY2ggZW5kZWQgdHdvIGRheXMgYWdvIHdpdGggTVIuIEpJ
TSBZT05HCktJTSB0aGUgd29ybGQgYmFuayBwcmVzaWRlbnQgYW5kIG90aGVyIHNldmVuIGNvbnRp
bmVudCBwcmVzaWRlbnRzIG9uCnRoZSBjb25ncmVzcyB3ZSB0cmVhdGVkIG9uIHNvbHV0aW9uIHRv
IHNjYW0gdmljdGltIHByb2JsZW1zLgoKIE5vdGU6IHdlIGhhdmUgZGVjaWRlZCB0byBjb250YWN0
IHlvdSBmb2xsb3dpbmcgdGhlIHJlcG9ydHMgd2UKcmVjZWl2ZWQgZnJvbSBhbnRpLWZyYXVkIGlu
dGVybmF0aW9uYWwgbW9uaXRvcmluZyBncm91cCB5b3VyCm5hbWUvZW1haWwgaGFzIGJlZW4gc3Vi
bWl0dGVkIHRvIHVzIHRoZXJlZm9yZSB0aGUgdW5pdGVkIG5hdGlvbnMgaGF2ZQphZ3JlZWQgdG8g
Y29tcGVuc2F0ZSB5b3Ugd2l0aCB0aGUgc3VtIG9mIChVU0QkIDEuNSBNaWxsaW9uKSB0aGlzCmNv
bXBlbnNhdGlvbiBpcyBhbHNvIGluY2x1ZGluZyBpbnRlcm5hdGlvbmFsIGJ1c2luZXNzIHRoYXQg
ZmFpbGVkIHlvdQppbiB0aGUgcGFzdCBkdWUgdG8gZ292ZXJubWVudCBwcm9ibGVtcyBldGMuCgog
V2UgaGF2ZSBhcnJhbmdlZCB5b3VyIHBheW1lbnQgdGhyb3VnaCBvdXIgQVRNIE1hc3RlciBDYXJk
IGFuZApkZXBvc2l0ZWQgaXQgaW4gREhMIE9mZmljZSB0byBkZWxpdmVyIGl0IHRvIHlvdSB3aGlj
aCBpcyB0aGUgbGF0ZXN0Cmluc3RydWN0aW9uIGZyb20gdGhlIFdvcmxkIEJhbmsgcHJlc2lkZW50
IE1SLiBKSU0gWU9ORyBLSU0sIEZvciB5b3VyCmluZm9ybWF0aW9u4oCZcywgdGhlIGRlbGl2ZXJ5
IGNoYXJnZXMgYWxyZWFkeSBwYWlkIGJ5IFUuTiB0cmVhc3VyeSwgdGhlCm9ubHkgbW9uZXkgeW91
IHdpbGwgc2VuZCB0byBESEwgb2ZmaWNlIHNvdXRoIEtvcmVhIGlzCigkNTAwKS4gZm9yIHNlY3Vy
aXR5IGtlZXBpbmcgZmVlLCBVLk4gY29vcmRpbmF0b3IgYWxyZWFkeSBwYWlkIGZvcgpvdGhlcnMg
Y2hhcmdlcyBmZWVzIGZvciBkZWxpdmVyeSBleGNlcHQgdGhlIHNlY3VyaXR5IGtlZXBpbmcgZmVl
LCB0aGUKZGlyZWN0b3Igb2YgREhMIHJlZnVzZWQgdG8gY29sbGVjdCB0aGUgc2VjdXJpdHkga2Vl
cGluZyBmZWUgZnJvbSBVLk4KY29vcmRpbmF0b3IsIHRoZSBEaXJlY3RvciBvZiBESEwgb2ZmaWNl
IHNhaWQgdGhhdCB0aGV5IGRvbuKAmXQga25vdwpleGFjdGx5IHRpbWUgeW91IHdpbGwgY29udGFj
dCB0aGVtIHRvIHJlY29uZmlybSB5b3VyIGRldGFpbHMgdG8gYXZvaWQKY291bnRpbmcgZGVtdXIt
cmFnZSB0aGF0IGlzIHdoeSB0aGV5IHJlZnVzZWQgY29sbGVjdGluZyB0aGUgKCQ1MDApIC4KZm9y
IHNlY3VyaXR5IGtlZXBpbmcgZmVlLgoKIFRoZXJlZm9yZSBiZSBhZHZpY2UgdG8gY29udGFjdCBE
SEwgT2ZmaWNlIGFnZW50IHNvdXRoIEtvcmVhLiBSZXY6Sm9obgpMZWUgVGFlLXNlb2sKd2hvIGlz
IGluIHBvc2l0aW9uIHRvIGRlbGl2ZXIgeW91ciBBVE0KTWFzdGVyIENhcmQgdG8geW91ciBsb2Nh
dGlvbiBhZGRyZXNzLCBjb250YWN0IERITCBPZmZpY2UgaW1tZWRpYXRlbHkKd2l0aCB0aGUgYmVs
bG93IGVtYWlsICYgcGhvbmUgbnVtYmVyIGFzIGxpc3RlZCBiZWxvdy4KCiBDb250YWN0IG5hbWU6
IEpvaG4gTGVlIFRhZS1zZW9rCgogRW1haWw6KCBkaGxnZW5lcmFsaGVhZHF1YXJ0ZXJzcmVwdWJs
aWNAZ21haWwuY29tICkKCiBEbyBub3QgaGVzaXRhdGUgdG8gQ29udGFjdCBSZXY6IEpvaG4gTGVl
IFRhZS1zZW9rLCBhcyBzb29uIGFzIHlvdQoKIHJlYWQgdGhpcyBtZXNzYWdlLiBFbWFpbDooIGRo
bGdlbmVyYWxoZWFkcXVhcnRlcnNyZXB1YmxpY0BnbWFpbC5jb20gKQoKIE1ha2Ugc3VyZSB5b3Ug
cmVjb25maXJtZWQgREhMIE9mZmljZSB5b3VyIGRldGFpbHMgQVNBUCBhcyBzdGF0ZWQKYmVsb3cg
dG8gYXZvaWQgd3JvbmcgZGVsaXZlcnkuCgogWW91ciBmdWxsIG5hbWUuLi4uLi4uLi4uCgogSG9t
ZSBhZGRyZXNzOi4uLi4uLi4uLgoKIFlvdXIgY291bnRyeS4uLi4uLi4uLi4uCgogWW91ciBjaXR5
Li4uLi4uLi4uLi4uLi4KCiBUZWxlcGhvbmUuLi4uLi4KCiBPY2N1cGF0aW9uOi4uLi4uLi4KCiBB
Z2U64oCm4oCm4oCm4oCm4oCm4oCmLi4KCiBMZXQgdXMga25vdyBhcyBzb29uIGFzIHBvc3NpYmxl
IHlvdSByZWNlaXZlIHlvdXIgQVRNIE1hc3RlckNhcmQKZm9yIHByb3BlciB2ZXJpZmljYXRpb24u
CgogUmVnYXJkcywKCiBNcnMgVml2aWFuIGtha2FkdS4KCiBERVBVVFkgU0VDUkVUQVJZLUdFTkVS
QUwgKFUuTikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
