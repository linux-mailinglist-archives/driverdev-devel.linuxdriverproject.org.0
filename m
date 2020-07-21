Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40562228055
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 14:56:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371D488C45;
	Tue, 21 Jul 2020 12:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUl0NA5RCsqD; Tue, 21 Jul 2020 12:56:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5C4488C33;
	Tue, 21 Jul 2020 12:56:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3771D1BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 12:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F8F288C21
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 12:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzFdGruOSyqu
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 12:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46FB088C17
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 12:56:23 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id bm28so15237242edb.2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 05:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=2AZ6A6nAJt9vZxkjquNCpxHJkzbh4syVRWzIK/W8nlU=;
 b=gykevrcONI1JOnKrYlhGOzQls/fLvJq2qMBjacOTbXZ4SAvV0GZ595RdaFNpnH+wo1
 5PE/e+KeVHuWYON9vVFjZdT/Wkv8hTMjwvBqzW2HyuBv7Re0j6CGP4WUqnBS4h+xyQhq
 bTUx/RRbRpRDMBPvFmX9r743Sn0p16H1Xghb717IM7NkKuVaDZYu9v8MKWA/r0FLO1vl
 pVx49c/BuuZBlAeaOzCISwrXCoGbBpC/FG0UY387YO2m6Kelu+ltkPnniBrU351VhvM8
 4WfepOLKy1NnZe2T+0cTdezlC7KJAYZqt2RTMDBW/nYG9MfBK/2A9Uzp82vrA8wqNxs5
 B4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=2AZ6A6nAJt9vZxkjquNCpxHJkzbh4syVRWzIK/W8nlU=;
 b=n6QucHoTq2D/OoU0voHrCTVe7tdAC0Ymt6hsGap52pINOD71nT8W8M3eF1Txfjsi9P
 /OSjCNkPtloWI8j96hdRcJl0OG6p3f+JTKrVdGAnYxJk0bw13ELWkQra2wAaF0jsQvX0
 VpK54+mvEh81fCXfWTlepRLg7cX3wP5lhPYPNXv/pj2Sq8szwVSBBIvDvsXh0PTpubQe
 SN5P1LOziavyJPSIlS1qNUAioGkTiqv7ZFfcQKB5l+6crBiFrdG9qcwkBSDuW/1Cg9QT
 sV3nSWpUuf80a4v9nTDksGok1tUkmgsIQSjj6nc+Txg5rqN+8Veen97qfpV4SM9yVecY
 0Bww==
X-Gm-Message-State: AOAM532FHL96dL+MN0fkNlnzFJts7PSIhV/h7evaua4iWvJWn6SvCm0Q
 tgtAv8L+JPbAC1OJA8OlhFKUGMpqVC2fAu8WFO4=
X-Google-Smtp-Source: ABdhPJxKZaC4x3fu10jiGUiTrsJp//0iTWUMLftBKljzEf3/7A/qukhEE2rzdmlW11L/kcX/c+Z5JfeQq3451q+ASYQ=
X-Received: by 2002:aa7:d845:: with SMTP id f5mr25135015eds.162.1595336181208; 
 Tue, 21 Jul 2020 05:56:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa7:c445:0:0:0:0:0 with HTTP; Tue, 21 Jul 2020 05:56:20
 -0700 (PDT)
From: "MR. NATANEL CLARK LENCE FROM (UNITED NATIONS)"
 <abbie.martin76@gmail.com>
Date: Tue, 21 Jul 2020 13:56:20 +0100
Message-ID: <CAAU1TNT5PuMP73yWD_HfFUH6TqsJyxgvkJbkTMicnHXdDVR2gA@mail.gmail.com>
Subject: Fwd:: WE ARE STILL WAITING YOUR RESPONSE, YOU ARE DELAYING YOUR FUND
 TO BE TRANSFERRED TO YOU
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
Reply-To: uncclondon.international@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VU5JVEVEIE5BVElPTlMgQ09NUEVOU0FUSU9OIENPTU1JU1NJT04KVU5JVEVEIE5BVElPTlMgQVNT
T0NJQVRJT04KMyBXSElURUhBTEwgQ09VUlQsIExPTkRPTiwgU1cxQSAyRUwsClVOSVRFRCBLSU5H
RE9NLgoKQXR0bjogQmVuZWZpY2lhcnksCgpUaGlzIG9mZmljZSBoYXZlIHNlbnQgeW91IHRoaXMg
ZW1haWwgbGFzdCB3ZWVrLCBidXQgdXAgdGlsbCBub3cgd2UKaGF2ZSBub3QgZ290IGFueSByZXNw
b25zZSBmcm9tIHlvdSBvdmVyIHlvdXIgYXBwcm92ZWQgY29tcGVuc2F0aW9uCmZ1bmQsIFRoZSBV
bml0ZWQgTmF0aW9ucyBDb21wZW5zYXRpb24gQ29tbWlzc2lvbiBvbiA1dGggRmVicnVhcnkgMjAy
MCwKbWFkZSBhdmFpbGFibGUgJDkwIG1pbGxpb24gdG93YXJkcyB0aGUgQ29tbWlzc2lvbuKAmXMg
cmVtYWluaW5nIGNsYWltCndpdGggYW4gb3V0c3RhbmRpbmcgYXdhcmQgYmFsYW5jZS4KCkkgYW0g
TkFUQU5FTCBDTEFSSyBMRU5DRSwgQ29tcGVsbGluZyBsaXN0IGRlcGFydG1lbnQgb2YgdGhlClNl
Y3JldGFyeS1HZW5lcmFsIGFuZCBIZWFkIG9mIHRoZSBVTiBPZmZpY2UgZm9yIFdlc3QgQWZyaWNh
biBzdGF0ZXMKKEVDT1dBUykgaW50ZXJuYXRpb25hbCBtb25pdG9yeSBmdW5kIGFmZmlsaWF0ZWQg
b2ZmaWNlIGluIExvbmRvbiwKRW5nbGFuZCAtIFVuaXRlZCBLaW5nZG9tLiBXZSBoYXZlIGJlZW4g
d29ya2luZyB0b3dhcmRzIHRoZSBlcmFkaWNhdGlvbgpvZiBmcmF1ZHN0ZXJzIGFuZCBzY2FtIEFy
dGlzdHMgaW4gV2VzdGVybiBwYXJ0IG9mIEFmcmljYSBXaXRoIHRoZSBoZWxwCm9mIFVuaXRlZCBT
dGF0ZXMgR292ZXJubWVudCBhbmQgdGhlIFVuaXRlZCBOYXRpb25zIGFsbCBvdmVyIHRoZQpFdXJv
cGVhbi9Bc2lhIGNvdW50cmllcy4KCldlIGhhdmUgYmVlbiBhYmxlIHRvIHRyYWNrIGRvd24gc28g
bWFueSBvZiB0aGlzIHNjYW0gYXJ0aXN0IGluIHZhcmlvdXMKcGFydHMgb2YgV2VzdCBBZnJpY2Es
IEFzaWEgYW5kIEV1cm9wZWFuIGNvdW50cmllcyBhbmQgc29tZSBvZiB0aGVtIGFyZQp1bmRlciBv
dXIgY3VzdG9keS4KCldlIGhhdmUgYmVlbiBhYmxlIHRvIHJlY292ZXIgc28gbXVjaCBtb25leSBm
cm9tIHRoZXNlIHNjYW0gYXJ0aXN0cy4KVGhlIFVuaXRlZCBOYXRpb24gQW50aS1jcmltZSBjb21t
aXNzaW9uIGFuZCB0aGUgVW5pdGVkIFN0YXRlCkdvdmVybm1lbnQgaGF2ZSBvcmRlcmVkIHRoZSBt
b25leSByZWNvdmVyZWQgZnJvbSB0aGUgU2NhbW1lcnMgdG8gYmUKc2hhcmVkIGFtb25nIDEwMCB2
aWN0aW3igJlzIGFyb3VuZCB0aGUgZ2xvYmUuIEV2ZW4gaWYgeW91IGFyZSBub3QKc2NhbW1lZCBi
dXQgeW91IGhhdmUgYSByZWxhdGl2ZSBpIHRoaW5rIGlzIGEgYmVuZWZpdCB0byB0aGUgZmFtaWx5
LgoKVGhpcyBlbWFpbCBpcyBiZWluZyBkaXJlY3RlZCB0byB5b3UgYmVjYXVzZSB5b3VyIGVtYWls
IGFkZHJlc3Mgd2FzCmZvdW5kIGluIG9uZSBvZiB0aGUgc2NhbSBBcnRpc3RzIGZpbGUgYW5kIGNv
bXB1dGVyIGhhcmQgZGlzayBpbiBvdXIKY3VzdG9keSBoZXJlIGluIFVuaXRlZCBLaW5kb20gYW5k
IHdpdGggdGhlIGluZm9ybWF0aW9uIGdhdGhlcmVkIGZyb20KdGhpcyBTY2FtIGFydGlzdCwgd2Ug
bm90aWNlZCB0aGF0IHlvdSBoYXZlIGJlZW4gc2NhbW1lZCBvZiBzbyBtdWNoCm1vbmV5IGFuZCBo
YXZlIGRlY2lkZWQgdG8gY29tcGVuc2F0ZSB5b3Ugd2l0aCBhIGxpdHRsZSB0b2tlbiB0bwpyZWNv
dmVyIHRoZSBsb3N0IG9mIHlvdXIgZnVuZC4gWW91IGFyZSB0aGVyZWZvcmUgYmVpbmcgY29tcGVu
c2F0ZWQKd2l0aCB0aGUgdG90YWwgc3VtIFVTJDY1MCwwMDAsMDAgVW5pdGVkIFN0YXRlcyBEb2xs
YXJzLiBXZSBoYXZlIGFsc28KYXJyZXN0ZWQgc29tZSBvZiB0aGVtIHdobyBjbGFpbSB0byBiZSBi
YXJyaXN0ZXJzLCBiYW5rIG9mZmljaWFscywKTG90dGVyeSBBZ2VudHMgYW5kIFUuUy5BIE1pbGl0
YXJ5IE9mZmljZXJzIEluIFN5cmlhLCBBZmdoYW5pc3RhbiBhbmQKSXJhcSB3aG8gaGFzIG1vbmV5
IGZvciB0cmFuc2ZlciBvciB3YW50IHlvdSB0byBiZSB0aGUgbmV4dCBvZiBraW4gb2YKc3VjaCBm
dW5kcyB3aGljaCBkb2VzIG5vdCBleGlzdC4KClNpbmNlIHlvdXIgbmFtZSBhcHBlYXJlZCBhbW9u
ZyB0aGUgbHVja3kgYmVuZWZpY2lhcmllcyB3aG8gd2lsbApyZWNlaXZlIGEgY29tcGVuc2F0aW9u
IG9mIFVTJDY1MCwwMDAsMDAgVW5pdGVkIFN0YXRlcyBEb2xsYXJzLCB3ZSBoYXZlCm1hZGUgYXJy
YW5nZW1lbnQgdG8gVXBsb2FkIHlvdXIgVVMkNjUwLDAwMCwwMCBVbml0ZWQgU3RhdGVzIERvbGxh
cnMKdGhyb3VnaCBvdXIgQVRNIENhcmQgaGFyZCBkaXNrIHRocm91Z2ggb3VyIEdsb2JhbCBCYW5r
LCB3aGljaCB3aWxsIGJlCnNlbnQgdG8geW91IGltbWVkaWF0ZWx5IHlvdSByZXNwb25kIG91ciBt
YXNzYWdlIE9SIHRyYW5zZmVyIHlvdXIgZnVuZApwZXJzb25hbGx5IHRvIHlvdXIgUHJpdmF0ZSBC
YW5rIEFjY291bnQgd2l0aCBubyBjb21wbGljYXRpb24gb2YgdGhpbmdzCm9yIHF1ZXN0aW9uaW5n
IGFzIHRoZSBBY2NvdW50IHdpbGwgYmUgZnVsbHkgcmVnaXN0ZXJlZCBpbiB5b3VyIE5hbWUuCgpQ
cm92aWRlIHRoZSBpbmZvcm1hdGlvbiBiZWxvdyB0byBlbmFibGUgdGhlIHByb2Nlc3NpbmcgQUdF
TlQgVFJBTlNGRVIKeW91ciBjb21wZW5zYXRlZCBmdW5kIHRvIHlvdXIgbG9jYXRpb24uCgoxKVlP
VVIgRlVMTCBOQU1FLgoyKVlPVVIgRlVMTCBBRERSRVNTCjMpWU9VUiBNT0JJTEUgTlVNQkVSLgo0
KVlPVVIgT0NDVVBBVElPTgo1KVlPVVIgSURFTlRJVFkuCjYpIENPVU5UUlkuCgpXZSBndWFyYW50
ZWUgeW91ciBzYWZldHkgYW5kIENvbmdyYXR1bGF0ZSB5b3Ugb25jZSBhZ2FpbiEKCkJlc3QgcmVn
YXJkcy4KCk1SLiBOQVRBTkVMIENMQVJLIExFTkNFCkNvbXBlbGxpbmcgbGlzdCBkZXBhcnRtZW50
LgpVbml0ZWQgTmF0aW9ucyBDb21wZW5zYXRpb24gQ29tbWlzc2lvbi4KVW5pdGVkIE5hdGlvbnMg
QXNzb2NpYXRpb24KdW5jY2xvbmRvbi5pbnRlcm5hdGlvbmFsQGFvbC5jb20KdW5jYy5pbnRlcm5h
dGlvbmFsbG9uZG9uQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
