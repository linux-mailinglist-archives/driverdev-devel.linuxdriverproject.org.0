Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331382FD163
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Jan 2021 14:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31E588712B;
	Wed, 20 Jan 2021 13:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgnpCfuzGid4; Wed, 20 Jan 2021 13:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A969C870E8;
	Wed, 20 Jan 2021 13:46:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2995E1BF34E
 for <devel@linuxdriverproject.org>; Wed, 20 Jan 2021 13:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1355420764
 for <devel@linuxdriverproject.org>; Wed, 20 Jan 2021 13:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKkaOjL0gU-U for <devel@linuxdriverproject.org>;
 Wed, 20 Jan 2021 13:46:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by silver.osuosl.org (Postfix) with ESMTPS id B86772050D
 for <devel@linuxdriverproject.org>; Wed, 20 Jan 2021 13:46:40 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id u17so46978666iow.1
 for <devel@linuxdriverproject.org>; Wed, 20 Jan 2021 05:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=4x7/gk6h/kkBTGnHm0soed0wWzoAJVEq95qu5bYRHPU=;
 b=KSejAvHopOA04G02lT97z28KtJ61VRxcA3tXJTDoV2+PQoN1zcLCMRf+LkTlUBDNFi
 ARZhyZhAZ0loyo6E83dAx+9vOYJzSt/UxEj+yThWtsvb8mT21IvNne5Pu2oF/Ag227tG
 VG/LXy9B2bLjAo9ziGYVxg600bu5ESBpocxM82edSImNl6MzgKl0K7SWGGNj5Usooy2i
 Ks/u4/N8NljWDW/SsB8wx0seFCkH3u8rQNz7Qy8J/INKfq8lraQBig8BoJh5c3bczpqs
 P3IXezwbD9DU6zGpaBi2127Iu28HcWn/ZOMhYLR/09hBA+XSeSPtYmHR0k4o7DJdkc26
 vZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=4x7/gk6h/kkBTGnHm0soed0wWzoAJVEq95qu5bYRHPU=;
 b=oNqg0PtX85Uh77r3BA5c+aIaQimYf3Xi40e8tl87V284xY7f5sxBwcGfnam2IshFE8
 /rMlGqElV3gl9mzkO+A6lFMNyaaPXLN3K/Rs2tiwQI0vfeM7JZdUlVced+cWeZ1oXylN
 L/l5VfoW/s9vZsJnRnHz05de+ZH+alUBsAswPXbV3NJ/7Yk/p7P++WVIYVgs7UIVifTV
 8C7WjMdI/0rRWjZT6xZeS9vr8Rtg1GvUE1iq++HRIaPBdz50RQwBZL7NOOznkteoChyq
 pa2F6c/YMl2PZHBffoNCH5mMzB64rJ5Wr6PFt0fJJBO8OBy/p6b4mYyDLUuXF2/EXGjY
 80Dw==
X-Gm-Message-State: AOAM531s0AeZQW6DxU91RGB8Oo095S5sa6iqpHVOH3jAurF+ebvIMc/6
 NGXnTU4iGBOLJfPVLqzT1/GK+VK3wPKhoXwhS44=
X-Google-Smtp-Source: ABdhPJyiEO/lPbCEdD63jit8dKyFDo4hNC3X/ml48q4ZwLTcRYTPfeS8HGl0VF2gNz0NihHEGUSOwvaLl4MRsHTgx6g=
X-Received: by 2002:a05:6602:2e8c:: with SMTP id
 m12mr6880090iow.19.1611150399956; 
 Wed, 20 Jan 2021 05:46:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:4c2:0:0:0:0:0 with HTTP;
 Wed, 20 Jan 2021 05:46:39 -0800 (PST)
From: Mrs Lila Haber <mrslilahabe2016@gmail.com>
Date: Wed, 20 Jan 2021 13:46:39 +0000
X-Google-Sender-Auth: wcGBev_FRk6I-vSZniuZaT_CfVY
Message-ID: <CAHZyUcjEFtpgQy3brRigT1ou=DN+RxMqYDB7c7X0CHc9u59dsg@mail.gmail.com>
Subject: I NEED HEAR FROM YOU URGENT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SSBORUVEIEhFQVIgRlJPTSBZT1UgVVJHRU5UCgpIZWxsbyBEZWFyCgpQbGVhc2UgZm9yZ2l2ZSBt
ZSBmb3Igc3RyZXNzaW5nIHlvdSB3aXRoIG15IHByZWRpY2FtZW50cyBhcyBJIGtub3cKdGhhdCB0
aGlzIGxldHRlciBtYXkgY29tZSB0byB5b3UgYXMgYmlnIHN1cnByaXNlLiBBY3R1YWxseSwgSSBj
YW1lCmFjcm9zcyB5b3VyIEUtbWFpbCBmcm9tIG15IHBlcnNvbmFsIHNlYXJjaCBhZnRlcndhcmQg
SSBkZWNpZGVkIHRvCmVtYWlsIHlvdSBkaXJlY3RseSBiZWxpZXZpbmcgdGhhdCB5b3Ugd2lsbCBi
ZSBob25lc3QgdG8gZnVsZmlsbCBteQpmaW5hbCB3aXNoIGJlZm9yZSBvciBhZnRlciBteSBkZWF0
aC5pIGtub3cgdGhpcyBsZXR0ZXIgd2lsbCBkZWZpbml0ZWx5CmNvbWUgdG8geW91IGFzIGEgaHVn
ZSBzdXJwcmlzZSwgYnV0IEkgaW1wbG9yZSB5b3UgdG8gdGFrZSB0aGUgdGltZSB0bwpnbyB0aHJv
dWdoIGl0IGNhcmVmdWxseSBhcyB0aGUgZGVjaXNpb24geW91IG1ha2Ugd2lsbCBnbyBvZmYgYSBs
b25nCndheSB0byBkZXRlcm1pbmUKbXkgZnV0dXJlIGFuZCBjb250aW51ZWQgZXhpc3RlbmNlLgoK
TWVhbndoaWxlLCBJIGFtIE1hZGFtIExpbGEgSGFiZXIsIDczIHllYXJzLCBhbSBmcm9tIFVTQSwg
Y2hpbGRsZXNzLiBJCmFtIHN1ZmZlcmluZyBmcm9tIEFkZW5vY2FyY2lub21hIENhbmNlciBvZiB0
aGUgbHVuZ3MgZm9yIHRoZSBwYXN0IDkKeWVhcnMgYW5kIGZyb20gYWxsIGluZGljYXRpb24gbXkg
Y29uZGl0aW9uIGlzIHJlYWxseSBkZXRlcmlvcmF0aW5nIGFzCm15IGRvY3RvcnMgaGF2ZSBjb25m
aXJtZWQgYW5kIGNvdXJhZ2VvdXNseSBhZHZpc2VkIG1lIHRoYXQgSSBtYXkgbm90CmxpdmUgYmV5
b25kIDQgd2Vla3MgZnJvbSBub3cgZm9yIHRoZSByZWFzb24gdGhhdCBteSB0dW1vciBoYXMgcmVh
Y2hlZAphIGNyaXRpY2FsIHN0YWdlIHdoaWNoIGhhcyBkZWZpbGVkIGFsbCBmb3JtcyBvZiBtZWRp
Y2FsIHRyZWF0bWVudC4KClNpbmNlIG15IGRheXMgYXJlIG51bWJlcmVkLCBJ4oCZdmUgZGVjaWRl
ZCB3aWxsaW5nbHkgdG8gZnVsZmlsbCBteQpsb25nLXRpbWUgdm93IHRvIGRvbmF0ZSB0byB0aGUg
dW5kZXJwcml2aWxlZ2VkIHRoZSBzdW0gb2YgKCQxOS43TSkKTWlsbGlvbiBEb2xsYXJzIEkgZGVw
b3NpdGVkIGluIGEgZGlmZmVyZW50IGJhbmsgYWNjb3VudCBmb3IgYSB2ZXJ5Cmxvbmd0aW1lIGJl
Y2F1c2UgSSBoYXZlIHRyaWVkIHRvIGhhbmRsZSB0aGlzIHByb2plY3QgYnkgbXlzZWxmIGJ1dCBJ
CmhhdmUgc2VlbiB0aGF0IG15IGhlYWx0aCBjb3VsZCBub3QgYWxsb3cgbWUgdG8gZG8gc28gYW55
bW9yZS4gTXkKcHJvbWlzZSBmb3IgdGhlIHBvb3IgaW5jbHVkZXMgYnVpbGRpbmcgb2Ygd2VsbC1l
cXVpcHBlZCBjaGFyaXR5CmZvdW5kYXRpb24gaG9zcGl0YWwgYW5kIGEgdGVjaG5pY2FsIHNjaG9v
bC4gSSB3aWxsIGV4cGxhaW4gdG8geW91IHdoeQpJIHdhbnRlZCBhIHRvdGFsIHN0cmFuZ2VyIGZv
ciB0aGlzIHdoZW4gSSByZWNlaXZlIHlvdXIgcG9zaXRpdmUKcmVwbHkuVGhpcyBpcyBubyBzdG9s
ZW4gbW9uZXkgYW5kIHRoZXJlIGFyZSBubyBkYW5nZXJzIGludm9sdmVkLDEwMCUKUklTSyBGUkVF
IHdpdGggZnVsbCBsZWdhbCBwcm9vZi4gUGxlYXNlIGlmIHlvdSB3b3VsZCBiZSBhYmxlIHRvIHVz
ZQp0aGUgZnVuZHMgZm9yIHRoZSBDaGFyaXR5IHdvcmtzIGtpbmRseSBsZXQgbWUga25vdyBpbW1l
ZGlhdGVseS5JIHdpbGwKYXBwcmVjaWF0ZSB5b3VyIHV0bW9zdCBjb25maWRlbnRpYWxpdHkgYW5k
IHRydXN0IGluIHRoaXMgbWF0dGVyIHRvCmFjY29tcGxpc2ggbXkgaGVhcnQgZGVzaXJlLCBhcyBJ
IGRvbid0IHdhbnQgYW55dGhpbmcgdGhhdCB3aWxsCmplb3BhcmRpemUgbXkgbGFzdCB3aXNoLgoK
SWYgeW91IHdpbGwgYmUgaG9uZXN0LCBvYmVkaWVudCwga2luZCBhbmQgd2lsbGluZyB0byBhc3Np
c3QgbWUgaGFuZGxlCnRoaXMgY2hhcml0eSBwcm9qZWN0IGFzIEnigJl2ZSBtZW50aW9uZWQgaGVy
ZSBhbmQgY2FuIGF2b2lkIGNvbnRhY3Qgd2l0aAphbnlib2R5IGZvciB0aGlzIGZ1bmQgdW50aWwg
bXkgZnVuZCByZWFjaGVzIHlvdXIgaGFuZHMsIEkgd2lsbCBsaWtlCnlvdSB0byBwcm92aWRlIG1l
IHlvdXIgcGVyc29uYWwgZGF0YSBsaWtlOgoKWW91ciBmdWxsIG5hbWU6CkNvdW50cnk6ClBob25l
IG51bWJlcjoKR2VuZGVyOgpBZ2U6CllvdXIgb2NjdXBhdGlvbjoKCk15IGFjY291bnQgb2ZmaWNl
ciB3YXJuZWQgbWUgdGhhdCBhbnlib2R5IGFtIHNlbmRpbmcgdG8gdGhlbSBhcyB0aGUKYmVuZWZp
Y2lhcnkgZm9yIHRoaXMgZnVuZCBtdXN0IGtlZXAgc2VjcmV0IHVudGlsIGhlIG9yIHNoZSByZWNl
aXZlcyBteQpmdW5kIHRvIGF2b2lkIGltcGVyc29uYXRpb24gYW5kIHdyb25nIHRyYW5zZmVyIHBs
ZWFzZS4KCldhcm1lc3QgUmVnYXJkcwpNcnMgTGlsYSBIYWJlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
