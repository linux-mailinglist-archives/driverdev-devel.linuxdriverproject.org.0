Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2880F3F7DBB
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Aug 2021 23:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C72D40525;
	Wed, 25 Aug 2021 21:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ly1BNx1B3N_P; Wed, 25 Aug 2021 21:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8746440510;
	Wed, 25 Aug 2021 21:28:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4222A1BF2CE
 for <devel@linuxdriverproject.org>; Wed, 25 Aug 2021 21:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3036D40516
 for <devel@linuxdriverproject.org>; Wed, 25 Aug 2021 21:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nyn2F0ugthw for <devel@linuxdriverproject.org>;
 Wed, 25 Aug 2021 21:28:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C0C040510
 for <devel@driverdev.osuosl.org>; Wed, 25 Aug 2021 21:28:15 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id x4so1001752pgh.1
 for <devel@driverdev.osuosl.org>; Wed, 25 Aug 2021 14:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=TTaPxFWyrTR1r0zvyBed/Iq+NoZDOXXgWx1AI8bZGRM=;
 b=vQwC7/vU64Zf+vXdQq8GatF7+3hhHlz4+jqd+yZ8mL6yGNSPxzdxNjJzwCoPo5mMyQ
 QJHvy2Ai9uwSP/9AuollbrdXx2BFnBYzhFU6DXRLKXISIm1iKwfsXbUkQFEujmkTIayu
 S0zaFDr0HKbwLrCbH8Ety1KCFNoKFL993s2CGdoeyaJsHoGwrnxverjdxRpoYkYU7wjI
 eAxuWL7KZg40qA+oJGNqPG7RUfds/g0Q9QaN0JRcArkvgVJf9LKfkTObCVKDvSxYFwWy
 q+r0YViSxYaTCQCc/nWKOQchlBud3vw031JCzaPM8cq0WeNlSy6ESSnEqDAd4mlEcycs
 Gogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=TTaPxFWyrTR1r0zvyBed/Iq+NoZDOXXgWx1AI8bZGRM=;
 b=tBkJAmjTR3OX3skNAaHK3EtrARs7kRQ/KzjDQdpH0Ab0UcwU5knpYmMNodDKhL1wsj
 i3wRXINzxglBLzEL8XsFk+PVSlsaZ5X4Kut5G5i7vqps8LzeOtn4XBJQWI3rVNG1imzN
 LggfWY3HtPvhFr6XyH+qQMaeojMU+ozwA/4aU/YRldbhKwwuDLpBHYZB8WhZVDAzJ4E2
 NnWzWb12eUF3u6kwsKIC6cSO0EYFoyifmfDa6a2mdVHoh4gou1bP+8Qfw4l5TU9Q0pKa
 41jdvF6o3+ndPgE791c65Yz3YAJS3q9A26SR3YAi6EoceYidt1J2LtX0mNjqx4SX/zd8
 o9DA==
X-Gm-Message-State: AOAM533MEtxFefqJ6LQ0exTh3JCojLmZibFSiUSuw0R1HqkqdDoufJa+
 ZAgN1nZNmhy/QtkRWEOF9UdV+JUybuwmf6WozZU=
X-Google-Smtp-Source: ABdhPJzvk1yMYYBXlklsJFmgDJFLNC5QXVZoK4EaKt4/dOAYO5eJWxCRecy4/e6pYOee1F3BjyUmJnrhgeLE6hdfBCg=
X-Received: by 2002:a63:144f:: with SMTP id 15mr241900pgu.46.1629926894810;
 Wed, 25 Aug 2021 14:28:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:eb25:0:0:0:0 with HTTP; Wed, 25 Aug 2021 14:28:14
 -0700 (PDT)
From: "Mrs.Therese Nina" <mrs.theresenina614@gmail.com>
Date: Wed, 25 Aug 2021 14:28:14 -0700
X-Google-Sender-Auth: ANWMrZlSnR87TWWHOYnL2h6SRTQ
Message-ID: <CAO7GYNYsDxNvQxSvrHVQUKahv1WC9FGe9ba5MwDeuGWCRRQzjA@mail.gmail.com>
Subject: Please I await your urgent response thanks.
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
Reply-To: mrs.theresenina406@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TXkgRGVhciBpbiB0aGUgTG9yZAoKTXkgTmFtZSBpcyBNcnMuIFRoZXJlc2UgTmluYSwgZnJvbSBO
b3J3YXkuIEkga25vdyB0aGF0IHRoaXMgbWVzc2FnZQp3aWxsIGJlIGEgc3VycHJpc2UgdG8geW91
LCBidXQgSSB3YW50IHlvdSB0byBiZWFyIGluIG1pbmQgdGhhdCBteQppbnRlbnRpb25zIGFyZSBj
bGVhbiBhbmQgcHVyZS4gRmlyc3RseSwgSSBhbSBtYXJyaWVkIHRvIE1yLiBQYXRyaWNrCk5pbmEs
IEEgZ29sZCBtZXJjaGFudCB3aG8gb3ducyBhIHNtYWxsIGdvbGQgTWluZSBpbiBBdXN0cmlhOyBI
ZSBkaWVkCm9mIENhcmRpb3Zhc2N1bGFyIERpc2Vhc2UgaW4gbWlkLU1hcmNoIDIwMTEuIER1cmlu
ZyBoaXMgbGlmZXRpbWUgaGUKZGVwb3NpdGVkIHRoZSBzdW0gb2Yg4oKsIDguNSBNaWxsaW9uIEV1
cm8pIEVpZ2h0IG1pbGxpb24sIEZpdmUgaHVuZHJlZAp0aG91c2FuZCBFdXJvcyBpbiBhIGJhbmsg
aW4gVmllbm5hLCBBdXN0cmlhLiBUaGUgZGVwb3NpdGVkIG1vbmV5IHdhcwpmcm9tIHRoZSBzYWxl
IG9mIHRoZSBzaGFyZXMsIGRlYXRoIGJlbmVmaXRzIHBheW1lbnQgYW5kIGVudGl0bGVtZW50cwpv
ZiBteSBkZWNlYXNlZCBodXNiYW5kIGJ5IGhpcyBjb21wYW55LgoKIEkgYW0gc2VuZGluZyB0aGlz
IG1lc3NhZ2UgdG8geW91IHByYXlpbmcgdGhhdCBpdCB3aWxsIHJlYWNoIHlvdSBpbgpnb29kIGhl
YWx0aCwgc2luY2UgSSBhbSBub3QgaW4gZ29vZCBoZWFsdGggaW4gd2hpY2ggSSBzbGVlcCBldmVy
eQpuaWdodCB3aXRob3V0IGtub3dpbmcgaWYgSSBtYXkgYmUgYWxpdmUgdG8gc2VlIHRoZSBuZXh0
IGRheS4gSSBoYXZlCmJlZW4gc3VmZmVyaW5nIGZvciBhIGxvbmcgdGltZSBhbmQgcHJlc2VudGx5
IEkgYW0gcGFydGlhbGx5IHN1ZmZlcmluZwpmcm9tIGEgc3Ryb2tlIGlsbG5lc3Mgd2hpY2ggaGFz
IGJlY29tZSBhbG1vc3QgaW1wb3NzaWJsZSBmb3IgbWUgdG8KbW92ZSBhcm91bmQuIEkgd2FzIG1h
cnJpZWQgdG8gbXkgbGF0ZSBodXNiYW5kIGZvciBvdmVyIDQgeWVhcnMgYmVmb3JlCmhlIGRpZWQg
YW5kIHVuZm9ydHVuYXRlbHkgdGhhdCB3ZSBkb24ndCBoYXZlIGEgY2hpbGQsIG15IGRvY3Rvcgpj
b25maWRlZCBpbiBtZSB0aGF0IEkgaGF2ZSBsZXNzIGNoYW5jZSB0byBsaXZlLiBIYXZpbmcga25v
d24gbXkgaGVhbHRoCmNvbmRpdGlvbiwgSSBkZWNpZGVkIHRvIGNvbnRhY3QgeW91IHRvIGNsYWlt
IHRoZSBmdW5kIHNpbmNlIEkgZG9uJ3QKaGF2ZSBhbnkgcmVsYXRpb24gSSBncmV3IHVwIGZyb20g
dGhlIG9ycGhhbmFnZSBob21lLAoKIEkgaGF2ZSBkZWNpZGVkIHRvIGRvbmF0ZSB3aGF0IEkgaGF2
ZSB0byB5b3UgZm9yIHRoZSBzdXBwb3J0IG9mCmhlbHBpbmcgTW90aGVybGVzcyBiYWJpZXMvTGVz
cyBwcml2aWxlZ2VkL1dpZG93cycgYmVjYXVzZSBJIGFtIGR5aW5nCmFuZCBkaWFnbm9zZWQgd2l0
aCBjYW5jZXIgYWJvdXQgMiB5ZWFycyBhZ28uIEkgaGF2ZSBiZWVuIHRvdWNoZWQgYnkKR29kIEFs
bWlnaHR5IHRvIGRvbmF0ZSBmcm9tIHdoYXQgSSBoYXZlIGluaGVyaXRlZCBmcm9tIG15IGxhdGUg
aHVzYmFuZAp0byB5b3UgZm9yIHRoZSBnb29kIHdvcmsgb2YgR29kIEFsbWlnaHR5LiBJIGhhdmUg
YXNrZWQgQWxtaWdodHkgR29kIHRvCmZvcmdpdmUgbWUgYW5kIGJlbGlldmUgaGUgaGFzLCBiZWNh
dXNlIEhlIGlzIGEgTWVyY2lmdWwgR29kIEkgd2lsbCBiZQpnb2luZyBpbiBmb3IgYW4gb3BlcmF0
aW9uIHN1cmdlcnkgc29vbgoKIFRoaXMgaXMgdGhlIHJlYXNvbiBJIG5lZWQgeW91ciBzZXJ2aWNl
cyB0byBzdGFuZCBhcyBteSBuZXh0IG9mIGtpbiBvcgphbiBleGVjdXRvciB0byBjbGFpbSB0aGUg
ZnVuZHMgZm9yIGNoYXJpdHkgcHVycG9zZXMuIElmIHRoaXMgbW9uZXkKcmVtYWlucyB1bmNsYWlt
ZWQgYWZ0ZXIgbXkgZGVhdGgsIHRoZSBiYW5rIGV4ZWN1dGl2ZXMgb3IgdGhlCmdvdmVybm1lbnQg
d2lsbCB0YWtlIHRoZSBtb25leSBhcyB1bmNsYWltZWQgZnVuZCBhbmQgbWF5YmUgdXNlIGl0IGZv
cgpzZWxmaXNoIGFuZCB3b3J0aGxlc3MgdmVudHVyZXMsIEkgbmVlZCBhIHZlcnkgaG9uZXN0IHBl
cnNvbiB3aG8gY2FuCmNsYWltIHRoaXMgbW9uZXkgYW5kIHVzZSBpdCBmb3IgQ2hhcml0eSB3b3Jr
cywgZm9yIG9ycGhhbmFnZXMsIHdpZG93cwphbmQgYWxzbyBidWlsZCBzY2hvb2xzIGZvciBsZXNz
IHByaXZpbGVnZSB0aGF0IHdpbGwgYmUgbmFtZWQgYWZ0ZXIgbXkKbGF0ZSBodXNiYW5kIGFuZCBt
eSBuYW1lOyBJIG5lZWQgeW91ciB1cmdlbnQgcmVzcG9uc2UgdG8ga25vdyBpZiB5b3UKd2lsbCBi
ZSBhYmxlIHRvIGV4ZWN1dGUgdGhpcyBwcm9qZWN0LCBhbmQgSSB3aWxsIGdpdmUgeW91IG1vcmUK
SW5mb3JtYXRpb24gb24gaG93IHRoZSBmdW5kIHdpbGwgYmUgdHJhbnNmZXJyZWQgdG8geW91ciBi
YW5rIGFjY291bnQuCgpUaGFua3MgaW4gYW50aWNpcGF0aW9uIGFuZCBHb2QgYmxlc3MgeW91LgoK
TXJzLiBUaGVyZXNlIE5pbmEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
